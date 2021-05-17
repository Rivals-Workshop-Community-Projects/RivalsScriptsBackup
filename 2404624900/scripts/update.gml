user_event(14);


    if (state == PS_RESPAWN){
        i_died = true;
    }
    else{
    i_died = false;
}

if (state == PS_DOUBLE_JUMP && state_timer == 7){
	if ((spr_dir == 1 && hsp >= 2) || (spr_dir == -1 && hsp <= 2) || hsp == 0){
		djump = 1;
	}
	if ((spr_dir == -1 && hsp > 2) || (spr_dir == 1 && hsp < 2) && hsp != 0){
		djump = -1;
	}
}

if (attack == AT_DSTRONG && window == 4){
	if (down_down){
		fall_through = true;
	}
	if (!down_down){
		fall_through = false;
	}
}

if (state == PS_PARRY && state_timer == 2){
	sound_play( sound_get( "parry" ) );
}

//Strong Charging
{


if (charge_cont >= 175){
	charge_cont = 0;
}

if (strong_charge >= 59){
	charge_cont++;
	strong_charge -= .996;
}

if (strong_max_cont > 300){
	strong_max = false;
	strong_charge = 59;
	strong_max_cont = 0;
}

if (strong_charge > 5 && strong_charge < 55 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
&& (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
	if (strong_max == false){
		max_reach = true;	
	}
    if (charge_cont == 5){
    	sound_play( sound_get( "essence_charge" ) );
    }
}  

if (strong_charge > 55 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
&& (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
	if (charge_cont == 55 && max_reach == true){
    	sound_play( sound_get( "max_essence" ) );
    	spawn_hit_fx( x, y-20, 110);
    	max_reach = false;
    }
	if (strong_max == true && shield_pressed){
		strong_max = false;
		strong_charge = 1;
	}
    if (charge_cont == 5){
    	sound_play( sound_get( "essence_charge" ) );
    }
}

if (strong_charge < 10){
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 6);
	set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -9.5);
	set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -8.3);
	fstrong_dis = 6;
	ustrong_dis = -12;
	dstrong_dis = -5;
}

if (strong_charge != 0){
	if (strong_charge >= 58){
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 15);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -35);
		set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, 22);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -20);
		fstrong_dis = 15;
		ustrong_dis = -36;
		dstrong_dis = -17;
	}
}

}

if (shadow_clone){

if (clone_alive == true){
	if ((state == PS_IDLE || state == PS_IDLE_AIR || state == PS_CROUCH || state == PS_JUMPSQUAT
	|| state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_WALK
	|| state == PS_DASH || state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_AIR_DODGE 
	|| state == PS_PARRY_START || state == PS_WALK_TURN || state == PS_DASH_START	|| (attack != AT_DAIR && state == PS_LANDING_LAG)) 
	|| (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL)){
		shadow_clone.state = 0;
	}
}

}

if (move_cooldown[AT_NSPECIAL] < 0){
	move_cooldown[AT_NSPECIAL] = 0;
}

if (move_cooldown[AT_NSPECIAL] > 300){
	move_cooldown[AT_NSPECIAL] = 299;
}

if (move_cooldown[AT_NSPECIAL] < 300 && move_cooldown[AT_NSPECIAL] > 0){
	clone_was = true;
}

if (move_cooldown[AT_NSPECIAL] <= 0 && clone_was == true){
	sound_play( sound_get( "clone_ready" ) );
	spawn_hit_fx( x+(spr_dir*30), y-45, 20);
	clone_was = false;
	move_cooldown[AT_NSPECIAL] = 0;
}



// Aerial Moves Wall Jump
if ((attack == AT_USPECIAL) || (attack == AT_DAIR)){
        can_wall_jump = true;
    }

//Nair Multihit   
if (attack == AT_NAIR){
    attack_end();
}

//Dair Shorter Slide
if (attack == AT_DAIR && !free && hsp > 15 && spr_dir == 1){
    hsp = 5;
}
if (attack == AT_DAIR && !free && hsp < -15 && spr_dir == -1){
    hsp = -5;
}



//Up Special - Izuna Drop
{



if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true;
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

if (izuna > 0){
    izuna++;
}

if (runeJ || has_rune("J")){
	if (attack == AT_USPECIAL && window == 4 || window == 5){
	air_max_speed = 7;
	}
}
	else {
	if (attack == AT_USPECIAL && window == 4 || window == 5){
	air_max_speed = 1;
}
	else {
	air_max_speed = 7;
}
	}
}



//if (shadow_clone.state_timer != 0 && clone_died = false){
//	clone_timer_hud--;
//	move_cooldown[AT_NSPECIAL] = 9999; 
//}

if (!free){
	set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
}

if (clinging == true && free && state == PS_WALL_JUMP){
	if (up_down){
		y -= 3;
	}
	if (down_down){
		y += 3;
	}
	
}

if (state == PS_WALL_JUMP){
	with (grabbedid){
		visible = true;
            state = PS_TUMBLE;
            hitstop = 3;
            x = x;
            y = y;
            
	}
	grabbedid = noone;
	
}

//Intro
{
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 20) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. 
//If your animation does not involve much movement, this may not be necessary.
}

//Kirby Ability
if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("kirby_ryu");
var ability_hurt = sprite_get("kirby_ryu_hurt");
var ability_sound = sound_get("kirby_hit");
var ability_icon = sprite_get("kirby_icon") //Optional
with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get

set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 8);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 47);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sound);


newicon = ability_icon //Optional, replaces the kirby ability icon
} //Kirby ability script ends here
}

if ("enemykirby" in self && enemykirby != undefined) { //if kirby is in a match & swallowed
	with oPlayer {
	    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && 
		(attack == AT_EXTRA_3 && get_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES) == 4)) {
			if (!free){
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 8);
			}
			if (free){
				set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 1);
				move_cooldown[AT_EXTRA_3] = 60;
				
			}
    	}
	}
}


//Runes Setup
{
	

if (runeA || has_rune("A")){
		set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 11);
		set_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT, 11);
    	set_hitbox_value(AT_FSPECIAL, 4, HG_EFFECT, 1);
		set_hitbox_value(AT_FSPECIAL, 5, HG_EFFECT, 1);
		set_hitbox_value(AT_FSPECIAL, 6, HG_EFFECT, 1);
    }
    else {
    	set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 0);
		set_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT, 0);
    	set_hitbox_value(AT_FSPECIAL, 4, HG_EFFECT, 0);
		set_hitbox_value(AT_FSPECIAL, 5, HG_EFFECT, 0);
		set_hitbox_value(AT_FSPECIAL, 6, HG_EFFECT, 0);
    }

if (runeB || has_rune("B")){
        max_djumps = 2
	} 
	else {
        max_djumps = 1;
    }
    
if (runeC || has_rune("C")){
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 16);
	set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 300);
}
else {
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 12);
	set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 50);
}


if (runeH || has_rune("H")){
	set_hitbox_value(AT_JAB, 9, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 10, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 11, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 12, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 13, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 14, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 15, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 16, HG_EFFECT, 11);
	set_hitbox_value(AT_JAB, 9, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_JAB, 10, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_JAB, 11, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_JAB, 12, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_JAB, 13, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_JAB, 14, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_JAB, 15, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_JAB, 16, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_DTILT, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_FTILT, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_FTILT, 4, HG_EFFECT, 11);
	set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_DATTACK, 4, HG_EFFECT, 11);
	set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_DATTACK, 5, HG_EFFECT, 11);
	set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_DATTACK, 6, HG_EFFECT, 11);
	set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_NAIR, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_FAIR, 4, HG_EFFECT, 11);
	set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_FAIR, 5, HG_EFFECT, 11);
	set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_FAIR, 6, HG_EFFECT, 11);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_BAIR, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_BAIR, 4, HG_EFFECT, 11);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_UAIR, 4, HG_EFFECT, 11);
	set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_DAIR, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 13);
}
else {
	set_hitbox_value(AT_JAB, 9, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 10, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 11, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 12, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 13, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 14, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 15, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 16, HG_EFFECT, 0);
	set_hitbox_value(AT_JAB, 9, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 10, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 11, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 12, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 13, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 14, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 15, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_JAB, 16, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_DTILT, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FTILT, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_FTILT, 4, HG_EFFECT, 0);
	set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_DATTACK, 4, HG_EFFECT, 0);
	set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_DATTACK, 5, HG_EFFECT, 0);
	set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_DATTACK, 6, HG_EFFECT, 0);
	set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_NAIR, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_FAIR, 4, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_FAIR, 5, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_FAIR, 6, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_BAIR, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_BAIR, 4, HG_EFFECT, 0);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_UAIR, 4, HG_EFFECT, 0);
	set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_DAIR, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
}

if (runeK || has_rune("K")){
	if (attack == AT_DAIR && jump_pressed) {
    	window = 7;
	}
}

if (has_rune("L") || phone_cheats[invincible_clone] == 1){
	runeL = true;
}

if (has_rune("N")){
	runeN = true;
}

if (has_rune("N") || strong_max || phone_cheats[max_charge] == 1){
	strong_charge = 58;
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
		strong_max_cont++;
	}
}

if (runeO || has_rune("O")){
	if (shadow_clone){
	if (taunt_pressed && clone_alive == true){
		set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 1);
		spawn_hit_fx( x, y-20, 13);
		x = shadow_clone.x;
		if (shadow_clone.free == true){
			y = shadow_clone.y+5;
		}
		if (shadow_clone.free == false){
			y = shadow_clone.y;
		}
		spawn_hit_fx( x, y-20, 13);
		shadow_clone.shoulddie = true
	}
}
}


}

//Phone Cheats
if (phone_cheats[infinite_cooldown] == 1) {
	 move_cooldown[AT_NSPECIAL] = 0;
	 }


	










    
    
    




