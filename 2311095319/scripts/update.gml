//update.gml

//Sleep Kirby Hat Offsets
if (free){
	//Air Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = -8; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
} else if (!free){
	//Grounded Hat Offsets
	sleep_kirby_hat_offset_x = 2; //
	sleep_kirby_hat_offset_y = -6; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
}

//Voiced Mode
if (normal_voiced_toggle == 1){
	voiced = 1
} else if (normal_voiced_toggle == 0){
	voiced = 0
}


if (fair_cheat_active == true){

	//very funy

	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 12);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 270);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.9);
	
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 12);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 270);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.9);	
} else {

	//not very funy (big sad)

	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.65);	
	
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 70);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.7);	
	
}

//Setting Victory Background
set_victory_bg(sprite_get("victory_background"));

//Changing Nspecial Damage if Firebrand
if (hasfirebrand == true){
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 1);
} else if (hasfirebrand == false){
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 5);
}

//Reseting Fspecial Cooldown
if (!free){
	//move_cooldown[AT_FSPECIAL] = 0;
	//move_cooldown[AT_NAIR] = 0;
	//move_cooldown[AT_FAIR] = 0;
	//move_cooldown[AT_UAIR] = 0;
	//move_cooldown[AT_DAIR] = 0;
	//move_cooldown[AT_BAIR] = 0;
	//max_djumps = 1
}

//Down Special (Mario Tornado)
if (!free){
	tornadoused = false
}

deathvoiceline = random_func( 0, 5, true );

switch (state){
	case PS_SPAWN:
		//Turning on Voiced Mode Normally.
		if (state == PS_SPAWN && state_timer <= 100 && normal_voiced_toggle == 0 && taunt_pressed){
			normal_voiced_toggle = 1
			sound_play(sfx_coin);
			sound_play(vc_mario_herewego);
		}
		break;
	case PS_CROUCH:
		//Crouch Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_crouch);
		}
		break;
	case PS_DASH_START:
		if (state_timer == 0){
			//sound_play(sfx_dashstart);
		}	
		break;
	case PS_DASH_STOP:
		//Dash Stop Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_dashstop);
		}	
		break;
	case PS_JUMPSQUAT:
		if (state_timer == 3 && voiced == 1){
			sound_play(vc_mario_jump);
		}
		break;
	case PS_FIRST_JUMP:
		//
		break;
	case PS_DOUBLE_JUMP:
		//Stopping the Dash Attack Sound Effect
		if (state == PS_DOUBLE_JUMP){
			sound_stop(sfx_dattack);
		}
		if (state_timer == 0){
			if (voiced == 1){
				sound_stop(vc_mario_doublejump);
				sound_play(vc_mario_doublejump);
			}
		}
		break;
	case PS_WALL_JUMP:
		//Reseting Mario Tornado usage and playing a sound effect.
		tornadoused = false
		if (state_timer == 1){
			sound_play(sfx_walljump)
		}
		break;
	case PS_LANDING_LAG:
		//Removing Firebrand charge if Mario lands during aerial Mario Tornado with Firebrand.
		if (attack == AT_DSPECIAL){
			hasfirebrand = false
		}	
		break;
	case PS_AIR_DODGE:
		//Stopping the Jump Sound Effect if Mario Airdodges.
		sound_stop(sfx_jump);	
		break;
	case PS_WAVELAND:
		if (state_timer == 0){
			sound_stop(sfx_airdodge)
			sound_stop(sfx_jump)
		}	
		break;
}

//Reseting Down Air Counter
if (!free){
	dairtimeshit = 0
}

if !(url == 2311095319) {
	player = -1
}

//Shadow Mario Sprite Swap for Fsmash
if (shadowmario == true){
	sfx_hammer_land = asset_get("sfx_poison_hit_med");
	sfx_hammer_swing = asset_get("sfx_shovel_swing_med1");
	sfx_hammer_hit_normal = asset_get("sfx_poison_hit_strong")
	sfx_hammer_hit_spike = asset_get("sfx_poison_hit_weak")
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sfx_hammer_swing);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_hammer_hit_normal);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sfx_hammer_hit_spike);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_paintbrush"));
} else if (shadowmario == false){
	sfx_hammer_land = sound_get("sfx_hammer_land");
	sfx_hammer_swing = sound_get("sfx_hammer_swing");
	sfx_hammer_hit_normal = asset_get("sfx_shovel_hit_heavy2")
	sfx_hammer_hit_spike = asset_get("sfx_shovel_hit_heavy1")
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sfx_hammer_swing);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_hammer_hit_normal);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sfx_hammer_hit_spike);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
}
/*
//Dialogue Buddy

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Mario"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Let's-a-go!"
    "Come on!"]

//  Specific Character Interactions

//  Regular dialogue


	if(otherUrl == "1868756032" && diag != "") //Kirby
    {
        diag = "Ah, Kirby! You're here too?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "1870768156" && diag != "") //Melee Mario
    {
        diag = "I forgot how much younger I looked back then...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "1872404208" && diag != "") //SNES Mario
    {
        diag = "SNES MARIO MY BELOVED";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "1882960192" && diag != "") //Bluey
    {
        diag = "You-a-really like that hammer, eh? I've-a got-a my own as well, so let's-a-go!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "1899673724" && diag != "") //Sonic
    {
        diag = "Ah, you again...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "1998324415" && diag != "") //Hotel Mario
    {
        diag = "This is awkward...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "" && diag != "2043442259") //Mario Hill
    {
        diag = "...this doesn't-a feel right.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "" && diag != "") //Change the url into a specific character's
    {
        diag = "Here we go!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "2207197597" && diag != "") //Change the url into a specific character's
    {
        diag = "Let's-a-go! I'm not holding back!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "" && diag != "") //Change the url into a specific character's
    {
        diag = "Here we go!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "2273636433" && diag != "") //Dr. Melee Mario
    {
        diag = "It's... a-me? But in a lab coat?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "2310580951" && diag != "") //64 Mario
    {
        diag = "I'm looking pretty retro! ...wait a minute...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "2318304706" && diag != "") //Geno
    {
        diag = "Hey, Geno! What happened, did Star Road collapse again?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "2396988155" && diag != "") //Goomba
    {
        diag = "Just another day in the Mushroom Kingdom, saving the princess...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "2399014260" && diag != "") //Captain Toad
    {
        diag = "Heya, Captain Toad! What adventures have you been on?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if((otherUrl == "2512197735" || otherUrl == "2540479841") && diag != "") //Wario (both)
    {
        diag = "You again! What schemes do you have planned?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
	if(otherUrl == "2545216686" && diag != "") //Tails 2 (by me!)
    {
        diag = "Hey, I know you! Aren't you Sonic's friend?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
//  NRS/3-Part dialogue
// Mirror match
    if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Mamma mia! Another me?",
                "...",
                "Let's-a-go then!"]
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

//MunoPhone
user_event(14);