#version 330 core

//Bringing in vertexPositions
layout (location = 0) in vec3 VertexPosition;

//Passing out the TexCoords
out vec3 TexCoords;

//Bringing in uniform variables
uniform mat4 projection;
uniform mat4 view;

void main()
{
    TexCoords = VertexPosition;
    vec4 pos = projection * view * vec4(VertexPosition, 1.0);
    gl_Position = pos.xyww;
}  