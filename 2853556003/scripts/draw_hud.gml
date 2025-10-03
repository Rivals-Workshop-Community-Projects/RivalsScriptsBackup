
if("thump" not in self) exit;

//draw_hud.gml
var displace = (0.75 + ((waterBomb_cooldown - move_cooldown[AT_NSPECIAL]) / (waterBomb_cooldown * 4)))
var counter_displace = move_cooldown[AT_NSPECIAL] / (waterBomb_cooldown / 4)

if(state == PS_SPAWN || not_moved){
	if(get_player_color(player) == 11){
	    if(bypass_sounds){
		    draw_debug_text(temp_x + 12, temp_y - 34, "SHIELD to use ALT sounds")
	    }else{
	        draw_debug_text(temp_x - 2, temp_y - 34, "SHIELD to use NORMAL sounds")
	    }
	}
}

/*
if(ai == 0){
    if(player == 1){
        var my_color = $241ced
    }else if(player == 2){
        var my_color = $efb700
    }else if(player == 3){
        var my_color = $b1a3ff
    }else if(player == 4){
        var my_color = $1de6a8
    }
}else{
    var my_color = $808080
}
*/

//debug

//draw_debug_text(temp_x, temp_y - 80, string(get_synced_var(player)))

var shield_offset = 0

if(all_runes){
    draw_debug_text(temp_x + 40, temp_y - 14, "ALL RUNES")
}else if(has_rune("N") || all_runes){
	shield_offset = -11
    draw_debug_text(temp_x + 28, temp_y - 14, "BLOOD FUSE")
    draw_text_color(temp_x + 28, temp_y - 14, "BLOOD FUSE", c_red, c_red, c_red, c_red, 0.75)
}

//draw_debug_text(temp_x + 40, temp_y - 26, string(can_tap_jump()))  
/*if(ai == 1){
    draw_debug_text(temp_x + 40, temp_y - 38, string(ai_debug_var))
    
    draw_debug_text(temp_x + 40, temp_y - 50, string(last_move_hit))
    
    draw_debug_text(temp_x + 40, temp_y - 62, string(last_hit_timer))
    
    draw_debug_text(temp_x + 40, temp_y - 74, string(run_jump))
    
    draw_debug_text(temp_x + 40, temp_y - 86, string(last_move))
    
    draw_debug_text(temp_x - 20, temp_y - 86, "DT: " + string(dtilt_waver))
    
    draw_debug_text(temp_x - 20, temp_y - 74, "DA: " + string(dattack_waver))
    
    draw_debug_text(temp_x - 20, temp_y - 62, "F: " + string(fspecial_waver))
    
    draw_debug_text(temp_x - 60, temp_y - 86, "DT: " + string(dtilt_cooldown))
    
    draw_debug_text(temp_x - 60, temp_y - 74, "DA: " + string(dattack_cooldown))
    
    draw_debug_text(temp_x - 60, temp_y - 62, "F: " + string(fspecial_cooldown))
}*/


var my_color = get_player_hud_color(player) 

//triangle beside it
draw_triangle_colour(temp_x + 119, temp_y - 13, temp_x + 119, temp_y, temp_x + 106, temp_y, c_black, c_black, c_black, false)
draw_triangle_colour(temp_x + 119, temp_y - 11, temp_x + 119, temp_y + 2, temp_x + 107, temp_y + 2, my_color, my_color, my_color, false)

//actual meter
draw_rectangle_colour(temp_x + 120 - thump, temp_y - 12 - thump, temp_x + 193 + thump, temp_y + 1 + thump, c_black, c_black, c_black, c_black, false)
draw_rectangle_colour(temp_x + 122- thump, temp_y - 10 - thump, temp_x + 183 + thump, temp_y - 1 + thump, rgb_slot1, rgb_slot2, rgb_slot2, rgb_slot1, false)
draw_rectangle_colour(temp_x + 122 - thump, temp_y - 10 - thump, lerp((temp_x + 122), (temp_x + 183), (waterBomb_cooldown - move_cooldown[AT_NSPECIAL]) / waterBomb_cooldown) + thump, temp_y - 1 + thump, rgb_slot1_saturated , rgb_slot1_saturated, rgb_slot1, rgb_slot1, false)

//freeze low alpha
if(waterBomb_charge_stun > 0){
    draw_set_alpha(waterBomb_charge_stun / 450)
    draw_rectangle_colour(temp_x + 120 - thump, temp_y - 12 - thump, temp_x + 193 + thump, temp_y + 1 + thump, c_red, c_red, c_red, c_red, false)
    draw_set_alpha(1)
}

//bb icon
if(move_cooldown[AT_NSPECIAL] <= 0){
    draw_rectangle_colour(temp_x + 122 - thump, temp_y - 10 - thump, temp_x + 183 + thump, temp_y - 1 + thump, rgb_slot2_saturated, rgb_slot2_saturated, rgb_slot2, rgb_slot2, false)
    shader_start()
    if(instance_exists(waterBomb) || instance_exists(hurricane)){
        if(instance_exists(waterBomb)){
            var waterBomb_icon = draw_sprite_ext(sprite_get("icon_bb"), 0, temp_x + 180 - (thump * 2) + (bomb_thump * 2) + counter_displace, temp_y - 18 - (thump * 1.5) + counter_displace + (bomb_thump * 2), displace + (thump/8) - (bomb_thump/8), displace + (thump/8) - (bomb_thump/8), 0, c_gray, 1);
        }else if(instance_exists(hurricane)){
            if(hurricane.holding_bomb){
                var waterBomb_icon = draw_sprite_ext(sprite_get("icon_bb"), 0, temp_x + 180 - (thump * 2) + (bomb_thump * 2) + counter_displace, temp_y - 18 - (thump * 1.5) + counter_displace + (bomb_thump * 2), displace + (thump/8) - (bomb_thump/8), displace + (thump/8) - (bomb_thump/8), 0, c_gray, 1);
            }else{
                var waterBomb_icon = draw_sprite_ext(sprite_get("icon_bb"), 0, temp_x + 180 - (thump * 2) + (bomb_thump * 2) + counter_displace, temp_y - 18 - (thump * 1.5) + counter_displace + (bomb_thump * 2), displace + (thump/8) - (bomb_thump/8), displace + (thump/8) - (bomb_thump/8), 0, c_white, 1);
            }
        }
    }else{
        var waterBomb_icon = draw_sprite_ext(sprite_get("icon_bb"), 0, temp_x + 180 - (thump * 2) + (bomb_thump * 2) + counter_displace, temp_y - 18 - (thump * 1.5) + counter_displace + (bomb_thump * 2), displace + (thump/8) - (bomb_thump/8), displace + (thump/8) - (bomb_thump/8), 0, c_white, 1);
    }
    shader_end()
}else{
    shader_start()
    var waterBomb_icon = draw_sprite_ext(sprite_get("icon_bb"), 0, temp_x + 180 - (thump * 2) + (bomb_thump * 2) + counter_displace, temp_y - 18 - (thump * 1.5) + counter_displace + (bomb_thump * 2), displace + (thump/8) - (bomb_thump/8), displace + (thump/8) - (bomb_thump/8), 0, c_gray, 1);
    shader_end()
    if(move_cooldown[AT_NSPECIAL] == 1){
        thump = 4
        sound_play(sound_get("sfx_waterbomb_charge"))
    }
}

if(!(attack == AT_DSPECIAL && state == PS_ATTACK_GROUND && window <= 2 && super_armor == true|| attack == AT_DSPECIAL && state == PS_ATTACK_AIR && window <= 2 && super_armor == true)){
    if(move_cooldown[AT_DSPECIAL] > 1 && !(attack == AT_DSPECIAL && window == 1 && window_timer < 8 && state == PS_ATTACK_GROUND)
    && !(attack == AT_DSPECIAL && window == 1 && window_timer < 8 && state == PS_ATTACK_AIR)){
        shader_start()
        draw_sprite_ext(sprite_get("icon_beads"), 1, temp_x + 9 + shield_offset, (temp_y - 18) - bead_thump, 1, 1, 0, c_gray, 0.75)
        shader_end()
        bead_thump = lerp(bead_thump, -6, 0.25)
    }else if(instance_exists(waterBomb)){
        shader_start()
        draw_sprite(sprite_get("icon_beads"), 0, temp_x + 9 + shield_offset, (temp_y - 18) - bead_thump)
        shader_end()
    }else{
        shader_start()
        draw_sprite(sprite_get("icon_beads"), 0, temp_x + 9 + shield_offset, (temp_y - 18) - bead_thump)
        shader_end()
    }
}else{
    shader_start()
    draw_sprite(sprite_get("icon_beads"), 2, temp_x + 9 + shield_offset, (temp_y - 18) - bead_thump)
    shader_end()
    bead_thump = lerp(bead_thump, 4, 0.25)
}

thump = lerp(thump, 0, 0.1)
bomb_thump = lerp(bomb_thump, 0, 0.1)
bead_thump = lerp(bead_thump, 0, 0.1)
