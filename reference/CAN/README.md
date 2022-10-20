# CAN


- ## Reference site

[CAN bus on raspberry pi with MCP2515](https://forums.raspberrypi.com/viewtopic.php?t=141052)

[CAN communication between Raspberry Pi and Arduino](https://forums.raspberrypi.com/viewtopic.php?t=296117)

[2 Channel CAN BUS FD Shield for Raspberry Pi](https://wiki.seeedstudio.com/2-Channel-CAN-BUS-FD-Shield-for-Raspberry-Pi/)
- - - 

- ## Contents

[Solution 1. CAN - Raspberry pi with mcp2515](#solution-1-can---raspberry-pi-with-mcp2515)  
[Solution 2. CAN BUS (FD) Hat](#solution-2-can-bus-fd-hat)
- - -


## Solution 1. CAN - Raspberry pi with mcp2515




<img src="https://user-images.githubusercontent.com/81483791/194758846-54a21d89-ba25-4418-a5e9-72ba8367a4e9.png"  width="400" height="200"/> 
<img src="https://user-images.githubusercontent.com/81483791/194758934-9ae47d63-3b6b-400a-b386-a03ad247c90b.png"  width="300" height="400"/> 

### 1. Update & Upgrade

```jsx
sudo apt-get update
sudo apt-get upgrade
```

### 2. Edit config.txt file and Add following

oscillator=8000000 (EAS 8.00)

interrupt=12 ( INT - GPIO12 )

```jsx
sudo vim /boot/config.txt
dtoverlay=mcp2515-can0,oscillator=8000000,interrupt=12
dtoverlay=spi-bcm2835-overlay
```

### 3. Install CAN tools

```jsx
sudo apt-get install can-utils
pip3 install python-can
```

### 4. Reboot

### 5. Setup CAN interface

bitrate 125000 or 500000

```jsx
sudo ip link set can0 up type can bitrate 125000
```

### 6. ifconfig

```jsx
sudo ifconfig
```

OUTPUT :

```jsx
can0: flags=193<UP,RUNNING,NOARP>  mtu 16
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 10  (UNSPEC)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

### 7.  Wrong data

OUTPUT :

unsigned char stmp[8] = {1, 2, 3, 4, 5, 6, 7, 8};

<img src="https://user-images.githubusercontent.com/81483791/194759509-c6dc54e7-e18c-44bf-8d03-ddc5955191cf.png"  width="800" height="210"/> 

I can receive but it is wrong data so I tried to use CAN bus hat

- - -

## Solution 2. CAN BUS (FD) Hat


### 1. Connect CAN BUS(FD) Hat

### 2. Edit config.txt file and Add following

```jsx
sudo vim /boot/config.txt
dtoverlay=seeed-can-fd-hat-v2
```

### 3. Reboot

### 4. Initialized

```jsx
dmesg | grep spi
```

OUTPUT:

```jsx
[    5.848080] spi_master spi0: will run message pump with realtime priority
[    5.861055] mcp251xfd spi0.1 can0: MCP2518FD rev0.0 (-RX_INT -MAB_NO_WARN +CRC_REG +CRC_RX +CRC_TX +ECC -HD c:40.00MHz m:20.00MHz r:17.00MHz e:16.66MHz) successfully initialized.
[    5.873396] mcp251xfd spi0.0 can1: MCP2518FD rev0.0 (-RX_INT -MAB_NO_WARN +CRC_REG +CRC_RX +CRC_TX +ECC -HD c:40.00MHz m:20.00MHz r:17.00MHz e:16.66MHz) successfully initialized.
```

### 5. Check ifconfig list

```jsx
ifconfig -a
```

OUTPUT:

<img src="https://user-images.githubusercontent.com/81483791/194759745-bf0ca7c9-9d24-4511-8da6-451ba709fe5a.png"  width="800" height="200"/> 

### 6. Install CAN tools

```jsx
sudo apt-get install can-utils
pip3 install python-can
```

### 7.  Send & Recv test with 2-channel CAN FD

<img src="https://user-images.githubusercontent.com/81483791/194759823-9e4338e2-88be-46db-ab9a-f528e08d2e51.png"  width="300" height="200"/> 

### 7.1.  Connect the channels

0_L <===> 1_L

0_H <===> 1_H

### 7.2. Set the CAN protocol

```jsx
sudo ip link set can0 up type can bitrate 1000000   dbitrate 8000000 restart-ms 1000 berr-reporting on fd on
sudo ip link set can1 up type can bitrate 1000000   dbitrate 8000000 restart-ms 1000 berr-reporting on fd on
 
sudo ifconfig can0 txqueuelen 65536
sudo ifconfig can1 txqueuelen 65536
```

### 7.3. Open two windows

```jsx
#send data
cangen can0 -mv
```

```jsx
#dump data
candump can1
```

OUTPUT :     

<img src="https://user-images.githubusercontent.com/81483791/194759914-d895bb27-c0ae-4d30-a76a-3fab5080f9e7.png"  width="800" height="210"/> 
<img src="https://user-images.githubusercontent.com/81483791/194759918-3a2c27f1-2d26-4191-8dcb-6948b2f82208.png"  width="800" height="210"/> 

### 8. Raspberry pi to Arduino CAN - CAN communication

If you follow step 7, you need to reboot.

<img src="https://user-images.githubusercontent.com/81483791/194759992-e170a065-c913-438f-87dd-3d99718f69fa.png"  width="300" height="400"/> 

### 8.1. Set CAN protocol

I connectecd like this picture,

Arduino CAN_L <===> Raspberry pi 0_L

Arduino CAN_H <===> Raspberry pi 0_H

```jsx
sudo ip link set can1 up type can bitrate 500000
```

### 8.2. Check details

```jsx
ip -details link show can0
```
- ### Arduino Code (Send data)
[CAN_send_data.ino](https://github.com/jacey-h/Pilot-Project-2/blob/main/reference/IPC/example/setup/CMakeLists.txt)

- ### Raspberry pi Code (Recv data)

1. Open terminal and following:

```jsx
candump can0
```

or 

2. Make a python file

 [CAN_recv_data.py](https://github.com/jacey-h/Pilot-Project-2/blob/main/reference/CAN/example/CAN_recv_data.py)

OUTPUT:

unsigned char stmp[8] = {1, 2, 3, 4, 5, 6, 7, 8};

<img src="https://user-images.githubusercontent.com/81483791/194760379-161afcd7-03d7-413a-b53c-8eae269a6b6b.png"  width="800" height="220"/> 