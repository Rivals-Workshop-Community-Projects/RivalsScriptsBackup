shader_start();
var sprt = sprite_get("ancientpower")
if nspecial_active && instance_exists(nspecial_current){
	draw_sprite(sprite_get("ancientpower_behind"), nspecial_image,x,y-30);
	with (nspecial_current) {
		if attack == AT_USPECIAL && player_id == other.id {
			draw_sprite(sprt, player_id.nspecial_image,x,y);
		}
	}

}
shader_end();

if gender < 3 && sprite_index == sprite_get("intro") && image_index < sprite_get_number(sprite_get("boy")) {
	if gender == 0 {draw_sprite(sprite_get("boy"), image_index, x, y)}
	if gender == 1 {draw_sprite(sprite_get("girl"), image_index, x, y)}
	
}

if (taunt_timer != 0)
{
	var alpha_screen = clamp(taunt_timer/500-1,0,1);
	draw_set_alpha(alpha_screen);
    draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}