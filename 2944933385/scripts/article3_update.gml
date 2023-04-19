//articleX_update - runs every frame the article exists. Template by Muno

/*STATE LIST

- 0 Idle
- 1 Attacking
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9

*/
var stage_x = get_stage_data( SD_X_POS );
var blastzone_y = get_stage_data( SD_BOTTOM_BLASTZONE_Y );
if (free){
	if (x < room_width*0.5){
	if (x <= stage_x - 136){
		max_life = 180;
	}
	}
	if (x > room_width*0.5){
	if (x >= (room_width - stage_x) + 135){
		max_life = 180;
	}
	
	}
	if (y > blastzone_y - 270){
	    max_life = 180;
	}
}
if should_die{
        instance_destroy();
        exit; //Stops execution of the script
}

if (state == 0){ //Spawn
    if (state_timer == 1){
        sound_play(sound_get("sfx_trampoline"));
    }
    sprite_index = sprite_get("tramp_jump_1");
    image_index += 0.3;
    if (state_timer == 12){
        setState(1);
    }
}
switch (bounces){
    case 0:
    bounce_vsp = -12;
    break;
    case 1:
    bounce_vsp = -16;
    break;
    case 2:
    bounce_vsp = -20;
    break;
}
if (!free){
    y -= 10;
}
if (state == 1){ //idle
if (state_timer == max_life){
    should_die = true;
}
    sprite_index = sprite_get("tramp_" + string(bounces + 1));
    with (asset_get("oPlayer")){
        if (place_meeting(x, y, other) && other.state == 1 && can_tramp && state != PS_AIR_DODGE && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_RESPAWN && state != PS_DEAD){
            if (other.bounces < 3){
                y = other.y - 32;
                if (state_cat != SC_HITSTUN){
                set_state(PS_IDLE_AIR);
                }
                state_timer = 0;
                invincible = false;
                invincible_time = 0;
                if (player != other.owner){
                vsp = other.bounce_vsp;
                }
                if (player == other.owner){
                	vsp = other.bounce_vsp * 1.15;
                }
                other.bounces += 1;
                other.state = 2;
                other.state_timer = 0;
                with other{
                    if (bounces != 3){
                    sound_play(sound_get("sfx_trampoline"));
                    }
                }
            } 
            if (other.bounces == 3){
                vsp = 0;
                hsp = 0;
                y = other.y - 32;
                set_state(PS_PRATFALL);
                state_timer = 0;
                invincible = false;
                invincible_time = 0;
                with other{
                    sound_play(sound_get("sfx_tramp_break"));
                }
                other.state = 3;
                other.state_timer = 0;
            }
        }
    }
    if (place_meeting(x, y, player_id) && bounces < 3 && player_id.state != PS_AIR_DODGE && player_id.state != PS_ROLL_BACKWARD && player_id.state != PS_ROLL_FORWARD){
        if (player_id.free && player_id.can_tramp){
        player_id.state = PS_ATTACK_AIR;
        player_id.state_timer = 0;
        player_id.attack = AT_USPECIAL;
        player_id.window = 2;
        player_id.window_timer = 0;
        invincible = false;
        invincible_time = 0;
        player_id.y = y - 32;
        }
        if (!player_id.free && player_id.can_tramp){
        player_id.state = PS_ATTACK_GROUND;
        player_id.state_timer = 0;
        player_id.attack = AT_USPECIAL;
        player_id.window = 2;
        player_id.window_timer = 0;
        invincible = false;
        invincible_time = 0;
        player_id.y = y - 32;
        }
    }
}

if (state == 2){ //Bounce
    sprite_index = sprite_get("tramp_jump_" + string(bounces + 1));
    image_index += 0.3;
    if (state_timer == 12){
        setState(1);
    }
}

if (state == 3){ //Ded
    sprite_index = sprite_get("tramp_break");
    image_index += 0.3;
    if (state_timer == 12){
        should_die = true;
    }
    sound_stop(sound_get("sfx_trampoline"));
}


if (break_tramp == true && state != 3){
    sound_play(sound_get("sfx_tramp_break"));
    state = 3;
    state_timer = 0;
    sprite_index = sprite_get("tramp_break");
}

//more states can go here

//Make time progress
state_timer++;

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;