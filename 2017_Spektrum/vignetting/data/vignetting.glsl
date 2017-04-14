#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

#define PROCESSING_TEXTURE_SHADER

uniform sampler2D texture;
uniform vec2 texOffset;

uniform float strength;
uniform vec3 tint;

varying vec4 vertColor;
varying vec4 vertTexCoord;

void main(void) {
  float darken = strength * distance(vertTexCoord.xy, vec2(0.5, 0.5));
  vec4 c = texture2D(texture, vertTexCoord.st) - darken;

  gl_FragColor = vec4(c.r*tint.r, c.g*tint.g, c.b*tint.b, 1.0) * vertColor;  
}
