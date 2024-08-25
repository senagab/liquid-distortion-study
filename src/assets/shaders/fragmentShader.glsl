precision highp float;
precision highp int;
uniform sampler2d tWater;
uniform sampler2d tFlow;
uniform float uTime;
varying vec2 vUv;
uniform vec4 res;

void main() {
    vec3 flow = texture2D(tFlow, vUv).rgb;
    vec2 myUV = vUv - flow.xy * 0.3;
    vec3 text = texture2D(tWater, myUV).rgb;

    gl_FragColor = vec4(text, 1.0);
}