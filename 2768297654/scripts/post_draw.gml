// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_USPECIAL){
    if(window > 2){
        if(spr_dir = 1){
        draw_sprite_ext(sprite_get("fly_meter"), 0, x - 34, y + 0, 1, 1, 0, c_white, 0.8);
        draw_sprite_ext(sprite_get("fly_bar"), 0, x - 28, y + 0, (fly_length/100), 1, 0, c_white, 1);
        }        if(spr_dir = -1){
        draw_sprite_ext(sprite_get("fly_meter"), 0, x - 28, y + 0, 1, 1, 0, c_white, 0.8);
        draw_sprite_ext(sprite_get("fly_bar"), 0, x - 22, y + 0, (fly_length/100), 1, 0, c_white, 1);
        }
        }
    }
}

if(bomb_state == true){
    if !phone_hud_hidden && draw_indicator{
	draw_sprite_ext(sprite_get("smokebomb_hud"), 0, x + 18, y - char_height - hud_offset - 44, 1, 1, 0, c_white, 1);
    }
}