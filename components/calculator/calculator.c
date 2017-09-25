#include <esp_log.h>
#include "calculator.h"

#define TAG "calculator"

void print_add(int a, int b) 
{
	ESP_LOGI(TAG, "%d + %d = %d", a, b, add(a,b));
}

int add(int a, int b) 
{ 
	return a + b; 
}