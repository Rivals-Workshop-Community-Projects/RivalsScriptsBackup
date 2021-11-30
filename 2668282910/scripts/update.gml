// EX Hitboxes (!ex is normal and ex is of course EX)
{
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3 * !ex);	
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3 * ex);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 6 * ex);

set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 11 * ex);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 11 * !ex);

set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3 * !ex);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3 * ex);

set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 16 * !ex);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 4 * ex);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 4 * ex);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 4 * ex);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 4 * ex);

set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3 * !ex);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3 * ex);

set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3 * !ex);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3 * ex);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3 * ex);

set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2 * !ex);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4 * !ex);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2 * ex);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4 * ex);

set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2 * !ex);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2 * !ex);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2 * ex);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2 * ex);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2 * ex);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2 * ex);

set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2 * !ex);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3 * !ex);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4 * ex);

set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4 * !ex);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2 * !ex);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2 * !ex);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4 * ex);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2 * ex);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2 * ex);

set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 12 * !ex);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 12 * ex);

set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3 * !ex);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3 * !ex);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3 * !ex);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3 * ex);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3 * ex);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 3 * ex);

set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5 * !ex);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 5 * !ex);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 8 * ex);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3 * ex);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 5 * ex);

set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4 * !ex);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4 * ex);
}

//Practice Mode options
{
if (get_match_setting(SET_PRACTICE)){
	if (taunt_pressed && joy_pad_idle && infinite_ex == false){
		infinite_ex = true;
		sound_play(sound_get("ex_ready"));
		spawn_hit_fx( x-25*spr_dir, y-50, fire_effect_small);
	}
}

if (infinite_ex == true){
	ex_cooldown = 0;
}
}

//Spawn stuff options
//if (state == PS_SPAWN && special_pressed && no_ex_sfx == false){
//	sound_play(sound_get("ex_ready"));
//    no_ex_sfx = true;
//}
if (state == PS_SPAWN && shield_pressed && parry_ex == true){
	sound_play(sound_get("ex_ready"));
    parry_ex = false;
}

//Resets the EX Value
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    enhanced = false;
    ex = 0;
}

//Counts down the EX cooldown
if (ex_cooldown > 0){
	ex_cooldown--;
}

//Puts the cooldown at 0 when 0
if (ex_cooldown <= 0){
	ex_cooldown = 0;
}

//Resets the FSpecial and USpecial cooldown
if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

//Plays the EX Ready stuff
if (ex_cooldown == 3){
	if (no_ex_sfx == false){
		sound_play(sound_get("ex_ready"), false, noone, 0.5, 1);
	}
	spawn_hit_fx( x+35*spr_dir, y-70, fire_effect_small);
}

//Makes so the Hit effects spawn in front of the player (thanks McDucky!)
with(hit_fx_obj){
    if(player == other.player && (hit_fx == other.zetter_hit1 || hit_fx == other.zetter_hit2
    || hit_fx == other.zetter_hit3)){
		depth = other.depth-1;
    }
}

//Trail stuff
if (draw1 > 0){
    draw1 -= 0.08;
}
if (draw2 > 0){
    draw2 -= 0.08;
}
if (draw3 > 0){
    draw3 -= 0.08;
}
if (draw4 > 0){
    draw4 -= 0.08;
}
if (draw5 > 0){
    draw5 -= 0.08;
}

//Taunt effect on the opponent
if (taunt_effect >= 0){
	taunt_effect += 0.3;
	if (taunt_effect > 7){
		taunt_effect = -1;
	}
}
if (taunt_effect2 >= 0){
	taunt_effect2 += 0.3;
	if (taunt_effect2 > 7){
		taunt_effect2 = -1;
	}
}

//Resets the NSpecial sprites
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
}

//USpecial "Comand Grab"
if (uspecial_grab == true){
	hit_player_obj.hitstop = 1;
	hit_player_obj.x = lerp(hit_player_obj.x, x+20*spr_dir, 0.4);
	hit_player_obj.y = lerp(hit_player_obj.y, y-40, 0.4);
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_USPECIAL){
    uspecial_grab = false;
}

//FSpecial "Comand Grab"
if (fspecial_grab == true){
	hit_player_obj.hitstop = 1;
	hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.4);
	hit_player_obj.y = lerp(hit_player_obj.y, y-5, 0.4);
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_FSPECIAL){
    fspecial_grab = false;
}



