#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform float time;

varying vec4 vertColor;

vec4 rgb2hsv(vec3 c) {
  vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
  vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
  vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

  float d = q.x - min(q.w, q.y);
  float e = 1.0e-10;
  return vec4(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x, 1.0);
}

vec3 hsv2rgb(vec3 c) {
  vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
  vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
  return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main(void) {
  // convert RGB to HSV
  vec4 hsb = rgb2hsv(vertColor.rgb);

  // calculated angle based on hue
  float a = hsb.x * 6.28;

  // create rotation matrix based on angle
  mat4 rot = mat4( 
      cos(a), -sin(a), 0.0, 0.0,
      sin(a),  cos(a), 0.0, 0.0,
      0.0, 0.0, 1.0, 0.0,
      0.0, 0.0, 0.0, 1.0 
  );

  // rotate coordinates of current pixel
  vec4 point = gl_FragCoord * rot;

  // calculate a brightness value based on the rotated point
  float bri = smoothstep(0.45, 0.55, 0.5 + 0.5 * sin(point.x * 0.5));

  gl_FragColor = vec4(bri, bri, bri, 1.0);
}
