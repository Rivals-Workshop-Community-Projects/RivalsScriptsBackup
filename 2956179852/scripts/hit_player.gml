if(my_hitboxID.attack == AT_FSTRONG){
	if(my_hitboxID.hbox_num == 1){
		set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 100);
		set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 100);
		if(hit_player_obj.hitstun > 0){
			if(hit_player_obj.y < my_hitboxID.y){
				hit_player_obj.y += 35;
			}else if(hit_player_obj.y > my_hitboxID.y+45){
				hit_player_obj.y -= 40;
			}
		}
	}
	if(my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ell_steam_hit"))
		spawn_hit_fx(my_hitboxID.x,my_hitboxID.y,fx_smoke_pink);
		spawn_hit_fx(my_hitboxID.x,my_hitboxID.y,304);
	}
	has_hit = true;
}
if(my_hitboxID.attack == AT_DSTRONG){
	if(my_hitboxID.hbox_num == 1){
		set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 11);
	}
}
if(my_hitboxID.attack == AT_UAIR){
	if(my_hitboxID.hbox_num == 1){
		hit_player_obj.pig_hit_cooldown = 30;
		sound_play(asset_get("sfx_blow_heavy2"))
	}
}
if(my_hitboxID.attack == AT_FAIR){
	sound_play(sound_get("hammer hit single"),false,noone,1.5);
}

if(my_hitboxID.attack == AT_DAIR){
	if(my_hitboxID.hbox_num <= 2 && free){old_vsp = -12;}
	if(my_hitboxID.hbox_num == 3){set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 11);}
	if(my_hitboxID.hbox_num == 4 && free){old_vsp = -8;dairholdbounce = true;attack_end();}
	dair_whereami = true;
	//if(my_hitboxID.hbox_num == 2 && hit_player_obj.free || hit_player_obj.should_make_shockwave)PlayVoiceClip("down", 1.75);
}

if(my_hitboxID.attack == AT_BAIR){
	bairtoast = true;
}

if(my_hitboxID.attack == AT_FSPECIAL){
	if(my_hitboxID.hbox_num > 1){
		hit_player_obj.meatball_hit_cooldown = 30;
	}
}

if(my_hitboxID.attack == AT_USPECIAL){
	set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 100);set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 100);
	set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 100);set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 100);
	if(my_hitboxID.hbox_num <= 3 && hit_player_obj.hitstun > 0){
		hit_player_obj.should_make_shockwave = false;hit_player_obj.free = true;
		if(spr_dir == 1 && hit_player_obj.x < x || spr_dir == -1 && hit_player_obj.x > x){
			hit_player_obj.x += 15*spr_dir;
		}
		if(hit_player_obj.y > y){
			hit_player_obj.y -= 15;
		}
	}
	if(my_hitboxID.hbox_num == 4 && !instance_exists(grab_target) && hit_player_obj.hitstun > 0){
		grab_target = hit_player_obj;
	}
	else if(my_hitboxID.hbox_num != 4 && instance_exists(grab_target) && hit_player_obj.hitstun > 0){
		grab_target = noone;
	}
}
if(hit_player_obj.should_make_shockwave){
    if(my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 1)
		PlayVoiceClip("so this is where wendys hid the real coins");
	if(my_hitboxID.attack == AT_DTILT)
		PlayVoiceClip("be careful when you pinch wendys pennies");
	if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2)
		PlayVoiceClip("you know what they say");
}

#define PlayVoiceClip
/// PlayVoiceClip(name,?volume)
//Plays SFX
if(!muted){
	sound_stop(voice)
	voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
}