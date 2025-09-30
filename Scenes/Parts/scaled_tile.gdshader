shader_type canvas_item;
uniform vec2 scale = vec2(1, 1);

varying vec4 vertex_color;
void vertex() {
	vertex_color = COLOR;
}
void fragment() {
	COLOR = texture(TEXTURE, UV * scale) * vertex_color;
}