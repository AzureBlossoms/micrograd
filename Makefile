CXX := g++
CXXFLAGS := -Wall -Wextra -std=c++17 -O2 -I include $$(python3-config --includes)

LIB := lib
TARGET := micrograd.so
SOURCES := src

$(TARGET): $(SOURCES)/*.cpp
	$(CXX) $(CXXFLAGS) -fPIC -shared -o $(LIB)/$@ $<

clean:
	rm -f $(LIB)/$(TARGET)
