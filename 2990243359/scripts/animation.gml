if (voice_cooldown > 0) voice_cooldown--;
var random_voice;
if (!hitpause && synced_vars[0] && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if (window_timer == 0 && voice_cooldown == 0 && 
	((attack == AT_JAB && (window == 1 || window == 4))
     || (attack == AT_FTILT && window == 1)
     || (attack == AT_UTILT && window == 1)
     || (attack == AT_DTILT && window == 1)
     || (attack == AT_DATTACK && window == 1)
     || (attack == AT_NAIR && (window == 1 || window == 3))
     || (attack == AT_BAIR && window == 1)
     || (attack == AT_UAIR && window == 1)
     || (attack == AT_NSPECIAL && window == 1)
     || (attack == AT_FSPECIAL && window == 1)
     || (attack == AT_FSPECIAL_AIR && window == 1)
     || (attack == AT_FSPECIAL_2 && window == 1)
     || (attack == AT_FSPECIAL_2_AIR && window == 1))){
			random_voice = random_func( 0, 8, true);
			if (random_voice < 5) voice_cooldown = 30;
	    	sound_play(voice_attack[random_voice+1]);
		}
    
    if (window_timer == 0 && voice_cooldown == 0 && 
     ((attack == AT_FAIR && window == 1)
     || (attack == AT_DAIR && window == 1)
     || (attack == AT_DSTRONG && window == 2)
     || (attack == AT_USTRONG && window == 2))){
			random_voice = random_func( 0, 10, true);
			if (random_voice < 5) voice_cooldown = 60;
	    	sound_play(voice_attack_long[random_voice+1]);
		}
	
	if (window_timer == 0 && voice_cooldown == 0 && attack == AT_FSTRONG && window == 1){
			random_voice = random_func( 0, 6, true);
			if (random_voice < 3) voice_cooldown = 60;
	    	sound_play(voice_fstrong[random_voice+1]);
		}
}
if (synced_vars[0] && state == PS_HITSTUN){
	sound_stop(voice_fstrong[1]);
	sound_stop(voice_fstrong[2]);
	sound_stop(voice_fstrong[3]);
}


atime++
var name=sprite_get_name(sprite_index)
if im_gliding {
if state != PS_ATTACK_AIR
    {
        sprite_index=sprite_get("float")
        image_index=atime/8
    }
}

/*
if (state == PS_ATTACK_GROUND && attack == AT_JAB && window == 4 && window_timer == 0
	&& (place_meeting(x+40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x+40*spr_dir,y+10,asset_get("par_jumpthrough")))){
	x += 30*spr_dir;
}*/
switch (state){
	case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
    	if (state_timer == 3 || state_timer == 6 || state_timer == 9 || state_timer == 12)  {
    		spawn_hit_fx( x, y, vfx_roll );
    	}
    break;
    case PS_AIR_DODGE:
    	if (state_timer == 3 || state_timer == 5 || state_timer == 7)  {
    		spawn_hit_fx( x, y, vfx_airdodge );
    	}
    break;
}

if (state = PS_RESPAWN){
    sprite_index = sprite_get("float"); 
    image_index=atime/8;
}