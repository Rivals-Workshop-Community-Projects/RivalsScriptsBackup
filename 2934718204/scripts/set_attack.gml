//set_attack

proj_parried = false
uspec_player_hit = false
/*
if attack == AT_DSPECIAL {
    reset_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING);
}
*/

reset_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH);
reset_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME);
reset_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH);
reset_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
reset_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME);
reset_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH);
reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME);
reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH);
/*
if attack == AT_DAIR {
    if (left_down && !right_down && spr_dir == 1) || (!left_down && right_down && spr_dir == -1) {
        spr_dir *= -1
    }
}
*/


taunt_attack = false
if attack == AT_TAUNT {
    if check_input("up") {
        attack = AT_USPECIAL
        
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 18);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 17);
        set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 27);
        
        taunt_attack = true
    } else if check_input("down") {
        attack = AT_DSPECIAL
        
        set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
        set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 18);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 18);
        
        taunt_attack = true
    } else if check_input("left") && !check_input("right") {
        attack = AT_DATTACK
        spr_dir = -1
        
        set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 18);
        set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 17);
        set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 24);
        
        taunt_attack = true
    } else if check_input("right") && !check_input("left") {
        attack = AT_DATTACK
        spr_dir = 1
        
        set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 16);
        set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 15);
        set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 24);
        
        taunt_attack = true
    }
}
/*
if silk_cancel_id != noone {
    silk_cancel_id.hornet_silked_id = noone
    silk_cancel_id = noone
    sound_play(asset_get("sfx_zetter_shine"))
}
*/
#define check_input(dir)
return ((dir == "up") && up_down) || ((dir == "left") && left_down) || ((dir == "right") && right_down) || ((dir == "down") && down_down);