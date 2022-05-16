// aaa

var draw_angle = (get_gameplay_time()*2)%360;
var blend_angle = (get_gameplay_time()*2.73)%360;
var cooldown = move_cooldown[AT_FSPECIAL];
var darken = (cooldown && !(cooldown - 1 < 10 && (cooldown - 1) % 5 >= 3)) ? true : false;

shader_start();
if !poggers_alt draw_sprite_ext(sprite_get("wings"), darken, wing_x, wing_y + 6*cos(degtorad(draw_angle)), 1, 1, 0, c_white, cos(degtorad(blend_angle))/1.5);
if hell_alt && !darken {
    maskHeader();
    draw_sprite_ext(sprite_get("wings"), 1, wing_x, wing_y + 6*cos(degtorad((draw_angle + 180)%360)), 1, 1, 0, c_white, 1);
    maskMidder();
    draw_texture();
    maskFooter();
    draw_sprite_ext(sprite_get("wings"), 2, wing_x, wing_y + 6*cos(degtorad((draw_angle + 180)%360)), 1, 1, 0, c_white, 1);
} else if poggers_alt {
	draw_sprite_ext(sprite_get("wings"), darken?1:3, wing_x, wing_y + 6*cos(degtorad(draw_angle)), 1, 1, 0, darken?c_white:draw_color, cos(degtorad(blend_angle))/1.5);
	if !darken {
		draw_sprite_ext(sprite_get("wings"), darken?1:3, wing_x, wing_y + 6*cos(degtorad((draw_angle + 180)%360)), 1, 1, 0, darken?c_white:draw_color, 1);
		draw_sprite_ext(sprite_get("wings"), 2, wing_x, wing_y + 6*cos(degtorad((draw_angle + 180)%360)), 1, 1, 0, c_white, 1);
	} else draw_sprite_ext(sprite_get("wings"), darken, wing_x, wing_y + 6*cos(degtorad((draw_angle + 180)%360)), 1, 1, 0, c_white, 1);
} else draw_sprite_ext(sprite_get("wings"), darken, wing_x, wing_y + 6*cos(degtorad((draw_angle + 180)%360)), 1, 1, 0, c_white, 1);
shader_end();

// mask stuff from munophone idk
#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
// make rectangle smaller. otherwise you get transcended lag with this character. muno moment
//draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
//if !article {
//if attack == AT_FSPECIAL && (window != 1) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
//	draw_rectangle_color(x-(spr_dir==1?100:300), y-170, x+(spr_dir==1?300:100), y+80, c_white, c_white, c_white, c_white, false);
//} else {
	draw_rectangle_color(wing_x-100, wing_y-120, wing_x+140, wing_y+80, c_white, c_white, c_white, c_white, false);
//}
//} else {
//	draw_rectangle_color(other.x-100, other.y-170, other.x+100, other.y+80, c_white, c_white, c_white, c_white, false);
//}
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

#define draw_texture()

//shader_start();
//if attack == AT_FSPECIAL && (window != 1) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
//	draw_sprite_part_ext(texture, get_gameplay_time()/12, is_scroll?(40-get_gameplay_time()/8%40):0, is_scroll?(40-get_gameplay_time()/8%40):0, 100, 120, x-100+(200*spr_dir), y-160, 2, 2, texture_color, 1);
//}
//draw_sprite_ext(texture, get_gameplay_time()/12, x, y, 2, 2, 0, texture_color, 1);
draw_sprite_part_ext(sprite_get("texture2"), get_gameplay_time()/12, (40-get_gameplay_time()/8%40), (40-get_gameplay_time()/8%40), 100, 120, wing_x-70, wing_y-160, 2, 2, c_red, 1);

//shader_end();