// HelloWorldClient.cpp
#include <iostream>
#include <string>
#include <unistd.h>
#include <CommonAPI/CommonAPI.hpp>
#include <v1/commonapi/HelloWorldProxy.hpp>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <errno.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>

# define CAN_FRAME_MAX_LEN 8
using namespace v1::commonapi;

int InitSocket(const char *ifname)
{
	int sock_fd = socket(PF_CAN, SOCK_RAW, CAN_RAW);
	if (sock_fd < 0)
		printf("Failed to socket create\n", sock_fd);
	printf("Success to socket create\n");

	struct ifreq ifr;
	strcpy(ifr.ifr_name, ifname);
	int ret = ioctl(sock_fd, SIOCGIFINDEX, &ifr);
	if (ret < 0)
		printf("Failed to get CAN interface index\n", ret);
	printf("%sSuccess to get CAN interface index : %d%s\n", ret);

	struct sockaddr_can addr;
	addr.can_family = AF_CAN;
	addr.can_ifindex = ifr.ifr_ifindex;
	ret = bind(sock_fd, (struct sockaddr *)&addr, sizeof(addr));
	if (ret < 0)
		printf("Failed to socket bind\n", ret);
	printf("Success to socket bind\n");
	
	return sock_fd;
}

int main() {

    int can_fd = InitSocket("can1");
	if (can_fd < 0)
		return can_fd;
	
	struct can_frame frame;
	while (1)
	{
		int rd_byte = read(can_fd, &frame, sizeof(frame));
		if (rd_byte < 0)
			printf("Failed to recieve CAN frame\n", rd_byte);
		else if (rd_byte < (int)sizeof(struct can_frame))
			printf("Incomplete CAN frame is received\n", rd_byte, rd_byte);
		else if (frame.can_dlc > CAN_MAX_DLEN)
			printf("Invalid dlc\n", -1, frame.can_dlc);

		
		printf("0x%03X [%d] ",frame.can_id, frame.can_dlc);

		for (int i = 0; i < frame.can_dlc; i++)
			printf("%02X ",frame.data[i]);
		printf("\n");

        usleep(1000);
		std::shared_ptr < CommonAPI::Runtime > runtime = CommonAPI::Runtime::get();
    std::shared_ptr<HelloWorldProxy<>> myProxy =
        runtime->buildProxy<HelloWorldProxy>("local", "test");

    std::cout << "Checking availability!" << std::endl;
    while (!myProxy->isAvailable())
        usleep(10);
    std::cout << "Available..." << std::endl;

    CommonAPI::CallStatus callStatus;
    std::string returnMessage;
    myProxy->sayHello("Jacey", callStatus, returnMessage);
    std::cout << "Got message: '" << returnMessage << "'\n";

    std::int32_t outputData;


    HelloWorld::testStruct teststruct;
    teststruct.setId1("TMP");
    teststruct.setCode1(frame.data[0]);

		teststruct.setId2("HUM");
    teststruct.setCode2(frame.data[1]);

		teststruct.setId3("RPM");
    teststruct.setCode3(frame.data[2]);

		teststruct.setId4("SPD");
    teststruct.setCode4(frame.data[3]);

		//teststruct.setId5("BAT");
    //teststruct.setCode5(frame.data[4]);

    myProxy->structInMethod(teststruct,callStatus,outputData);//구조체 데이터를 매개변수로 하는 함수 호출
    std::cout << "Client Log!!  outputData:" << outputData << std::endl;
    usleep(1000);
	}

    return 0;
}