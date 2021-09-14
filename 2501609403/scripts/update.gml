//update
user_event(14);

if (state == PS_DASH){
    if (state_timer == 1) sound_play(sound_get("crackling"), true);
} else if (state == PS_DASH_TURN){
	if (state_timer == 1) sound_stop(sound_get("crackling"));
	if (state_timer == 2) sound_play(sound_get("crackling"), true);
} else sound_stop(sound_get("crackling"));

var _block = asset_get("par_block");
if state == PS_DOUBLE_JUMP {
    if (place_meeting(x, y + 1, _block) || place_meeting(x, y - 1, _block)) {
    print_debug("lol")
    }
}

//fstrong stuff

if (attack != AT_FSTRONG || attack == AT_FSTRONG && window == 1 && window_timer == 1){
	fstrong_counter = 0;
	fstrong_glow = false;
	fstrong_no_glow = false;
	fstrong_glow_count = 0;
	fstrong_cancel = false;
}

if (fstrong_glow_count > 0){
	fstrong_glow_count -= 1;
}

if (fstrong_glow_count >= 9){
	sound_play(asset_get("sfx_zetter_shine"));
}

if (fstrong_glow_count == 1){
	fstrong_cancel = true;
}

if (attack == AT_FSTRONG){
	if (fstrong_glow == true){
		fstrong_glow = false
		fstrong_no_glow = true
		fstrong_glow_count = 10;
	}
}


//Movement Sound Effects
if (state != PS_DASH_START) || (state != PS_IDLE){
    dash_sfx = true;
}

if state == PS_DASH_START {
    if state_timer == 1{
        if (dash_sfx == true){
            dash_sfx = false;
        }
    }
    if state_timer >= 1{
        dash_sfx = false;
    }
}

if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) {
    if state_timer == 22{
        sound_play(asset_get("sfx_bite"))
    }
}

//Wacky Double JUmp
if (state == PS_DOUBLE_JUMP && djumps == 2){
    if state_timer == 1{
        vsp = -5
    }
    if state_timer == 7{
        vsp = 10
        sound_play(asset_get("sfx_jumpair"))
    }
    if state_timer == 13{
        vsp = -10
        sound_play(asset_get("sfx_jumpair"))
    }
    if state_timer == 20{
        vsp = 10
        sound_play(asset_get("sfx_jumpair"))
    }
    if state_timer == 26{
        vsp = -16
        sound_play(asset_get("sfx_jumpair"))
    }
}
//Vfx Stuff
with (hit_fx_obj)
  if (hit_fx == other.fx_walk)
    depth = -10;

if (state == PS_CROUCH){
	if(right_down)
	{
        hsp = 2
	}
	if(left_down)
	{
	    hsp = -2
	}
}

if dtilt_end && (state != PS_ATTACK_GROUND || attack != AT_DTILT || window == 1) {
    x += spr_dir_prev*dtilt_offset[0];
    y -= dtilt_offset[1];
    set_state(PS_IDLE_AIR);
    set_num_hitboxes(AT_DTILT, 1);
    reset_attack_value(AT_DTILT, AG_NUM_WINDOWS);
    reset_window_value(AT_DTILT, 3, AG_WINDOW_TYPE);
    reset_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH);
    reset_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX);
    reset_window_value(AT_DTILT, 3, AG_WINDOW_SFX);
    reset_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES);
    reset_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START);
    dtilt_end = false;
    dtilt_start = false;
}

if spr_dir_prev != spr_dir spr_dir_prev = spr_dir;
//Nspecial Stuff
rage_damage = get_player_damage( player );
if rage_damage >= 100 {
	rage_damage = 100
}

//Jackpot Stuff
//Timer
if (jackpot_shading == true){
	jackpot_timer += 1;
	if jackpot_timer >= 12{
		jackpot_shading = false;
		jackpot_timer = 0;
	}
}
//Outline
if (jackpot_shading == true) 
{
    if(jackpot_timer <= 4 || jackpot_timer >= 8){
    	init_shader();
        outline_color = [ 249, 189, 43 ];
    }
}

if (jackpot_shading == false){
	init_shader();
    outline_color = [ 0, 0, 0 ];
}

if (jackpot_number == 8){
	jackpot = true;
} else {
	jackpot = false;
}

if (!free){
	move_cooldown[AT_DAIR] = 0;
}

//Walk VFX
if(state == PS_WALK){
	draw_indicator = false
    if(state_timer % 10 == 5){
    	walkfx_location = random_func( 40, 60, true );
    	if (spr_dir == 1){
        	spawn_hit_fx((x), y, fx_walk);
    	}
        if (spr_dir == -1){
        	spawn_hit_fx((x), y, fx_walk);
        }
        x += 40*spr_dir
    }
}

if (state == PS_HITSTUN){
	with(asset_get("oPlayer")){
    	if (id != other.id){
        	visible = true
    	}
	}
	super_armor = false
}
//Funny Dash
if (state == PS_DASH_START){
	funny_dash += 1;
	if (funny_dash == 40){
		sound_play(asset_get("sfx_coin_collect"))
		dash_speed = 14;
		air_accel = .4;
		air_max_speed = 6.5;
		jump_speed = 13;
		short_hop_speed = 8;
		funny_fx = 1;
	} if (funny_dash == 80){
		sound_play(asset_get("sfx_coin_collect"))
		dash_speed = 15;
		air_accel = .5;
		air_max_speed = 7;
		jump_speed = 14;
		short_hop_speed = 9;
		funny_fx = 2;
	} if (funny_dash == 120){
		sound_play(asset_get("sfx_coin_collect"))
		dash_speed = 17;
		air_accel = .58;
		jump_speed = 15;
		air_max_speed = 7.5;
		short_hop_speed = 9.5;
		funny_fx = 3;
	} if (funny_dash == 1000){
		sound_play(asset_get("sfx_coin_collect"))
		dash_speed = 50;
		jump_speed = 100;
		short_hop_speed = 100;
		funny_fx = 4;
	}
}
//Remove Charge if you do an attack or in idle for too long
if (state == PS_IDLE && state_timer >= 3 || attack_pressed || special_pressed || right_strong_pressed || down_strong_pressed
|| up_strong_pressed || left_strong_pressed){
	funny_dash = 0;
}
//Change Stats
if funny_dash = 0 {
	dash_speed = 13;
	air_max_speed = 6;
	air_accel = .3;
	jump_speed = 11.4;
	short_hop_speed = 7;
}
if (state_cat == SC_AIR_NEUTRAL && funny_dash > 1 || state == PS_DASH && funny_dash > 1){
	funny_dash -= 2;
}
//Funny Fx
if (funny_fx >= 1){
	if (state == PS_FIRST_JUMP && state_timer == 1){
		spawn_hit_fx(x,y,fx_funny1)
		funny_fx = 0;
	} if (state == PS_DASH && state_timer == 1){
		//spawn_hit_fx(x,y,fx_funny2)
		funny_fx = 0;
	}
}

//Hud Anims
if (store_timer > 0){
	store_timer--;
} if (store_timer2 < 10){
	store_timer2++;
}

//Ani Alt
ani_x = view_get_xview()
ani_y = view_get_yview()


//Grab stuff
if (state_cat == SC_HITSTUN){
	grabbed_player_obj = noone;
	sound_stop(sound_get("dance"))
}
//Visual Effects
//EXplosion