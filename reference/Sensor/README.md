# Sensor

- ## Reference site

[speed sensor reference](https://www.brainy-bits.com/post/how-to-use-a-speed-sensor-with-arduino)
- - - 

- ## Contents

[Temperature Sensor](#temperature-sensor)  
[Speed sensor](#speed-sensor)
- - -

## Temperature Sensor

### 1. Connect Arduino with sensor

<img src="https://user-images.githubusercontent.com/81483791/194761365-2cd16084-32f0-406c-b24c-ecf8dd629de6.png"  width="300" height="200"/> 

- Guide line

| Sensor | Arduino |
| --- | --- |
| GND | GND |
| VCC | 5V |
| DOUT | 3 |

If you connect `D0`  ↔  `3` 

`#define DHTPIN 3` 

### 2. Execute Arduino

[temperature.ino](https://github.com/jacey-h/Pilot-Project-2/blob/main/reference/Sensor/example/temperature.ino)

- - - 

## Speed Sensor

### 1. Connect Arduino with sensor
<img src="https://user-images.githubusercontent.com/81483791/194761783-a0a16582-f8dd-4791-96e8-d529690843ed.png"  width="300" height="200"/> 

- Guide line

| Sensor | Arduino |
| --- | --- |
| GND | GND |
| VCC | 5V |
| D0 | 2 |

If you connect `D0`  ↔  `2` 

`pinMode(2, INPUT)` 

### 2. Execute Arduino

[sensor.ino](https://github.com/jacey-h/Pilot-Project-2/blob/main/reference/Sensor/example/sensor.ino)

You can check with OLED    
<img src="https://user-images.githubusercontent.com/81483791/194762080-f6a60c57-7489-4bf4-838c-c0456fbc0455.png"  width="300" height="150"/> 