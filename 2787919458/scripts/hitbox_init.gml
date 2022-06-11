if (attack == AT_DTILT && hbox_num == 2){
	CalCanSnack = true;
    depth = 10;
    hsp = spr_dir * (-8 + random_func_2( 0, 12, true ) );
    vsp = -4 - random_func_2( 0, 6, true );
    
    if(random_func_2(1,4,true) == 2){
    	sprite_index = sprite_get("chilidog")
    	sound_play(sound_get("Chilidog"))
    }
}
if (attack == AT_NSPECIAL){
	MattCanGrab = true;
	MorshuCanGrab = true;
	just_landed = false;
	dorito_hp = 3;
	theplanet = self;
    orig_player = player;
    current_player = player;
    knockback_power = 0;
    knockback_angle = 0;
    hitpausehit = 0;
    timer = 0;
    lasthitbox = noone;
    hitlockout = 4;
    hitlockout2 = 0;
    hitplayer = false;
    hitplayertimer = 0;	
	through_platforms = 999;
	just_hit = false;
	if(hbox_num != 1){
		spr_dir = -1;
		CalCanSnack = true;
	}else{
		CalCanSnack = 2;
	}
	with(asset_get("pHitBox")){
		if(place_meeting(x,y,other)){
			if(attack == AT_NSPECIAL && player == other.player && hitbox_timer <= 2 && other != self && hbox_num == 1){
				other.theplanet = self;
			}
		}
	}	
}
is_plunger = false;
if(attack == AT_FSTRONG){
	if(hbox_num == 1){
		depth += 4;
		door_open = false;
		switch(get_player_color(player)){
			default:
				sprite_index = sprite_get("shrek_door_alts")
			break;
			case 0:case 19:
				sprite_index = sprite_get("shrek_door")
			break;
		}		
	}
	if(hbox_num == 2 || hbox_num == 3){
		UnReflectable = true;
		if(hbox_num == 3){
			switch(get_player_color(player)){
				default:
					sprite_index = sprite_get("shrek_alts")
				break;
				case 0:case 19:
					sprite_index = sprite_get("shrek")
				break;
				case 15:
					sprite_index = sprite_get("shrek_weegee")
				break;
			}	
		}
	}
}
if(attack == AT_USTRONG){
	spr_dir = 1;
	if(hbox_num == 1){
		spr_dir = 1;
		depth += 4;
		doge_speak = false;
		switch(get_player_color(player)){
			default:
				sprite_index = sprite_get("doge_idle_alts")
			break;
			case 0:
				sprite_index = sprite_get("doge_idle")
			break;
			case 15:
				sprite_index = sprite_get("doge_idle_weegee")
			break;			
			case 23:
				sprite_index = sprite_get("doge_idle_lolbit")
			break;					
		}
	}
	if(hbox_num != 1 && hbox_num != 3){
		CalCanSnack = true;
		MattCanGrab = true;
		MorshuCanGrab = true;
	}
	if(hbox_num == 3){
		UnReflectable = true;
	}
	if(hbox_num == 2){
		image_index = random_func_2(0, 4, true);
	}
	if(hbox_num == 4 || hbox_num == 5){
		image_index = random_func_2(0, 2, true);
	}
}
if(attack == AT_DSTRONG){
	if(hbox_num == 1){
		depth += 4;
		boi_ride = false;
		ride_hb = noone;
		switch(get_player_color(player)){
			default:
				sprite_index = sprite_get("datboi_idle_alts")
			break;
			case 15:
				sprite_index = sprite_get("datboi_idle_weegee")
			break;			
			case 0:case 21:
				sprite_index = sprite_get("datboi_idle")
			break;
		}		
	}else if(hbox_num == 2){
		if(player_id.charged_summon){
			damage = 11;
			kb_scale = 1;
		}
		CalCanSnack = 2;
		MattCanGrab = true;
		MorshuCanGrab = true;		
		switch(get_player_color(player)){
			default:
				if(!player_id.charged_summon){
					sprite_index = sprite_get("datboi_ride_alts")
				}else{
					sprite_index = sprite_get("datboi_ride_alts_charged")
				}
			break;
			case 15:
				if(!player_id.charged_summon){
					sprite_index = sprite_get("datboi_ride_weegee")
				}else{
					sprite_index = sprite_get("datboi_ride_weegee_charged")
				}
			break;			
			case 0:case 21:
				if(!player_id.charged_summon){
					sprite_index = sprite_get("datboi_ride")
				}else{
					sprite_index = sprite_get("datboi_ride_charged")
				}
			break;
		}
	}
}
if(attack == AT_USPECIAL){
	CalCanSnack = true;
	MattCanGrab = true;
	MorshuCanGrab = true;
    spr_dir = 1;
    if(vsp <= 0){
        kb_angle = 130;
    }	
}
if(attack == AT_DATTACK){
	launched = 0;
	can_hit_self = true;
	UnReflectable = true;
	reflect_type = 0;
	reflect_target = noone;	
}
if(attack == AT_DSPECIAL){
	if(hbox_num == 1){
		UnReflectable = true;
		CalCanSnack = true;
		MattCanGrab = false;
		MorshuCanGrab = false;	
		image_xscale = 8;
	}
}