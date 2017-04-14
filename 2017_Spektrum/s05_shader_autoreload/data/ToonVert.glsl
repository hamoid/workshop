// http://www.lighthouse3d.com/tutorials/glsl-tutorial/toon-shader-version-ii/

#define PROCESSING_LIGHT_SHADER

uniform mat4 modelview;
uniform mat4 transform;
uniform mat3 normalMatrix;

uniform vec3 lightNormal[8];

attribute vec4 vertex;
attribute vec3 normal;
attribute vec4 color;

varying vec3 vertNormal;
varying vec3 vertLightDir;
varying vec4 vertColor;

void main() {
  gl_Position = transform * vertex;
  vertNormal = normalize(normalMatrix * normal);
  vertLightDir = -lightNormal[0]; 
  vertColor = color;
}
