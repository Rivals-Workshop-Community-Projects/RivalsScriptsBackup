

var offset_y = 4;
var transparency_var = 1;
var cur_spr = sprite_get("katamari");

if (hitbox_active && !hitpause){
	cur_spr = sprite_get("katamari_active");
}
else{
	cur_spr = sprite_get("katamari");
}

if (hitpause){
	transparency_var = .75;
}
else{
	transparency_var = 1;
}


if (triggered){
	cur_spr = sprite_get("katamari_triggered");
}


if (should_rotate){
	if (!hitpause){
		if (vsp > 0){
			cur_rot = cur_rot + 1*spr_dir;
		}
		if (hsp != 0){
			if (being_pushed){
				rot_speed = 3;
			}
			else{
				rot_speed = 1;
			}
			
			cur_rot = cur_rot + rot_speed*spr_dir;
			
		}
	}
	draw_sprite_ext( cur_spr, 0, x, y + offset_y, 1, 1, cur_rot, c_white, transparency_var );
}
else{
	draw_sprite_ext( cur_spr, 0, x, y + offset_y, 1, 1, cur_rot, c_white, transparency_var );
}


var hud_color = get_player_hud_color(player_id.player);

var hud_thingy = -65;

var size_display = false;

draw_sprite_ext( sprite_get("indicator"), 0, x - 2*spr_dir, y - 40, 1, 1, 0, hud_color, 1 );

if (size_display){
	draw_debug_text( x - 15, y + hud_thingy, string(player_id.katamari_size));
	draw_debug_text( x + 5, y + hud_thingy, "cm");
}