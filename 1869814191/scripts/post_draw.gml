//post_draw

//draw_sprite(sprite_get("alert_exclamation"), 0, x+(hX*spr_dir), y+hY-1);
var isAttacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

if (state == PS_WALK) {
	draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_black, walkFade);
	//draw_sprite_ext(sprite_get("monster_soul"), 0, x, y-(char_height/2), 1, 1, 0, c_white, walkFade*2);
	//draw_sprite_ext(sprite_get("walk_outline"), image_index, x, y, 1*spr_dir, 1, 0, c_white, walkFade*2);
}

if (isAttacking) {
	if (window == 1) {
		switch(attack) {
			case AT_FSTRONG:
			case AT_USTRONG:
				//var _atk = AT_USTRONG;
				var _index = 1;
				sansAlert(attack, _index, 0);
			break;
			case AT_DSPECIAL:
				//var _atk = AT_USTRONG;
				var _index = 1;
				//sansAlert(attack, _index, 1);
				if !(window_timer mod 10 > 5) { sansAlert(attack, _index, 1); }
			break;
		}
	}
	if attack == AT_DSTRONG{
		var attack_image = -1;
		
		switch window{
			case 1:
				for (var d = 0; d < dstrong_bones; d++;){
					set_hitbox_value(attack, 1, HG_HITBOX_X, (x - dstrong_positions[d]) * -spr_dir);
					var _index = 1;
					sansAlert(attack, _index, 0);
				}
			break;
			case 2:
				attack_image = 0;
			break;
			case 3:
				attack_image = 1 + (window_timer / 2);
			break;
			case 4:
				attack_image = 3 + (window_timer / 4);
			break;
		}
		if attack_image >= 0 && attack_image < 6 for (var d = 0; d < dstrong_bones; d++;) draw_sprite_ext(sprite_get("dstrong_bone"), attack_image, dstrong_positions[d], y, d % 2 == 0? -1:1, 1, 0, c_white, 1);
	}
}

// var sansBeamLen = 300

// var dir = joy_dir;
// var beamx = lengthdir_x(10, dir)
// var beamy = lengthdir_y(10, dir)

// var beamxx = lengthdir_x(sansBeamLen - 30 , dir)
// var beamyy = lengthdir_y(sansBeamLen - 30 , dir)

// draw_sprite_ext(sprite_get("blaster_beam_start"), 0, x, y, 1, 1, dir, c_white, 1);
// draw_sprite_ext(sprite_get("blaster_beam"), 0, x+beamx, y+beamy, sansBeamLen, 1, dir, c_white, 1);
// draw_sprite_ext(sprite_get("blaster_beam_end"), 0, x+beamxx, y+beamyy, 1, 1, dir, c_white, 1);

/*
var _atk = AT_USTRONG;
var _index = 1;
sansAlert(_atk, _index)
*/

#define bgrConvert(hex)
//i made this function before realizing changing the hex code to use rgb instead of bgr was
//as simple as using # instead of $ so uhhhh this is kinda useless now
return make_color_rgb(color_get_blue(hex), color_get_green(hex), color_get_red(hex));

#define sansAlert(_attack, _hb, _alertType)
var alert_col = /*#*/$241CED;
var hX = get_hitbox_value(_attack, _hb, HG_HITBOX_X);
var hY = get_hitbox_value(_attack, _hb, HG_HITBOX_Y);
var hW = get_hitbox_value(_attack, _hb, HG_WIDTH);
var hH = get_hitbox_value(_attack, _hb, HG_HEIGHT);
var hLeft = hX-(hW/2);
var hRight = hX+(hW/2);
var hBottom = hY+(hH/2);
var hTop = hY-(hH/2);

if (_alertType >= 1) {
	drawOutline(x+(hLeft*spr_dir), y+hBottom-3, x+(hRight*spr_dir)-1, y+hTop-1, 000000, 8);
	//drawOutline(x+((hLeft+2)*spr_dir), y+hBottom-6, x+((hRight-2)*spr_dir)-1, y+hTop+1, #000000, 8);
	drawOutline(x+((2+hLeft)*spr_dir), y+hBottom-5, x+((hRight-2)*spr_dir)-1, y+hTop+1, /*#*/$FFFFFF, 4);
} else {
	//the x2 of draw_rectangle is ever so slightly offset by one (1) pixel to the 
	//right which caused me to lose my mind before i implemented a caveman fix
	drawOutline(x+(hLeft*spr_dir), y+hBottom-3, x+(hRight*spr_dir)-1, y+hTop-1, alert_col, 2);
	draw_sprite(sprite_get("alert_exclamation"), 0, x+(hX*spr_dir), y+hY-1);
}

#define drawOutline(_x1, _y1, _x2, _y2, color, thickness)
for (var i = 0; i < thickness; i++) {
	draw_rectangle_color(
		_x1+(i*spr_dir), 
		_y1-i, 
		_x2-(i*spr_dir), 
		_y2+i, 
		color, color, color, color, 1);
}