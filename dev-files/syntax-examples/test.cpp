//
// Theme Test File for C++
// This file showcases various C++ syntax elements.
//

// --- Preprocessor Directives ---
#include <iostream>
#include <vector>
#include <string>
#include <memory>

#define PI 3.14159
#define GREETING "Hello from C++!"

// --- Namespaces ---
namespace MyCoolNamespace {
  const int version = 1;
}

// --- Templates ---
template<typename T>
T add(T a, T b) {
  return a + b;
}

// --- Class Definition ---
class Shape {
public:
  // A virtual function for polymorphism
  virtual double area() const = 0;
  // A destructor
  virtual ~Shape() = default;
};

class Rectangle : public Shape {
private:
  double width, height;

public:
  // @constructor
  Rectangle(double w, double h) : width(w), height(h) {}

  // @override keyword
  double area() const override {
    // @keyword.return
    return width * height;
  }
};

// --- Main Function ---
int main() {
  // --- Variables and Constants ---
  const std::string message = GREETING;
  int integer_var = 42;
  double float_var = 2.718;
  bool is_active = true;
  auto deduced_type = 10L; // long

  // --- Pointers and Memory ---
  int* raw_ptr = &integer_var;
  std::unique_ptr<Rectangle> rect = std::make_unique<Rectangle>(5.0, 3.0);

  // --- Data Structures ---
  std::vector<int> numbers = {1, 2, 3, 4, 5};

  // --- Control Flow ---
  // @repeat: range-based for loop
  for (const auto& num : numbers) {
    std::cout << num << " ";
  }
  std::cout << std::endl;

  // @conditional: if/else
  if (rect->area() > 10.0) {
    std::cout << "Large rectangle" << std::endl;
  }

  // --- Lambda Function ---
  auto square = [](int x) { return x * x; };
  std::cout << "Square of 7 is " << square(7) << std::endl;

  // --- Type Casting ---
  double casted_int = static_cast<double>(integer_var);

  // --- Error Handling ---
  // @exception: try/catch
  try {
    throw std::runtime_error("This is a test exception.");
  } catch (const std::exception& e) {
    // @variable.builtin: `e`
    std::cerr << "Caught exception: " << e.what() << std::endl;
  }

  // --- Deliberate Syntax Error ---
  // Remove the '//' to test LSP diagnostics
  // int error = "hello" "world";

  return 0;
}
