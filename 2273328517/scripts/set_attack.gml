///#args attack

//set_attack

if (move_cooldown[attack] == 0) {
    switch (attack) {
        case AT_DSTRONG:
            dstrong_loops = 0;
            dstrong_hit = false;
            break;
        case AT_FSTRONG:
            scanline_frame = 0;
            break;
        case AT_USTRONG:
            scanline_frame = 0;
            break;
        case AT_USPECIAL:
            scanline_frame = 0;
            used_uspec = true;
            nspec_tele = false;
            uspec_rot = 0;
            uspec_res_max = [0, 0];
            uspec_res_min = [0, 0];
            uspec_top_left_angle = 0;
            uspec_top_right_angle = 0;
            uspec_bottom_left_angle = 0;
            uspec_bottom_right_angle = 0;
            break;
    }
}

set_attack_value(AT_DATTACK,AG_OFF_LEDGE,1);
set_attack_value(AT_DSTRONG,AG_OFF_LEDGE,1);