attribute vec2 uv;
attribute vec2 position;
varying vec2 vUv;
void Main () {
    vUv = uv;
    gl_Position = vec4(position, 0, 1);
}