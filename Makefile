CXX := g++
CXXFLAGS := -Wall -Wextra -std=c++17 -O2 -I include

LIB := lib
TARGET := micrograd.so
SOURCES := cpp-src

$(TARGET): $(SOURCES)/*.cpp
	$(CXX) $(CXXFLAGS) -fPIC -shared -o $(LIB)/$@ $<
