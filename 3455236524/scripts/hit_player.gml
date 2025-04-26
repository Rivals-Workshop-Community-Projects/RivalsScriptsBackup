switch my_hitboxID.attack {
	case AT_USTRONG:
	if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
	break;
	case AT_DSTRONG:
	if my_hitboxID.hbox_num == 4 {
         sound_play(sound_get("dstrong_hit"),false,noone,1.0);
     }
	break;
	case AT_NAIR:
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8);
     }
	break;
	case AT_UAIR:
	if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
	break;
	case AT_DAIR:
	if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy"),false,noone,0.8);
     }
	break;
	case AT_NSPECIAL:
     if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
    break;
    case AT_FSPECIAL:
     if my_hitboxID.hbox_num == 6 {
         sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 10  {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
    break;
	case AT_DSPECIAL:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
     }
    break;
}

//NSpecial Grab Code
if (my_hitboxID.attack == AT_NSPECIAL){
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 1){
    	window = 4;
    	window_timer = 0;
		nspecial_grab = true;
		hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.8);
	    hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.8);
	}
	else {
		nspecial_grab = false;
	}
}
else {
	 nspecial_grab = false;
}

//Wheelie Grab Code
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 4){
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false){
		wheelie_grab = true;
		hit_player_obj.x = lerp(hit_player_obj.x, x+50*spr_dir, 0.8);
	    hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.8);
	}
	else {
		wheelie_grab = false;
	}
}
else {
	 wheelie_grab = false;
}

var random_voice;
if (voice_cooldown == 0 && synced_vars[0]){
	if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3)
	|| (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 2)
	|| (my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num == 2)
	|| (my_hitboxID.attack == AT_UTILT) || (my_hitboxID.attack == AT_DATTACK) || (my_hitboxID.attack == AT_DAIR)
	|| (my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 5)
	|| (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2)
	|| (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 4)
	|| (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1)
	|| (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3)
	|| (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 10){
			random_voice = random_func( 0, 4, true);
				voice_cooldown = 60;
				sound_stop(voice_attack[1]);
				sound_stop(voice_attack[2]);
				sound_stop(voice_attack[3]);
				sound_stop(voice_attack[4]);
				sound_stop(voice_attack[5]);
				sound_stop(voice_attack[6]);
				sound_stop(voice_attack[7]);
				sound_stop(voice_attack[8]);
				sound_stop(voice_attack[9]);
				sound_stop(voice_attack_long[1]);
				sound_stop(voice_attack_long[2]);
				sound_stop(voice_attack_long[3]);
				sound_stop(voice_attack_long[4]);
				sound_stop(voice_attack_long[5]);
	    	sound_play(voice_hit[random_voice+1]);
	}
}

if (voice_cooldown == 0 && synced_vars[0]){
	if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 5)
	|| (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2)
	|| (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1)
	|| (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 4)
	|| (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1)
	|| (my_hitboxID.attack == AT_FSTRONG) || (my_hitboxID.attack == AT_USTRONG) || (my_hitboxID.attack == AT_DSTRONG){
			random_voice = random_func( 0, 8, true);
				voice_cooldown = 60;
				sound_stop(voice_attack[1]);
				sound_stop(voice_attack[2]);
				sound_stop(voice_attack[3]);
				sound_stop(voice_attack[4]);
				sound_stop(voice_attack[5]);
				sound_stop(voice_attack[6]);
				sound_stop(voice_attack[7]);
				sound_stop(voice_attack[8]);
				sound_stop(voice_attack[9]);
				sound_stop(voice_attack_long[1]);
				sound_stop(voice_attack_long[2]);
				sound_stop(voice_attack_long[3]);
				sound_stop(voice_attack_long[4]);
				sound_stop(voice_attack_long[5]);
	    	sound_play(voice_hit_strong[random_voice+1]);
	}
}

