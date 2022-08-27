//thank you delta :)


//Sinusuiodal pulsing
var phase, position;
phase = (get_gameplay_time()/30) mod (2*pi);
position = abs(sin(300))*0.4 + 0.6;

//Blendmode
var blend = gpu_get_blendmode();
gpu_set_blendmode(bm_add);

//Draw the glow
if (player_id.attack == AT_DSPECIAL && (player_id.window == 1 || player_id.window == 2) && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && state == 0) {
	if(current_owner = player_id.player){
		var precision;
		precision = (position-0.5)*40;
		draw_glow(x, y, 15+(position*45*glowmodifier), c_black, colorvar, 1, precision);
	}
}

//Reset
gpu_set_blendmode(blend);

if(current_owner != player_id.player && state == 0){
	if(!holding_bomb){
		draw_sprite_ext(sprite_get("hurricane_outline"), image_index, x, y, 1.1 *spr_dir, 1.1, image_angle, get_player_hud_color(current_owner), 1)
	}else{
		draw_sprite_ext(sprite_get("hurricane_bomb_outline"), image_index, x, y, 1.1 *spr_dir, 1.1, image_angle, get_player_hud_color(current_owner), 1)
	}
}
#define draw_glow(cx, cy, r, col1, col2, alpha, precision)

draw_primitive_begin(pr_trianglefan);
draw_vertex_color(cx, cy, col1, alpha);
var incre = (2*pi) / abs(precision);

for (var i = 0; i <= 2*pi; i+=incre)
{
    var pos;
    pos = [cos(i)*sign(precision), sin(i)*sign(precision)];
    draw_vertex_color(cx + (pos[0]*r), cy - (pos[1]*r), col2, 0);
}
draw_vertex_color(cx+(r*sign(precision)), cy, col2, 0);
draw_primitive_end();
