if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 20) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if(state == PS_DOUBLE_JUMP && state_timer == 0){
    spawn_hit_fx( x, y, bubblejump)
    sound_play( asset_get( "sfx_bubblemouth" ))
}

if(state == PS_DOUBLE_JUMP){
	if(state_timer == 4){
		torga_grav_jump = 1
	}
	if(state_timer == 1){
	    if(left_down){
	    	hsp = -6.5
	    }else if(right_down){
	    	hsp = 6.5
	    }else{
	    	hsp = 0
	    }
	}
    if(state_timer < 1){
    	vsp = 1
    	double_jump_timer = 20
    }
    if(state_timer < 4){
    	move_cooldown[AT_USPECIAL] = 2
    }
}

if(state != PS_DOUBLE_JUMP && state != PS_ATTACK_AIR){
	double_jump_timer = 0
}else if(state == PS_ATTACK_AIR){
	if(state_timer < 2 && !jump_down){
		double_jump_timer = 0
	}
}

if(double_jump_timer > 0 && !hitpause && free){
	vsp -= 1.03
	double_jump_timer -= 1
}else if(!free){
	double_jump_timer = 0
}

if (torga_grav_jump == 1) {
    torga_grav_jump = 0;
    if (fast_falling && djumps > 0) djumps--;
}

if (state == PS_DOUBLE_JUMP && check_fast_fall && djumps > 0) epinel_grav_jump = 1;

if(attack != AT_DSTRONG || window == 0){
	if(grabbedid != noone){
		grabbedid.ungrab = 1
        grabbedid.state = PS_TUMBLE;
		grabbedid = noone
	}
}

if(state == PS_DOUBLE_JUMP && state_timer < 2){
    if(left_down){
        doublejumpVar = -1
    }
    if(right_down){
        doublejumpVar = 1
    }
}

if(vsp > 0 || state == PS_IDLE || state == PS_IDLE_AIR){
    doublejumpVar = 0
}

waterCutterExist -= 1

if(attack == AT_NSPECIAL_2 && window > 1){
	can_fast_fall = false
}else{
	can_fast_fall = true
}

if(!free){
	uspecVar = 1
	fspecVar = 2
	dspecFlying = false
	//emergencyCount = 0
}

if(waterLevel > 99 && waterCharges < 3){
	waterLevel = 0
	waterCharges += 1
	sound_play(asset_get("sfx_watergun_fire"))
}

if(waterCharges >= 3){
	waterLevel = 0
}
if(waterCharges > 3){
	waterCharges = 0
}else if(waterCharges < 0){
	waterCharges = 0
}

if(waterLevel > 100){
	waterLevel = 100
}else if(waterLevel < 0){
	waterLevel = 0
}

if(window == 0){
	strongAttack = false
}

/*
if(waterCharges > 0){
	waterLevelEmergency = 0
}else{
	if(emergencyCount < 2){
		if(waterLevelEmergency <= 7){
			waterLevelEmergency += 0.015
		}
	}else{
		waterLevelEmergency = 8
	}
}

if(waterLevelEmergency > 0){
	if(state == PS_PRATFALL || state == PS_PRATLAND){
		waterLevelEmergency = 0
	}
}
*/

//torga kirby
if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirb");
	var ability_hurt = sprite_get("kirb_hurt");
	var myicon = sprite_get("torgakirbyicon")
	
	with enemykirby{
		newicon = myicon
		sprite_change_offset("kirb", 80, 100);
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_waterwarp"));
                
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
                
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_waterhit_weak"));
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
                
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1)
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.42);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 110);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 110);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6.2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.55);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
	}
}
if(enemykirby != undefined){
	with (oPlayer){
		if(state == PS_ATTACK_AIR && attack == AT_EXTRA_3|| state == PS_ATTACK_GROUND && attack == AT_EXTRA_3){
			if(window == 2 && state_timer > 100){
				window = 3
				window_timer = 0
				vsp = -3
				move_cooldown[AT_EXTRA_3] = 100
				move_cooldown[AT_NSPECIAL] = 100
			}else if(window == 2 && state_timer > 16 && !special_down){
				window = 3
				window_timer = 0
				vsp = -3
				move_cooldown[AT_EXTRA_3] = 100
				move_cooldown[AT_NSPECIAL] = 100
			}
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6.2 + state_timer / 20);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2 + state_timer / 200);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7 + state_timer / 20);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.55 + state_timer / 200);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7 + state_timer / 20);
		}
	}
}

if(state == PS_WALL_JUMP){
	move_cooldown[AT_USPECIAL] = 0
}

if(state == PS_DOUBLE_JUMP){
	has_djump = false
}
if(!free || djumps <= 0){
	has_djump = true
}

//Dialogue Buddy

/*

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Torga"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Your final moments will be here, I am going to end this.",
    "The temple was my home, and I hope you find yours 6 feet under",
    "We can do this the easy way, or the hard way... the hard way it is"]

//  Specific Character Interactions

//  NRS/3-Part dialogue
    //Galega
    if(otherUrl == 2538321255) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "You abandoned your post, for this?",
                "Oh come on, you can't tell me this isn't fun",
                "People need you, you're going back to that temple dead or alive."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
}
*/

if(halloween == true){
    if(state != PS_IDLE && state != PS_SPAWN){
        halloween = false
        var hall_end = spawn_hit_fx(x, y, halloween_end)
        hall_end.spr_dir = spr_dir
    }
}

uspec_non--