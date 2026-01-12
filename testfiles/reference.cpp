// C++ Reference File for Theme Testing

#include <iostream>
#include <vector>
#include <string>
#include <memory>

class Animal {
public:
    virtual ~Animal() = default;
    virtual void speak() const = 0;
};

class Dog : public Animal {
public:
    void speak() const override {
        std::cout << "Woof!\n";
    }
};

template<typename T>
T add(T a, T b) {
    return a + b;
}

int main() {
    std::unique_ptr<Animal> dog = std::make_unique<Dog>();
    dog->speak();

    std::vector<int> nums = {1, 2, 3};
    for (auto n : nums) {
        std::cout << n << "\n";
    }

    std::cout << "Sum: " << add(3, 4) << "\n";
}
