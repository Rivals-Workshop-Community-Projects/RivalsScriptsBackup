if (get_training_cpu_action() == CPU_FIGHT) {
	var xdist = abs(ai_target.x - x);
	var ydist = abs(ai_target.y - y);
	var difficulty_chance = (11 - temp_level)

    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
        //Hold down the special button for nspecial
        if (attack == AT_NSPECIAL) {
            if (window == 2) {
                if (window_timer == 1)
                    range_timer = random_func( 0, 15, 60 );
                else {
                    range_timer --

                    if (range_timer >= 0) {
                        special_down = true;
                    }
                    else
                    {
                        special_down = false;
                        range_timer = 0;
                    }
                }
            }
        }
    }

    //nSpecial Cat Return
    if (!ai_recovering && get_gameplay_time() % difficulty_chance == 0 && can_special)
	{
        if (instance_exists(mycat)) {
            if (mycat.follow_type == 1) {
                joy_pad_idle = true;
                left_down = false;
                right_down = false;
                down_down = false;
                special_pressed = true;
                attack_pressed = false;
            }
        }
    }

    //DSpecial
    if (!ai_recovering && get_gameplay_time() % difficulty_chance == 0 && can_special)
	{
        if (dspecial_gague < dspecial_gague_max) {
            with (asset_get("pHitBox")) {
                if (player_id != other.id && type == 2 && !transcendent) {
                    if (point_distance(x, y, other.x, other.y) < 120) {
                        with (other) {
                            joy_pad_idle = true;
                            left_down = false;
                            right_down = false;
                            down_down = true;
                            special_pressed = true;
                            attack_pressed = false;
                        }
                    }
                }
            }
        }
        else {
            if (mycat.state != "dead" || mycat.state != "hurt") {
                if (point_distance(mycat.x, mycat.y, ai_target.x, ai_target.y) < 144) {
                    joy_pad_idle = true;
                    left_down = false;
                    right_down = false;
                    down_down = true;
                    special_pressed = true;
                    attack_pressed = false;
                }
            }
        }
    }
}