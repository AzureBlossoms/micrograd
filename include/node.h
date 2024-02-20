#include <pybind11/pybind11.h>

template<typename T>
class Node {
public:
    Node(const T data);

private:
    T data;
};
