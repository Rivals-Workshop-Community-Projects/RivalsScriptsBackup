//article1_post_draw

var tired = firemenHealth*5;

if 4 > firemenHealth && firemenHealth != 0 && (state_timer mod (tired) > 0 && firemenHealth*2 > state_timer mod (tired)) { 
	draw_sprite_ext(sprite_get("firemen_tired"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
}