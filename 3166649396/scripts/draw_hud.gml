//draw_hud

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7
if !("timer" in self) {
	exit;
}


var w = 162*clamp(essence_cur/essence_max, 0, 1)
var col = essence_consume_timer < 0 ? c_white : essence_col
draw_sprite_ext(sprite_get("meter_frame"), 0, temp_x, temp_y - 6, 1, 1, 0, c_white, 1)

draw_sprite_part_ext(sprite_get("meter_inside"), 0, 0, 0, w, 64, temp_x + 14, temp_y - 38, 1, 1, col, 1)
/*
maskHeader();

draw_sprite_part_ext(sprite_get("meter_inside"), 0, 0, 0, w, 64, temp_x + 14, temp_y - 38, 1, 1, col, 1)

maskMidder();

draw_sprite_tiled_ext(sprite_get("meter_overlay"), floor(timer/10), temp_x + 14 + timer*3, temp_y - 30, 1, 1, c_white, 1)

maskFooter();
*/
shader_start()

draw_sprite_ext(sprite_get("meter_flame"), timer/6, temp_x + 8, temp_y - 16, 1, 1, 0, c_white, 1)

shader_end()

if orb_id != noone {
    var orb_col = get_spirit_col(orb_id.element)
    draw_sprite_part_ext(sprite_get("meter_inside"), 0, 0, 0, w, 64, temp_x + 14, temp_y - 38, 1, 1, orb_col, 0.5*(dcos(orb_id.timer*6) + 1))
}

draw_sprite_ext(sprite_get("moveset_icon"), 0, temp_x + 192, temp_y - 6, 1, 1, 0, c_white, 1)

//loadout icons
if loadout[0] != DEFAULT {
    var col = loadout_cols[0]
    draw_rectangle_color(temp_x + 190, temp_y - 4, temp_x + 193, temp_y - 9, col,col,col,col, false)        
}
if loadout[1] != DEFAULT {
    var col = loadout_cols[1]
    draw_rectangle_color(temp_x + 184, temp_y - 4, temp_x + 187, temp_y - 9, col,col,col,col, false)        
    draw_rectangle_color(temp_x + 196, temp_y - 4, temp_x + 199, temp_y - 9, col,col,col,col, false)        
}
if loadout[2] != DEFAULT {
    var col = loadout_cols[2]
    draw_rectangle_color(temp_x + 190, temp_y - 10, temp_x + 193, temp_y - 15, col,col,col,col, false)        
}
if loadout[3] != DEFAULT {
    var col = loadout_cols[3]
    draw_rectangle_color(temp_x + 190, temp_y + 2, temp_x + 193, temp_y - 3, col,col,col,col, false)        
}




if ("practice_mode" in self) && practice_mode && !trailer_mode {
	draw_debug_text(temp_x, temp_y - 70, "practice mode:
	taunt + left/right to summon orb
	taunt + down to reset loadout")
}



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
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

#define get_spirit_col(s)
var col = c_white
switch s {
	case DEFAULT: col = c_white break;
	case MOON: col = $ff5eff break;
	case FIRE: col = $0000ff break;
	case EARTH: col = $00ff00 break;
	case ICE: col = $ffff00 break;
	case WATER: col = $ff5f00 break;
	case LIGHTNING: col = $00ffff break;
	case SHADOW: col = $c50076 break;
}
return col;