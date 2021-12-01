//article1_update
image_index = state;

if (init == 0) {
    init = 1;
    player_id.web_cooldown_current = player_id.web_cooldown;
}

//State handler.
else {

    if((place_meeting(x, y, asset_get("plasma_field_obj"))) && state != 2) {
            state = 2;
            state_timer = 0;
        }

    switch(state)
    {
        case 0: // Spawn
            if(state_timer == spawn_timer) {
                state = 1;
                state_timer = 0;
            }
            break;

        case 1: // Active
            with(asset_get("oPlayer")) {
                //If player is in the web, apply web effects.
                if( id != other.player_id &&
                    x < other.x + other.width/2 &&
                    x > other.x - other.width/2 &&
                    y <= other.y  && y >= other.y - other.height) {

                        switch(state) {
                            case PS_DASH_START:
                            case PS_DASH:
                                sound_stop(asset_get("sfx_dash_start"));
                                set_state(PS_WALK);
                                break;

                            case PS_DASH_TURN:
                                set_state(PS_WALK_TURN);
                                break;
                            
                            case PS_WAVELAND:
                                hsp *= other.wavedash_multiplier;
                                break;

                            case PS_FIRST_JUMP:
                                if(state_timer == 1)
                                    vsp = -short_hop_speed;
                                break;
                        }
                    }
            }

            if (x != xprevious || y != yprevious ||
                !instance_exists(nearest_stage_obj) ||
                get_instance_y(nearest_stage_obj) != stage_y ||
                get_instance_x(nearest_stage_obj) != stage_x) {
                   refund = true;
                   destroyed = true;
            }

            if(state_timer == life_timer) {
                state = 2;
                state_timer = 0;
            }
            break;

        case 2: // Despawn
            if(state_timer == death_timer) {
                destroyed = true;
            }
            break;
        default:
            break;
    }
}

//General behavior.



state_timer++;

//Behavior when destroyed.
if(destroyed) {
    if(refund)
        player_id.web_cooldown_current = round(player_id.web_cooldown_current * cooldown_forgiveness);

    instance_destroy();
}