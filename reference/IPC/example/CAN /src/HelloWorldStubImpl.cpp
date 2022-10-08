// HelloWorldStubImpl.cpp
#include "HelloWorldStubImpl.hpp"

HelloWorldStubImpl::HelloWorldStubImpl() { }
HelloWorldStubImpl::~HelloWorldStubImpl() { }

void HelloWorldStubImpl::sayHello(const std::shared_ptr<CommonAPI::ClientId> _client,
	std::string _name, sayHelloReply_t _reply) {
	    std::stringstream messageStream;
	    messageStream << "Hello " << _name << "!";
	    std::cout << "sayHello('" << _name << "'): '" << messageStream.str() << "'\n";

    _reply(messageStream.str());
};

 
void HelloWorldStubImpl::structInMethod(const std::shared_ptr<CommonAPI::ClientId> _client, 
v1::commonapi::HelloWorld::testStruct _structParameter, v1::commonapi::HelloWorldStub::structInMethodReply_t _reply)
{
    std::cout << __FUNCTION__<<" server log _structParameter id " << _structParameter.getId1() << std::endl;
    std::cout << __FUNCTION__<<" server log _structParameter code " << _structParameter.getCode1() << std::endl;

		std::cout << __FUNCTION__<<" server log _structParameter id " << _structParameter.getId2() << std::endl;
    std::cout << __FUNCTION__<<" server log _structParameter code " << _structParameter.getCode2() << std::endl;

		std::cout << __FUNCTION__<<" server log _structParameter id " << _structParameter.getId3() << std::endl;
    std::cout << __FUNCTION__<<" server log _structParameter code " << _structParameter.getCode3() << std::endl;

		std::cout << __FUNCTION__<<" server log _structParameter id " << _structParameter.getId4() << std::endl;
    std::cout << __FUNCTION__<<" server log _structParameter code " << _structParameter.getCode4() << std::endl;

		//std::cout << __FUNCTION__<<" server log _structParameter id " << _structParameter.getId5() << std::endl;
    //std::cout << __FUNCTION__<<" server log _structParameter code " << _structParameter.getCode5() << std::endl;

    std::int32_t returnData = 1;
    _reply(returnData);
};