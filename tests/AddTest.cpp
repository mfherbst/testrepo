#include <exception>
#include "add.hpp"

void test_add(int input, int expect) {
    if (addone(input) != expect) {
	throw std::exception();
    }
}

int main() {
    try {
	test_add(1, 2);
	test_add(0, 1);
	test_add(100, 101);
    } catch (const std::exception& e) {
	return 1;
    }
    return 0;
}
