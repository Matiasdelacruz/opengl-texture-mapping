# opengl-texture-mapping
This project aims at mapping various textures (bmp images) onto objects specified in the .obj format.
### Features implemented
- Viewing .obj files in a window, with rotate and scale enabled
- Specular, ambient and diffused illumination implemented
- Texture mapping has been implemented with the following parameters:
  - `GL_REPEAT`
  - `GL_CLAMP_TO_BORDER`
- The texture coordinates have been generated using two different algorithms:
  - Planar Mapping
  - Spherical Mapping

  Any combination of the above metrics can be used to obtained various kinds of texture mapping, some of which have been     provided as examples.
- The style of mapping can be modified by changing the third parameter of the function call `glTexParameteri` in texture.cpp to any of `GL_REPEAT`, `GL_CLAMP_TO_BORDER`, `GL_CLAMP_TO_EDGE`,`GL_MIRRORED_REPEAT`

### Library dependencies
- lGL
- glut
- GLEW
- glm

*Please have a look at the Makefile too to know what all libraries are being linked*

### Demo Scripts
- `fixed_linear.sh`
- `projective_linear.sh`
- `reflective_sphere.sh`
- `static_sphere.sh`

*Note: Remember to give the file executable permissions before executing.*

### Execution
The main executable is the `texture-mapping` whose commandline parameters take an `.obj` file, the vertex and fragment shaders and the bitmap ti be used as texture.
```bash
./texture-mapping <objfile(.obj)> <vertex shader(.v.glsl)> <fragment shader(.f.glsl)> <bitmap(.bmp)>
```

Rotation of the object happens as expected with the left mouse button and then dragging it. To pan press `F1` and then `F2` and then use the arrow keys. Use the `Home` key to reset the view.
