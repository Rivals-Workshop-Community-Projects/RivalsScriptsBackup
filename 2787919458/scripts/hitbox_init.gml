alt_override = false;
landtimer = 0;
num = 0;
alt = player_id.alt;
with(player_id)other.pocket_spr = sprite_get((alt==0)?"villager_pocket_hud_icons":"villager_pocket_hud_icons_alts");
Pocket_hud = pocket_spr;
if (attack == AT_DTILT && hbox_num == 2){
	CalCanSnack = true;
    depth = 10;
    hsp = spr_dir * (-8 + random_func_2( 0, 12, true ) );
    vsp = -4 - random_func_2( 0, 6, true );
    if(random_func_2(1,4,true) == 2){
    	sprite_index = sprite_get("chilidog")
    	if(!player_id.trigger_warning)
    		sound_play(sound_get("Chilidog"))
    }
}
if (attack == AT_NSPECIAL){
	Pocket_hsp = 6;
	Pocket_vsp = -6;	
	MattCanGrab = true;
	MorshuCanGrab = true;
	SpikeCanEat = true;
	just_landed = false;
	if("dorito_hp" not in self)dorito_hp = 3;
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
	dorito_timer = 0;
	if(hbox_num != 1){
		spr_dir = -1;
		CalCanSnack = true;
		SpikeHealPercent = 1;
		Pocket_hud_imageindex = 1;
		spr_dir = player_id.spr_dir;
	}else{
		CalCanSnack = 2;
		SpikeHealPercent = 5;
		AriaCantAbsorb = true;
		Pocket_hud_imageindex = 0;
	}
	init_spr_dir = spr_dir;
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
	PocketBuff = 0;
	AriaCantAbsorb = true;
	UnReflectable = true;
	reflect_type = 0;
	reflect_target = noone;		
	if(hbox_num == 3){
		Pocket_hud_imageindex = 8;
		Pocketed = false;
		was_pocketed = false;
		Pocketable = false;
		shrek_timer = 0;
		depth += 4;
		door_open = false;
		Pocket_hsp = 2;
		Pocket_vsp = -2;
		detect_box = noone;
		Get_Alt_Sprite(19,"shrek");
		Get_Alt_Sprite(15,"shrek_weegee");		
		Get_Alt_Sprite();		
	}
	if(hbox_num == 2 || hbox_num == 7){
		Pocketable = false;
		UnReflectable = true;
		Bounceable = false;
	}
}
if(attack == AT_USTRONG){
	spr_dir = 1;
	Pocketed = false;
	was_pocketed = false;
	PocketBuff = 0;
	if(hbox_num == 1){
		spr_dir = 1;
		depth += 4;
		doge_speak = false;
		Pocket_hud_imageindex = 7;
		doge_timer = 0;
		Get_Alt_Sprite(24,"doge_lolbit");
		Get_Alt_Sprite(15,"doge_weegee");
		Get_Alt_Sprite();
		Pocket_hsp = 1;
		Pocket_vsp = -1;		
	}
	if(hbox_num != 1 && hbox_num != 3){
		CalCanSnack = true;
		MattCanGrab = true;
		MorshuCanGrab = true;
		Pocket_hsp = 6;
		Pocket_vsp = -6;		
	}
	if(hbox_num == 3){
		UnReflectable = true;
	}
	if(hbox_num == 2){
		image_index = random_func_2(0, 4, true);
		Pocket_hud_imageindex = 3;
	}
	if(hbox_num == 4 || hbox_num == 5){
		image_index = random_func_2(0, 2, true);
		Pocket_hud_imageindex = hbox_num;
	}
}
if(attack == AT_DSTRONG){
	Pocket_hsp = 8;
	Pocket_vsp = -8;
	AriaCantAbsorb = true;
	Pocketable = false;
	Pocket_hud_imageindex = 6;
	Pocketed = false;
	if(hbox_num == 1){
		CalCanSnack = false;
		MattCanGrab = false;
		MorshuCanGrab = false;
		UnReflectable = true;
		depth += 4;
		boi_ride = false;
		ride_hb = noone;
		Get_Alt_Sprite(21,"datboi");
		Get_Alt_Sprite(15,"datboi_weegee");
		Get_Alt_Sprite();
		datboi_timer = 0;
		if(player_id.charged_summon){
			damage = 11;
			kb_scale = 1;
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
    Pocket_hud_imageindex = 2;
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
#define Get_Alt_Sprite()
if(argument_count > 0 && get_player_color(player) == argument[0]){
	sprite_index = sprite_get(argument[1]);alt_override = true;
}
if(get_player_color(player) != 0 && !alt_override){
	var found = 0;
	for (var i = 0; i < array_length(player_id.sprite_names) && !found; i++){
		if (sprite_index == sprite_get(player_id.sprite_names[i])){
			sprite_index = sprite_get(player_id.sprite_names[i]+"_alts");
			found = 1;
		}
	}
}