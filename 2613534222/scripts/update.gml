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

if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	char_height = 52;
}

if(!tap_jump_protection_enabled){
    if(state == PS_DOUBLE_JUMP){
        dj_state_timer = state_timer;
        is_double_jump = true;
    }else{
        is_double_jump = false;
        dj_state_timer = 0;
    }
}

if(state == PS_TUMBLE){ // TUMBLE UAIR AUTOCANCEL
    if(( (strong_down or attack_down) and up_down) or up_stick_down){
        set_attack(AT_UAIR);
    }
}

if(state == PS_JUMPSQUAT){
    is_jumpsquat = true;
    move_cooldown[AT_UTILT] = 1;
}else{
    is_jumpsquat = false;
}

//neutral strong buffer
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

//---------------------------- END SSL TEMPLATE --------------------------------

if(free and state != PS_RESPAWN and state_cat != SC_HITSTUN and down_pressed and !fast_falling and !(state == PS_DOUBLE_JUMP and state_timer < 9) and state != PS_PRATFALL){
	vsp = 0;
	do_a_fast_fall = true;
}

if(state == PS_PRATFALL){
	can_fast_fall = true;
}

shadowball_hit_timer--;
if(shadowball_hit_player!=noone and shadowball_hit_player.state == PS_DEAD){
	shadowball_hit_timer = 0;
	shadowball_hit = false;
}

//mute base game sounds
switch(state){
    case PS_WALL_JUMP:
        sound_stop(asset_get("sfx_jumpwall"));
        if(state_timer == 1){
        	sound_play(sound_get("land"));
			sound_play(sound_get("jump"));
		}
        break;
    case PS_DASH_START:
    	sound_play(sound_get("dash"));
        sound_stop(asset_get("sfx_dash_start"));
       break;
    case PS_DEAD:
    case PS_RESPAWN:
    	sound_stop(asset_get("sfx_death1"));
    	sound_stop(asset_get("sfx_death2"));
}

var level = sound_get("level_up");
with(oPlayer){
	if(state == PS_RESPAWN and state_timer == 2 and last_player == other.player){
		sound_play(level);
		other.display_level = 60;
	}
}

if(display_level > 0){
	display_level--;
}