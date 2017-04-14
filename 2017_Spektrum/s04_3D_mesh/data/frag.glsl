#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

varying vec4 origColor;
varying vec4 vertColor;

void main(void) {
  // angle based on amount of red
  float a = vertColor.r * 6.28;
  float lumi =
      vertColor.r * 0.222015 +
      vertColor.g * 0.706655 +
      vertColor.b * 0.071330;

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
  float threshold = step(mod(point.x * 0.1, 1.0), 1.0 - lumi * 4);

  vec4 dark = origColor * vec4(0.7,	0.7, 0.7, 1.0);
  gl_FragColor = mix(dark, origColor, threshold);
}
