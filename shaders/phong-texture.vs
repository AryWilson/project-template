#version 400
layout (location = 0) in vec3 VertexPosition;
layout (location = 1) in vec3 VertexNormal;
layout (location = 2) in vec2 VertexTexCoord;
out vec3 pEye;
out vec3 nEye;
out vec2 uv;
uniform mat4 ModelViewMatrix;
uniform mat3 NormalMatrix;
uniform mat4 ProjMatrix;
uniform mat4 MVP;
void main()
{
 uv = VertexTexCoord;
 nEye = normalize( NormalMatrix * VertexNormal);
 pEye = vec3( ModelViewMatrix * vec4(VertexPosition,1.0) );
 gl_Position = MVP * vec4(VertexPosition,1.0);
}