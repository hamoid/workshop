#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

varying vec4 vertColor;

void main(void) {
  // calculated angle based on the amount of red
  float a = vertColor.r * 6.28;

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
