module testrepo

using Printf
greet() = "Hello"
print_greet() = (@printf "%s\n" greet())
export print_greet

end
