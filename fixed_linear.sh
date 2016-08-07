#!/bin/bash
make
./texture-mapping suzanne.obj linear_fixed.v.glsl phong-shading.f.glsl crack.bmp
./texture-mapping suzanne.obj linear_fixed.v.glsl phong-shading.f.glsl paper.bmp
