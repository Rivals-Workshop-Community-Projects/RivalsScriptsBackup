//B - Reversals

if (attack == AT_DSPECIAL) {
    if (attack == AT_DSPECIAL_AIR && window < 2 && !free){
        attack = AT_DSPECIAL;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    if (attack == AT_DSPECIAL && window < 2 && free){
        attack = AT_DSPECIAL_AIR;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false;
}

if (attack == AT_FTILT){
    if (window == 4 && has_hit){
        can_special = true;
    }
}


if (attack == AT_JAB){
    if ((window == 3 || window == 6) && has_hit){
        can_jump = true;
    }
}

if (attack == AT_JAB){
    if (has_hit && special_pressed && down_down) {
        set_attack( AT_DSPECIAL );
    }
//     if (attack_pressed == true and window == 6 and window_timer >= 4){
//         attack = AT_JAB
//         window = 1
//         window_timer = 0
//     }
}

if (attack == AT_DTILT){ //balance note: this cancel is probably unnecessary, the move already has a really solid angle and you get plenty of value from hitting it normally
    if (window == 3 && has_hit_player){
        can_special = true;
    }
}

if (attack == AT_FSTRONG && has_hit_player) {
    if (window == 4) {
        can_ustrong = true;
        can_attack = true;
        if (down_strong_pressed) {
            set_attack( AT_DSTRONG );
        }
    }
}


if (attack == AT_DTILT){
    if (window == 2 && has_hit_player){
        can_jump = true;
    }
}

if attack == AT_TAUNT && window == 2 && attack_pressed {
    set_attack( AT_TAUNT_2 );
}

if (attack == AT_NAIR){
    if has_hit_player {
        can_special = true;
        if (window_timer < 4) {
            can_fast_fall = 0;
        }
        if (window_timer > 8) {
            can_fast_fall = 1;
        }
    }
}



if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_fast_fall = false;
}

if (attack == AT_NSPECIAL_2) and (window == 3 or window == 4) and window_timer == 1 and right_down and spr_dir == -1 {
    spr_dir = 1
    print("meow")
}

if (attack == AT_NSPECIAL_2) and (window == 3 or window == 4) and window_timer == 1 and left_down and spr_dir == 1 {
    spr_dir = -1
    print("woof")
}

if (attack == AT_NSPECIAL_2) and (window == 4) and window_timer == 8{
    spawn_hit_fx( x, y-64, ru_wind );
}

if (attack == AT_NSPECIAL_2) and (window == 3 or window == 4) and window_timer == 1 and left_down and spr_dir == 1 {
    spr_dir = -1
   print("woof")
}


if (attack == AT_NSPECIAL){
    can_fast_fall = false;
    if window == 6 {
        can_wall_jump = true;
    }
}

if (attack == AT_DSPECIAL){
    can_wall_jump = true;
}
//Reversals and Direction Changers
if (attack == AT_NSPECIAL) && window == 1 && window_timer == 45 && left_down {
    spr_dir = -1;
}

if (attack == AT_NSPECIAL) && window == 1 && window_timer == 45 && right_down {
    spr_dir = 1;
}

if (attack == AT_FSPECIAL) && window == 1 && window_timer == 16 && left_down {
    spr_dir = -1;
}

if (attack == AT_FSPECIAL) && window == 1 && window_timer == 16 && right_down {
    spr_dir = 1;
}

if (attack == AT_FSPECIAL) && window == 2 && up_down {
    vsp = -11;
}

if (attack == AT_FSPECIAL) && window == 3 && up_down {
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -11);
}

if (attack == AT_FSPECIAL) && window == 2 && down_down || attack == AT_FSPECIAL && window == 3 && down_down {
    vsp = 11;
}

if (attack == AT_FSPECIAL) && window == 3 && down_down {
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 11);
}
//fspecial stuff
if ((attack == AT_FSPECIAL_AIR) && has_hit_player && (get_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE) != 1)) {
    set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    if has_hit{
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
    }
    if window == 1 and window_timer == 1{
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
    }
    if (attack == AT_FSPECIAL_AIR && can_fast_fall && window != 4) can_fast_fall = false;
    if (window == 1) {
       if (window_timer == 1) moved_up = false;
    }
    if (attack == AT_FSPECIAL_AIR && window < 4 && !free){
        attack = AT_FSPECIAL;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    if (attack == AT_FSPECIAL && window < 4 && free){
        attack = AT_FSPECIAL;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    can_wall_jump = true;
    if (window == 3) {
        if (attack == AT_FSPECIAL_AIR) {
            if (!moved_up){
                if (free && place_meeting(x+(1*spr_dir),y,asset_get("par_block"))){
                    for (var i = 0; i < 16; i++){
                        if (!place_meeting(x+(1*spr_dir),y-(i+1),asset_get("par_block"))){
                            y -= i;
                            moved_up = true;
                            break;
                        }
                    }
                }
            }
        }
    }
    if attack == AT_FSPECIAL {
        if has_hit_player {
            window = 5;
            window_timer = 0;
            destroy_hitboxes();
            has_hit = false;
            has_hit_player = false;
        }
        if (window == 5 && window_timer == 2) {
            fspecial_hit_cancel = 1;
            window = 4;
            window_timer = 0;
        }
        if (window == 4) {
            if fspecial_hit_cancel = 1 {
                can_attack = true;
                can_jump = true;
            }
        }
    }
    if attack == AT_FSPECIAL_AIR {
        if (window == 1 && window_timer == 1) {
            reset_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE);
        }
        if (window == 4 && window_timer == get_window_value(AT_FSPECIAL_AIR,4,AG_WINDOW_LENGTH)-1) {
            can_fast_fall = 1;
        }
    }
}

if attack == AT_FSPECIAL {
    can_fast_fall = false;
}

if attack == AT_FSPECIAL && window == 1 {
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
    fspecial_jump = 0;
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
}

if (attack == AT_FSPECIAL && window == 4 && jump_pressed && fspecial_jump == 1){
    set_state(PS_DOUBLE_JUMP);
    fspecial_jump = 0;
}

if attack == AT_TAUNT && down_down && window == 1 && window_timer < 5 {
    set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt3"));
}

if attack == AT_TAUNT && window == 2 && window_timer = 33 {
    set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
}

if attack == AT_NSPECIAL_2{
    can_jump = false
}