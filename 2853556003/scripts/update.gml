//Revert all height changes
if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	char_height = 44;
}

//No more grabbedid
if(state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_HITSTUN || state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	grabbedid = noone
}

//No MoRe WaTeRbOmB
if(waterBomb_charge_stun > 0){
	move_cooldown[AT_NSPECIAL] = 120
	waterBomb_charge_stun -= 1
}

//Dspecial once midair
if(dspecial_used){
	if(move_cooldown[AT_DSPECIAL] < 2){
		move_cooldown[AT_DSPECIAL] = 2
	}
}

//All "when grounded" stuff
if(!free){
	dspecial_used = false
}

//stop slowed down bomb
if(!(attack == AT_USPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) && !(attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))){
	if(instance_exists(waterBomb)){
		waterBomb.slow = false
	}
}

//All DJ stuff
if(state == PS_DOUBLE_JUMP){
	var waterfx = spawn_hit_fx(x + (25 - random_func_2(1, 50, true)), (y - 30) + (25 - random_func_2(2, 50, true)), vfx_waterfx_small)
}else if(double_jump_timer > 0){
	var waterfx = spawn_hit_fx(x + (25 - random_func_2(1, 50, true)), (y - 30) + (25 - random_func_2(2, 50, true)), vfx_waterfx_small)
}

if(double_jump_timer > 0){
	if(vsp < 2){
		djumps = 1
	}else{
		djumps = 0 
	}
}

if(move_cooldown[AT_DSPECIAL] == 1){
    bead_thump = 6
    sound_play(sound_get("sfx_watershield"))
}

if(state == PS_DOUBLE_JUMP){
	if(state_timer == 0){
		sound_play(asset_get("sfx_bubblemouth"))
		double_jump_timer = 20
    	vsp = 2
    	has_djump = false
	}
	if(state_timer == 4){
		torga_grav_jump = 1
	}
	if(state_timer == 1){
	    if(left_down){
	    	hsp = -6
	    }else if(right_down){
	    	hsp = 6
	    }else{
	    	hsp = 0
	    }
	}
    if(state_timer < 2){
    	if(down_pressed){
			vsp = 8
		}
		if(left_down){
    		doublejumpVar = -1
	    }
	    if(right_down){
	        doublejumpVar = 1
	    }
    }
}

if(state != PS_DOUBLE_JUMP && state != PS_ATTACK_AIR){
	double_jump_timer = 0
}else if(state == PS_ATTACK_AIR){
	if(state_timer < 2 && !jump_down && !(can_tap_jump() && up_down)){
		double_jump_timer = 0
	}
}

if(double_jump_timer > 0 && !hitpause && free){
	if(has_rune("L") || all_runes){
		vsp -= 1.25
	}else{
		vsp -= 1.05
	}
	double_jump_timer -= 1
}else if(!free){
	double_jump_timer = 0
}

//Airdodge FX
if(state == PS_AIR_DODGE && !(hsp == 0 && vsp == 0)){
	var waterfx = spawn_hit_fx(x + (20 - random_func_2(1, 40, true)), (y - 36) + (20 - random_func_2(2, 40, true)), vfx_waterfx_small)
}

//Waterbomb recharge outline fx + outline color stuff
if(move_cooldown[AT_NSPECIAL] == 1){
    col_r_outline = col_r_2 + 20
    col_g_outline = col_g_2 + 20
    col_b_outline = col_b_2 + 20
}

outline_color = [col_r_outline, col_g_outline, col_b_outline]

//All runes outline
if(all_runes){
	outline_color = [255, 255, 255]
}

if(state == PS_PRATFALL){
	if(attack == AT_USPECIAL){
		can_fast_fall = false
	}
}

init_shader();

if(col_r_outline != 0 || col_b_outline != 0 || col_g_outline != 0){
	col_r_outline = lerp(col_r_outline, 0, 0.1)
	col_g_outline = lerp(col_g_outline, 0, 0.1)
	col_b_outline = lerp(col_b_outline, 0, 0.1)
}

if(state == PS_WALL_JUMP || !free){
	has_used_fspecial = false
}

if(!free){
	has_djump = true
}

//Uspecial Change
if(!(attack == AT_USPECIAL && state == PS_ATTACK_AIR) && !(attack == AT_USPECIAL && state == PS_ATTACK_AIR)){
	if(instance_exists(waterBomb) && waterBomb.current_owner == player || instance_exists(hurricane) && hurricane.current_owner == player){
		if(instance_exists(waterBomb) && waterBomb.state == 1){
			set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial")); 
			can_teleport = true
		}else if(!instance_exists(waterBomb) && instance_exists(hurricane)){
			if(hurricane.holding_bomb){
				set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
				can_teleport = true
			}else{
				set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_non"));
				can_teleport = false
			}
		}else{
			set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_non"));
			can_teleport = false
		}
	}else{
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_non"));
		can_teleport = false
	}
}

//Torga Balling
if(state == PS_SPAWN || not_moved){
	if(taunt_pressed && !torga_balling && switch_timer <= 0){
		sound_play(asset_get("mfx_coin"))
		spawn_hit_fx(x, y - 20, 111)
		switch_timer = 10
		torga_balling = true
	}else if(taunt_pressed && torga_balling && switch_timer <= 0){
		sound_play(asset_get("mfx_coin"))
		spawn_hit_fx(x, y - 20, 109)
		switch_timer = 10
		torga_balling = false
	}
}

//Alt Bypass
if(state == PS_SPAWN || not_moved){
	if(state == PS_PARRY || state == PS_PARRY_START){
		state = PS_IDLE
	}
	if(get_player_color(player) == 11){
		if(bypass_sounds && shield_pressed && switch_timer <= 0){
			bypass_sounds = false
			sounds_changed = true
			switch_timer = 10
			sound_play(sound_get("sfx_sonic"))
			spawn_hit_fx(x, y - 20, 109)
		}else if(!bypass_sounds && shield_pressed && switch_timer <= 0){
			bypass_sounds = true
			switch_timer = 10
			sounds_changed = true
			sound_play(asset_get("mfx_back"))
			spawn_hit_fx(x, y - 20, 111)
		}
	}
}

//+ Alt Bypass
if(get_player_color(player) == 11 && !bypass_sounds && sounds_changed){
	
	sfx_punch_blow_weak1 = sound_get("sfx_punch_weak1")
	sfx_punch_blow_weak2 = sound_get("sfx_punch_weak2")
	sfx_punch_blow_medium1 = sound_get("sfx_punch_medium1")
	sfx_punch_blow_medium2 = sound_get("sfx_punch_medium2")
	sfx_punch_blow_medium3 = sound_get("sfx_punch_medium1")
	sfx_punch_blow_heavy1 = sound_get("sfx_punch_heavy1")
	sfx_punch_blow_heavy2 = sound_get("sfx_punch_heavy1")
	
	sfx_kick_blow_weak1 = sound_get("sfx_kick_weak1")
	sfx_kick_blow_weak2 = sound_get("sfx_kick_weak1")
	sfx_kick_blow_medium1 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_medium2 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_medium3 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_heavy1 = sound_get("sfx_kick_heavy1")
	sfx_kick_blow_heavy2 = sound_get("sfx_kick_heavy1")
	
	sfx_waterhit_weak = sound_get("sfx_buzz_weak1")
	sfx_waterhit_weak2 = sound_get("sfx_buzz_weak1")
	sfx_waterhit_medium = sound_get("sfx_buzz_medium1")
	sfx_waterhit_heavy = sound_get("sfx_buzz_heavy1")
	sfx_waterhit_heavy2 = sound_get("sfx_buzz_heavy1")
	
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sfx_kick_blow_medium1);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sfx_kick_blow_heavy1);
	
	set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, sfx_kick_blow_medium3);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sfx_kick_blow_medium2);
	set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sfx_kick_blow_medium1);
	
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sfx_kick_blow_medium2);
	
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sfx_punch_blow_weak2);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sfx_punch_blow_weak1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sfx_waterhit_weak);
	
	set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sfx_punch_blow_medium2);
	
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sfx_kick_blow_weak1);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sfx_kick_blow_medium2);
	
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sfx_kick_blow_medium1);
	
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sfx_kick_blow_heavy1);
	
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sfx_waterhit_heavy);
	
	sounds_changed = false
}else if(get_player_color(player) == 11 && bypass_sounds && sounds_changed){

	sfx_punch_blow_weak1 = asset_get("sfx_blow_weak1")
	sfx_punch_blow_weak2 = asset_get("sfx_blow_weak2")
	sfx_punch_blow_medium1 = asset_get("sfx_blow_medium1")
	sfx_punch_blow_medium2 = asset_get("sfx_blow_medium2")
	sfx_punch_blow_medium3 = asset_get("sfx_blow_medium3")
	sfx_punch_blow_heavy1 = asset_get("sfx_blow_heavy1")
	sfx_punch_blow_heavy2 = asset_get("sfx_blow_heavy2")
	
	sfx_kick_blow_weak1 = asset_get("sfx_blow_weak1")
	sfx_kick_blow_weak2 = asset_get("sfx_blow_weak2")
	sfx_kick_blow_medium1 = asset_get("sfx_blow_medium1")
	sfx_kick_blow_medium2 = asset_get("sfx_blow_medium2")
	sfx_kick_blow_medium3 = asset_get("sfx_blow_medium3")
	sfx_kick_blow_heavy1 = asset_get("sfx_blow_heavy1")
	sfx_kick_blow_heavy2 = asset_get("sfx_blow_heavy2")
	
	sfx_waterhit_weak = sound_get("sfx_waterhit_weak")
	sfx_waterhit_weak2 = sound_get("sfx_waterhit_weak2")
	sfx_waterhit_medium = sound_get("sfx_waterhit_medium")
	sfx_waterhit_heavy = sound_get("sfx_waterhit_heavy")
	sfx_waterhit_heavy2 = sound_get("sfx_waterhit_heavy2")
	
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sfx_kick_blow_medium1);
	set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sfx_kick_blow_heavy1);
	
	set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, sfx_kick_blow_medium3);
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sfx_kick_blow_medium2);
	set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sfx_kick_blow_medium1);
	
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sfx_kick_blow_medium2);
	
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sfx_waterhit_heavy);
	
	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sfx_punch_blow_weak2);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sfx_waterhit_weak);
	set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sfx_waterhit_medium);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sfx_punch_blow_weak1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sfx_waterhit_medium);
	set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sfx_waterhit_weak);
	
	set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sfx_punch_blow_medium2);
	
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sfx_kick_blow_weak1);
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sfx_kick_blow_medium2);
	
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sfx_kick_blow_medium1);
	
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sfx_kick_blow_heavy1);
	
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sfx_punch_blow_medium1);
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sfx_waterhit_heavy);
	
	sounds_changed = false
}

//Not Moved
if(not_moved && state != PS_SPAWN){
	can_taunt = false
	if(state != PS_IDLE || !joy_pad_idle){
		not_moved = false
	}
}


//DJ Stuff
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

if (torga_grav_jump == 1) {
    torga_grav_jump = 0;
    if (fast_falling && djumps > 0) djumps--;
}

if(bomb_hurricane){
	if(instance_exists(waterBomb) && instance_exists(hurricane)){
		if(waterBomb.current_owner == player){
			waterBomb.x = hurricane.x
			waterBomb.y = hurricane.y
		}else{
			bomb_hurricane = false
		}
	}else if(!instance_exists(waterBomb)){
		bomb_hurricane = false
	}
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

//Runes
if(has_rune("B") || all_runes){
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 2);
}else{
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
}
if(has_rune("M") || all_runes){
	if(instance_exists(waterBomb)){
		waterBomb.strong = true 
		waterBomb.damage = 8
	}
}

//SS

if(secret_skins == true){

// White
set_color_profile_slot( 1, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 1, 1, 255, 210, 0 ); //Liquid
set_color_profile_slot( 1, 2, 184, 180, 163 ); //Skin
set_color_profile_slot( 1, 3, 48, 46, 39 ); //Shell
set_color_profile_slot( 1, 4, 105, 98, 61 ); //Beads
set_color_profile_slot( 1, 5, 255, 210, 0 ); //Book

// Brownish
set_color_profile_slot( 2, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 2, 1, 157, 255, 0 ); //Liquid
set_color_profile_slot( 2, 2, 184, 189, 178 ); //Skin
set_color_profile_slot( 2, 3, 34, 36, 31 ); //Shell
set_color_profile_slot( 2, 4, 89, 107, 63 ); //Beads
set_color_profile_slot( 2, 5, 157, 255, 0 ); //Book

// Red
set_color_profile_slot( 3, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 3, 1, 0, 255, 119 ); //Liquid
set_color_profile_slot( 3, 2, 161, 191, 175 ); //Skin
set_color_profile_slot( 3, 3, 35, 41, 38 ); //Shell
set_color_profile_slot( 3, 4, 58, 92, 75 ); //Beads
set_color_profile_slot( 3, 5, 0, 255, 119 ); //Book

// Blue
set_color_profile_slot( 4, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 4, 1, 0, 234, 255 ); //Liquid
set_color_profile_slot( 4, 2, 151, 178, 181 ); //Skin
set_color_profile_slot( 4, 3, 45, 55, 56 ); //Shell
set_color_profile_slot( 4, 4, 65, 107, 107 ); //Beads
set_color_profile_slot( 4, 5, 0, 234, 255 ); //Book

// Purple/Yellow
set_color_profile_slot( 5, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 5, 1, 0, 34, 255 ); //Liquid
set_color_profile_slot( 5, 2, 153, 158, 189 ); //Skin
set_color_profile_slot( 5, 3, 48, 49, 59 ); //Shell
set_color_profile_slot( 5, 4, 62, 67, 107 ); //Beads
set_color_profile_slot( 5, 5, 0, 34, 255 ); //Book

// Green
set_color_profile_slot( 6, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 6, 1, 200, 0, 255 ); //Liquid
set_color_profile_slot( 6, 2, 180, 158, 186 ); //Skin
set_color_profile_slot( 6, 3, 59, 48, 55 ); //Shell
set_color_profile_slot( 6, 4, 100, 66, 110 ); //Beads
set_color_profile_slot( 6, 5, 200, 0, 255 ); //Book

// Black/Red
set_color_profile_slot( 7, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 7, 1, 255, 0, 170 ); //Liquid
set_color_profile_slot( 7, 2, 181, 148, 170 ); //Skin
set_color_profile_slot( 7, 3, 59, 46, 54 ); //Shell
set_color_profile_slot( 7, 4, 97, 58, 86 ); //Beads
set_color_profile_slot( 7, 5, 255, 0, 170 ); //Book

// Purple/Green
set_color_profile_slot( 8, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 8, 1, 255, 0, 0 ); //Liquid
set_color_profile_slot( 8, 2, 191, 167, 167 ); //Skin
set_color_profile_slot( 8, 3, 46, 38, 38 ); //Shell
set_color_profile_slot( 8, 4, 89, 62, 62 ); //Beads
set_color_profile_slot( 8, 5, 255, 0, 0 ); //Book

// Ranno
set_color_profile_slot( 9, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 9, 1, 255, 136, 0 ); //Liquid
set_color_profile_slot( 9, 2, 135, 218, 229 ); //Skin
set_color_profile_slot( 9, 3, 28, 38, 69 ); //Shell
set_color_profile_slot( 9, 4, 122, 106, 89 ); //Beads
set_color_profile_slot( 9, 5, 255, 136, 0 ); //Book

// BLW
set_color_profile_slot( 10, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 10, 1, 255, 145, 0 ); //Liquid
set_color_profile_slot( 10, 2, 105, 90, 88 ); //Skin
set_color_profile_slot( 10, 3, 166, 125, 0 ); //Shell
set_color_profile_slot( 10, 4, 212, 181, 171 ); //Beads
set_color_profile_slot( 10, 5, 0, 54, 0 ); //Book

// Guile
set_color_profile_slot( 11, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 11, 1, 255, 210, 0 ); //Liquid
set_color_profile_slot( 11, 2, 219, 171, 147 ); //Skin
set_color_profile_slot( 11, 3, 31, 69, 31 ); //Shell
set_color_profile_slot( 11, 4, 74, 64, 48 ); //Beads
set_color_profile_slot( 11, 5, 230, 255, 0 ); //Book

// Genesis
set_color_profile_slot( 12, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 12, 1, 224, 40, 52 ); //Liquid
set_color_profile_slot( 12, 2, 66, 59, 59 ); //Skin
set_color_profile_slot( 12, 3, 94, 89, 89 ); //Shell
set_color_profile_slot( 12, 4, 173, 173, 173 ); //Beads
set_color_profile_slot( 12, 5, 224, 40, 52 ); //Book

// Ocean
set_color_profile_slot( 13, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 13, 1, 0, 225, 255 ); //Liquid
set_color_profile_slot( 13, 2, 159, 206, 209 ); //Skin
set_color_profile_slot( 13, 3, 71, 63, 46 ); //Shell
set_color_profile_slot( 13, 4, 255, 214, 214 ); //Beads
set_color_profile_slot( 13, 5, 143, 135, 96 ); //Book

}else{
	
	// White
set_color_profile_slot( 1, 0, 185, 191, 251 ); //Cloth
set_color_profile_slot( 1, 1, 221, 234, 255 ); //Liquid
set_color_profile_slot( 1, 2, 164, 150, 148 ); //Skin
set_color_profile_slot( 1, 3, 91, 85, 73 ); //Shell
set_color_profile_slot( 1, 4, 109, 117, 141 ); //Beads
set_color_profile_slot( 1, 5, 180, 32, 42 ); //Book

// Brownish
set_color_profile_slot( 2, 0, 184, 111, 55 ); //Cloth
set_color_profile_slot( 2, 1, 65, 183, 222 ); //Liquid
set_color_profile_slot( 2, 2, 168, 131, 124 ); //Skin
set_color_profile_slot( 2, 3, 46, 48, 61 ); //Shell
set_color_profile_slot( 2, 4, 204, 173, 155 ); //Beads
set_color_profile_slot( 2, 5, 105, 37, 19 ); //Book

// Red
set_color_profile_slot( 3, 0, 92, 55, 55 ); //Cloth
set_color_profile_slot( 3, 1, 255, 94, 94 ); //Liquid
set_color_profile_slot( 3, 2, 148, 113, 113 ); //Skin
set_color_profile_slot( 3, 3, 48, 43, 43 ); //Shell
set_color_profile_slot( 3, 4, 163, 163, 163 ); //Beads
set_color_profile_slot( 3, 5, 112, 20, 26 ); //Book

// Blue
set_color_profile_slot( 4, 0, 182, 203, 209 ); //Cloth
set_color_profile_slot( 4, 1, 77, 225, 242 ); //Liquid
set_color_profile_slot( 4, 2, 166, 141, 151 ); //Skin
set_color_profile_slot( 4, 3, 145, 97, 114 ); //Shell
set_color_profile_slot( 4, 4, 176, 158, 158 ); //Beads
set_color_profile_slot( 4, 5, 255, 0, 217 ); //Book

// Purple/Yellow
set_color_profile_slot( 5, 0, 144, 102, 242 ); //Cloth
set_color_profile_slot( 5, 1, 255, 190, 43 ); //Liquid
set_color_profile_slot( 5, 2, 166, 162, 156 ); //Skin
set_color_profile_slot( 5, 3, 54, 46, 46 ); //Shell
set_color_profile_slot( 5, 4, 157, 156, 171 ); //Beads
set_color_profile_slot( 5, 5, 217, 103, 103 ); //Book

// Green
set_color_profile_slot( 6, 0, 74, 153, 102 ); //Cloth
set_color_profile_slot( 6, 1, 231, 240, 235 ); //Liquid
set_color_profile_slot( 6, 2, 186, 173, 173 ); //Skin
set_color_profile_slot( 6, 3, 46, 35, 32 ); //Shell
set_color_profile_slot( 6, 4, 176, 122, 81 ); //Beads
set_color_profile_slot( 6, 5, 255, 123, 0 ); //Book

// Black/Red
set_color_profile_slot( 7, 0, 255, 0, 0 ); //Cloth
set_color_profile_slot( 7, 1, 135, 135, 135 ); //Liquid
set_color_profile_slot( 7, 2, 179, 172, 172 ); //Skin
set_color_profile_slot( 7, 3, 13, 13, 13 ); //Shell
set_color_profile_slot( 7, 4, 207, 188, 188 ); //Beads
set_color_profile_slot( 7, 5, 107, 107, 107 ); //Book

// Purple/Green
set_color_profile_slot( 8, 0, 196, 122, 194 ); //Cloth
set_color_profile_slot( 8, 1, 0, 255, 156 ); //Liquid
set_color_profile_slot( 8, 2, 162, 156, 171 ); //Skin
set_color_profile_slot( 8, 3, 46, 61, 58 ); //Shell
set_color_profile_slot( 8, 4, 0, 0, 0 ); //Beads
set_color_profile_slot( 8, 5, 128, 0, 255 ); //Book

// Ranno
set_color_profile_slot( 9, 0, 255, 124, 0 ); //Cloth
set_color_profile_slot( 9, 1, 192, 241, 69 ); //Liquid
set_color_profile_slot( 9, 2, 56, 210, 229 ); //Skin
set_color_profile_slot( 9, 3, 58, 73, 134 ); //Shell
set_color_profile_slot( 9, 4, 252, 255, 234 ); //Beads
set_color_profile_slot( 9, 5, 119, 81, 224 ); //Book

// BLW
set_color_profile_slot( 10, 0, 240, 240, 240 ); //Cloth
set_color_profile_slot( 10, 1, 255, 205, 0 ); //Liquid
set_color_profile_slot( 10, 2, 105, 90, 88 ); //Skin
set_color_profile_slot( 10, 3, 166, 125, 0 ); //Shell
set_color_profile_slot( 10, 4, 255, 218, 206 ); //Beads
set_color_profile_slot( 10, 5, 0, 54, 0 ); //Book

// Guile
set_color_profile_slot( 11, 0, 166, 126, 100 ); //Cloth
set_color_profile_slot( 11, 1, 204, 255, 0 ); //Liquid
set_color_profile_slot( 11, 2, 255, 203, 179 ); //Skin
set_color_profile_slot( 11, 3, 92, 168, 88 ); //Shell
set_color_profile_slot( 11, 4, 219, 149, 18 ); //Beads
set_color_profile_slot( 11, 5, 230, 255, 0 ); //Book

// Genesis
set_color_profile_slot( 12, 0, 199, 30, 30 ); //Cloth
set_color_profile_slot( 12, 1, 255, 255, 255 ); //Liquid
set_color_profile_slot( 12, 2, 66, 59, 59 ); //Skin
set_color_profile_slot( 12, 3, 94, 89, 89 ); //Shell
set_color_profile_slot( 12, 4, 173, 173, 173 ); //Beads
set_color_profile_slot( 12, 5, 224, 40, 52 ); //Book

// Ocean
set_color_profile_slot( 13, 0, 166, 81, 81 ); //Cloth
set_color_profile_slot( 13, 1, 232, 255, 254 ); //Liquid
set_color_profile_slot( 13, 2, 123, 222, 227 ); //Skin
set_color_profile_slot( 13, 3, 224, 198, 152 ); //Shell
set_color_profile_slot( 13, 4, 255, 214, 214 ); //Beads
set_color_profile_slot( 13, 5, 143, 135, 96 ); //Book
}
switch_timer--