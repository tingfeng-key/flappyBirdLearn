shader_type canvas_item;
render_mode unshaded;
uniform float speed : hint_range(0.00, 1.00) = 0.0;

void vertex() {
	UV.x += speed * TIME;
}