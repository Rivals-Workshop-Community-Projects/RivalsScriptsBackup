//postdraw
//draw_debug_text(x, y, "cooldown: " + string(move_cooldown[AT_DSPECIAL]));

//draw_debug_text(x, y, "window: " + string(window));

//draw_debug_text(x, y+16, "timer: " + string(window_timer));

//HUD SETTINGS (SIZE) - 0 NONE, 1 SMALL, 2 LARGE
//HUD SETTINGS (NAME) - 0 OFF, 1 ON

/* //particle code moved to article2
shader_start()

for (var i = 0; i < ds_list_size(particles); i++) {
	var part = particles[| i]
	draw_sprite_ext(part.sprite, 0, part.x, part.y, part.xscale, part.yscale, part.angle, c_white, 1)
}*/


if instance_exists(toadie_obj) and toadie_obj.state == PS_ATTACK_AIR {
	toadie_obj.depth = -2;
}

/*
if instance_exists (toadie_obj) and toadie_obj.state == PS_DEAD{
	toadie_obj.depth = 0;
}
shader_end() */

with (hit_fx_obj){
	if (player_id == other && hit_fx == other.fspec2_proj_trail){
		draw_sprite_ext(sprite_get("fspecial2_proj"), floor(step_timer/3), x, y, 1*spr_dir, 1, 0, other.magic_color_hsv, 0.5)
	}
}

//fstrong shader fix
if (state == PS_ATTACK_GROUND || state_cat == SC_HITSTUN) && (attack == AT_FSTRONG && image_index >= 4 && image_index < 15){
	draw_sprite_ext(sprite_get("fstrong_fire"), image_index - 4, x, y, 2 * spr_dir, 2, 0, c_white, 1);
}

if state == PS_ATTACK_GROUND and attack == AT_USTRONG {
    for (var i = 0; i < array_length(ustrong_rings); i++)
    {
    	if ustrong_rings[i].state == -1 continue;
    	
    	var ring = ustrong_rings[i]
    	var ring_state = ring.state
    	var frame = ustrong_ring_state_format[ring_state].frame_start + ((ring.state_timer / ustrong_ring_state_format[ring_state].length) * ustrong_ring_state_format[ring_state].frames)
    	
    	draw_sprite_ext(ring.sprite, frame, x, y-(i*ustrong_ring_separation)+ustrong_ring_offset, spr_dir, 1, 0, c_white, 1)
    }
}


if (!playtest_active){
    if (state == PS_AIR_DODGE && draw_indicator == false){
    var size_setting = get_local_setting(SET_HUD_SIZE);
    var name_setting = get_local_setting(SET_HUD_NAMES);
    
    if (name_setting != 0 || size_setting != 0){
        draw_sprite_ext(sprite_get("hud_player_arrow"), 0, airdodge_pos_x - 7, airdodge_pos_y - 81, 2, 2, 0, airdodge_player_col, 1);
        if (get_player_damage(player) >= 100){
            if (name_setting == 1 && size_setting == 0){
                draw_sprite_ext(sprite_get("hud_player_arrow"), 0, airdodge_pos_x - 7, airdodge_pos_y - 81, 2, 2, 0, c_black, 1);
            } else {
                switch (size_setting){
                    case 1:
                    if (name_setting == 0){
                         draw_sprite_ext(sprite_get("hud_damage_boxes"), 0, airdodge_pos_x - 22, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
                    } else if (name_setting == 1) {
                        draw_sprite_ext(sprite_get("hud_damage_boxes"), 1, airdodge_pos_x - 22, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
                    }
                    break;
                    case 2:
                    if (name_setting == 0){
                         draw_sprite_ext(sprite_get("hud_damage_boxes"), 2, airdodge_pos_x - 24, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
                    } else if (name_setting == 1) {
                        draw_sprite_ext(sprite_get("hud_damage_boxes"), 3, airdodge_pos_x - 24, airdodge_pos_y - 119, 1, 1, 0, c_white, 1);
                    }
                    break;
                }
            }
        }
    }
    
    if (name_setting != 0){
        textDraw(airdodge_pos_x, airdodge_pos_y - 96, "fName", airdodge_player_col, 0, 1000, fa_center, 1, 4, 1, string(get_player_name(player)), 0);
    }
    
    if (size_setting != 0){
    textDraw(airdodge_pos_x + (size_setting == 1 ? 2 : 0), airdodge_pos_y - (96 + (name_setting*16)) - (size_setting == 2 ? 10 : 0), (size_setting == 1? "fName" : "roundFont"), c_white, 0, 1000, fa_center, 1, 4, 1, string(get_player_damage(player)) + "%", 0);

        }
    }
}

with pHitBox {
    if hbox_num != 1 or attack != AT_NSPECIAL or player_id != other continue;
    
    var offset = get_gameplay_time()*9
    var radius = 12;
    var i=0;

    repeat (3) {
        var xx = lengthdir_x(radius, (i*120)+offset)
        var yy = lengthdir_y(radius, (i*120)+offset)
        
        draw_sprite_ext(other.nspecial_spr, i, x+xx,y+yy,1,1,0,other.nspecial_color,1)
        
        i++;
    }
}

/*
with (pHitBox) if (player_id == other && attack == AT_FSPECIAL_2 && hbox_num == 2){
	draw_debug_text(x, y, string(particle_seed));
}*/

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(floor(x1) + i * 2, floor(y1) + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha > 0 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;
