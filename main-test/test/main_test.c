#include <driver/gpio.h>
#include <unity.h>
#include "main.h"

TEST_CASE("TestMainLEDGPIOis4", "[main]")
{
	TEST_ASSERT_EQUAL_MESSAGE(GPIO_LED, GPIO_NUM_4, "LED is not on gpio 4");
}

TEST_CASE("TestUnityWTF", "[main]")
{
	 UnityAssertEqualNumber(
		(_U_SINT)((GPIO_LED)), 
		(_U_SINT)((GPIO_NUM_4)), 
		( ((void *)0) ), 
		(_U_UINT)(7), 
		UNITY_DISPLAY_STYLE_INT
	);
}
