//This file handles smash land inputs making all buttons function the same and removing techs.
//It also manages audio. Don't touch this unless you know what you are doing.


old_spr_dir = spr_dir;

#region //Tap Jump Protection Buffer-----------------------------------------
if(state == PS_DOUBLE_JUMP){
    dj_state_timer = state_timer;
    is_double_jump = true;
}else{
    is_double_jump = false;
    dj_state_timer = 0;
}
#endregion

#region //Tumble Uair Autocancel---------------------------------------------
if(state == PS_TUMBLE){ 
    if(( (strong_down or attack_down) and up_down) or up_stick_down){
        set_attack(AT_UAIR);
    }
}
#endregion

#region //Jumpsquat buffer---------------------------------------------------
if(state == PS_JUMPSQUAT){
    is_jumpsquat = true;
    move_cooldown[AT_UTILT] = move_cooldown[AT_UTILT] > 0 ? move_cooldown[AT_UTILT] : 1;
}else{
    is_jumpsquat = false;
}
#endregion

#region //Strong Buffer for neutral strong input-----------------------------
if(strong_down and strong_buffer <= 0 and !strong_was_pressed){
    strong_buffer = 6;
    strong_pressed = true;
    strong_was_pressed = true;
} else if(!strong_down){
    strong_was_pressed = false;
} else if (strong_buffer > 0){
    strong_buffer--;
    if(strong_buffer <= 0){
        strong_pressed = false;
    }
}
#endregion

#region //Audio--------------------------------------------------------------
switch(state){
    case PS_WALL_JUMP:
        sound_stop(asset_get("sfx_jumpwall"));
        if(state_timer == 1){
          sound_play(wall_jump_sound);  
        }
        break;
    case PS_WALK:
        if(state_timer == 1){
            //sound_play(dash_sound);
        }
        break;
    case PS_DASH_START:
        sound_stop(asset_get("sfx_dash_start"));
        //sound_play(dash_sound);
       break;
    case PS_DEAD:
    case PS_RESPAWN:
        sound_stop(asset_get("sfx_death1"));
        sound_stop(asset_get("sfx_death2"));
        break;
}
#endregion

#region //Sleep Code---------------------------------------------------------
with(oPlayer){
    if("ssl_sleep_lag" in self and ssl_sleep_owner == other.player){
        if(state_cat == SC_HITSTUN){
            ssl_sleep_lag = 0; 
        }
        if(ssl_sleep_lag > 0){
            ssl_sleep_lag--;
            if(state == PS_PRATFALL and ssl_sleep_lag <= 0){
                state = PS_IDLE_AIR;
            } else if (state == PS_PRATLAND and ssl_air_sleep){
                was_parried = true;
                ssl_sleep_lag *= 2;
                parry_lag = ssl_sleep_lag;
                ssl_air_sleep = false;
                set_state(PS_PRATLAND);
            }
        } else if("ssl_sleep_lockout" in self and ssl_sleep_lockout > 0) {
            ssl_sleep_lockout--;
        }
    }
}
#endregion