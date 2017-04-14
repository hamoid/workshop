#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

varying vec3 vertNormal;
varying vec3 vertLightDir;
varying vec4 vertColor;

void main() {  
  float intensity;
  intensity = 1.0 - max(0.0, dot(vertLightDir, vertNormal));

  intensity = pow(intensity, 4);
  
  gl_FragColor = gl_FrontFacing ? vec4(vertColor.rgb, intensity) : vec4(0.0);  
}
