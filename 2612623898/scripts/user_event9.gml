//This file handles smash land inputs making all buttons function the same and removing techs.
//It also manages audio. Don't touch this unless you know what you are doing.

has_airdodge = false;
can_shield = false;
can_tech = false;
can_wall_tech = false;
clear_button_buffer(PC_SHIELD_PRESSED);
parry_cooldown = 5;
if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
    set_state(PS_IDLE);
    sound_stop(asset_get("sfx_roll"));
}

old_spr_dir = spr_dir;

//Hud Variables ---------------------------------------------------------------
if (!hitpause) {
    ssl_hud_camera_x = view_get_xview();
    ssl_hud_camera_y = view_get_yview();
}
with oPlayer {
    if ("ssl_hud_toggle" in self and "temp_x" in self && temp_x == other.x_pos_array[other.player_count]) {
        other.device_player = self;
    }
}
if ("device_player" in self && instance_exists(device_player) && device_player.player == player) {
  with oPlayer {
    if ("ssl_hud_toggle" in self) {
      ssl_hud_toggle = other.ssl_hud_toggle;
    }
  }
}

if (ssl_hud_toggle) {
    draw_indicator = false;
}

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
    strong_buffer = 10;//6
    strong_pressed = true;
    strong_was_pressed = true;
} else if(!strong_down){
    strong_was_pressed = false;
} 
if (strong_buffer > 0){
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
            sound_play(dash_sound);
        }
        break;
    case PS_DASH_START:
        sound_stop(asset_get("sfx_dash_start"));
        sound_play(dash_sound);
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

//#region Secret alt color code //////////

/* if (state == PS_PARRY && state_timer < 6){ // Turns off secret color during parry
	ColorLocked = false;
}
else {
	if (!ColorLocked && ColorLock = 1){
		ColorLocked = true;
	}
} */

if (!ColorLocked && ColorLock = 1){
	ColorLocked = true;
}

if (state == PS_SPAWN || was_reloaded){ // Checks if start of match or practice mode reload
	if (spawn_timer < 100 && ColorLock == 0){

		if (get_player_color(player) == 22){ // Colorful Secret Alt

			// Brown - Alt Color Up + Taunt
			if (up_down && !down_down && !left_down && !right_down && !jump_down && !attack_down && !special_down){
				SecretColor = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
		    
			// Pastel - Alt color Down + Taunt
			if (!up_down && down_down && !left_down && !right_down && !jump_down && !attack_down && !special_down){
				SecretColor = 2;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}			
			
			// Blue - Alt color Left + Taunt
			if (!up_down && !down_down && left_down && !right_down && !jump_down && !attack_down && !special_down){
				SecretColor = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Green & Red - Alt color Right + Taunt
			if (!up_down && !down_down && !left_down && right_down && !jump_down && !attack_down && !special_down){
				SecretColor = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Red - Alt Color Up + Taunt + Jump
			if (up_down && !down_down && !left_down && !right_down && jump_down && !attack_down && !special_down){
				SecretColor = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Yellow & Red - Alt Color Down + Taunt + Jump
			if (!up_down && down_down && !left_down && !right_down && jump_down && !attack_down && !special_down){
				SecretColor = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Dark Blue - Alt Color Left + Taunt + Jump
			if (!up_down && !down_down && left_down && !right_down && jump_down && !attack_down && !special_down){
				SecretColor = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Green & Blue - Alt Color Right + Taunt + Jump
			if (!up_down && !down_down && !left_down && right_down && jump_down && !attack_down && !special_down){
				SecretColor = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Sepia - Alt Color Up + Taunt + Attack
			if (up_down && !down_down && !left_down && !right_down && !jump_down && (attack_down || special_down)){
				SecretColor = 9;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Yellow & Brown - Alt Color Down + Taunt + Attack
			if (!up_down && down_down && !left_down && !right_down && !jump_down && (attack_down || special_down)){
				SecretColor = 10;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Grayscale - Alt Color Left + Taunt + Attack
			if (!up_down && !down_down && left_down && !right_down && !jump_down && (attack_down || special_down)){
				SecretColor = 11;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
			
			// Inverted - Alt Color Right + Taunt + Attack
			if (!up_down && !down_down && !left_down && right_down && !jump_down && (attack_down || special_down)){
				SecretColor = 12;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}		
		
		if (ColorLocked){
			sound_play(asset_get("mfx_confirm"));
		}
	}
}//#endregion