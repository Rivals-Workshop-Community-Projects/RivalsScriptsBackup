target_x_distance = (ai_target.x - x) * spr_dir;
target_y_distance = (y - ai_target.y);

//taunt when dead
    if (!free && can_attack && (ai_target.state == PS_RESPAWN || ai_target.state == PS_DEAD)) {
        set_attack_ai(AT_TAUNT);
    }
