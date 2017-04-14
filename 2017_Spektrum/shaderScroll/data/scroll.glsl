#define PROCESSING_TEXTURE_SHADER

uniform sampler2D texture;
uniform vec2 texOffset;
uniform float n;

varying vec4 vertColor;
varying vec4 vertTexCoord;

void main(void) {
  vec4 curr = texture2D(texture, vertTexCoord.st);
  float d = 100.0 + curr.b * 1500.0;
  //float n = 10.0; // send this from P5
  vec2 src = vertTexCoord.st + vec2(sin(curr.r*n)/d, cos(curr.g*n)/d);
  vec4 col = texture2D(texture, src);
  gl_FragColor = vec4(col.rgb, 1.0) * vertColor;
}
