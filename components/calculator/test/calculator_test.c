#include <unity.h>
#include "calculator.h"

TEST_CASE("TestCanAdd", "[calculator]")
{
	TEST_ASSERT_EQUAL(42, add(40, 2));
	TEST_ASSERT_EQUAL(5, add(10, -5));
	TEST_ASSERT_EQUAL(5, add(-5, 10));
}

TEST_CASE("TestUnitTestsWork", "[calculator]")
{
	TEST_ASSERT_TRUE(1);
}
