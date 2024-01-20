#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

int main() {
    std::vector<std::string> names = 
    {"Bob", "John", "Andy", "Chuck"};

    std::sort(names.begin(), names.end());

    for (const auto &name : names) {
        std::cout << name << std::endl;
    }

    return 0;
}
