//ai_update

//during jab, keep attacking if target is in range
if (attack == AT_JAB) {
    if (ai_target.y < y + 10 && ai_target.y > y - 50) {
        if ((spr_dir == 1 && ai_target.x > x && ai_target.x < x + 100) || (spr_dir == -1 && ai_target.x < x && ai_target.x > x - 100)) {
            attack_pressed = 1;
        }
    }
}

//change uspecial angle depending on position
if (attack == AT_USPECIAL && window == 2 && window_timer < 3 && ai_recovering) {
    //max height if low
    if (y > get_stage_data(SD_Y_POS) + 200) {
        if (spr_dir == 1) {
            left_down = 1;
        }
        else {
            right_down = 1;
        }
    }
    //max width if high
    else if (y < get_stage_data(SD_Y_POS) + 50) {
        if (spr_dir == 1) {
            right_down = 1;
        }
        else {
            left_down = 1;
        }
    }
    //neutral otherwise
    else {
        right_down = 0;
        left_down = 0;
    }
}

//spam walljump if uspecial is unavailable
if (ai_recovering && move_cooldown[AT_USPECIAL] > 0) {
    jump_pressed = 1;
}

if (get_training_cpu_action() == CPU_FIGHT) {
    //use dspecial if not full whenever an enemy projectile comes close, if not already using another attack or recovering
    if (move_cooldown[AT_DSPECIAL] == 0 || (move_cooldown[AT_DSPECIAL] > 0 && attack == AT_DSPECIAL)) {
        if (((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || attack == AT_DSPECIAL) && !ai_recovering && oil_charge < 3) {
            with (asset_get("pHitBox")) {
                //use dspecial from further away the faster the projectile is
                if (player != other.player && type == 2 && point_distance(x, y, other.x, other.y - 30) < 60 + (abs(hsp + vsp) * 10)) {
                    other.down_down = 1;
                    other.special_down = 1;
                    other.special_pressed = 1;
                }
            }
        }
    }
}

//add dspecial to the list of moves if full
if (oil_charge == 3) {
    neutral_attacks[9] = AT_DSPECIAL;
    close_side_attacks[13] = AT_DSPECIAL;
    mid_side_attacks[2] = AT_DSPECIAL;
}
//remove it otherwise
else {
    neutral_attacks[9] = noone;
    close_side_attacks[13] = noone;
    mid_side_attacks[2] = noone;
}