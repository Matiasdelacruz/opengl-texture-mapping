CXXFLAGS=-ggdb -std=c++11
LDLIBS=-lglut -lGLEW -lGL -lm
all: texture-mapping
texture-mapping: shader_utils.o texture.o
clean:
	rm -f *.o texture-mapping

.PHONY: all clean
