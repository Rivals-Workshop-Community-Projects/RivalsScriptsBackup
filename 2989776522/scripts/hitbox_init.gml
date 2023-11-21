//hitbox_init

MattCanGrab = false;
MorshuCanGrab = false;
CalCanSnack = false;
UnReflectable = false;
Pocketable = false;
SpikeCanEat = false;

if(attack == AT_NSPECIAL){
	UnReflectable = true;
	AriaDontDestroyWhenAbsorbed = true;
}

if(attack == AT_FSPECIAL){
	if("target" not in self)target = noone;
	if("fspec_target_player" not in self)fspec_target_player = false;
	
	//ignore teammates
	with(oPlayer){
		if(get_player_team(player) == get_player_team(other.player)){
	    	other.can_hit[player] = false;
		}
	}
	
    MattCanGrab = true;MorshuCanGrab = true;
	CalCanSnack = 1;
	Pocketable = true;
	Pocket_hsp = 16;Pocket_vsp = 0;Pocketed = false;waspocketed = false;
    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 0;if(player_id.alt != 0)Pocket_hud_imageindex = 1;
    Blockable = true;Toadie_Ability = 5;
}


if(attack == AT_USPECIAL){
	if(hbox_num == 1){
		sfx_explode = sound_get("mech explosion");
		
	    MattCanGrab = true;MorshuCanGrab = true;
		CalCanSnack = 1;
		Pocketable = true;
		Pocketable = true;Pocket_hsp = hsp;Pocket_vsp = vsp;Pocketed = false;PocketBuff = 0;waspocketed = false;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 3;
	}else if(hbox_num == 2){
	    Pocketable = false;
	}
	Blockable = true;
}

if(attack == AT_DSPECIAL){
	if(hbox_num == 1){
		if("egg_pawn" not in self)egg_pawn = noone;
		
		AriaCantAbsorb = true;//AriaDontDestroyWhenAbsorbed = true;
		UnReflectable = true;
		Pocketable = false;
	}else if(hbox_num == 2){
		Pocketable = false;FireHitbox = true;
	}else if(hbox_num == 3){
		if("target" not in self)target = noone;
		if(instance_exists(target)){
			var distance3 = point_distance(x, y, target.x, target.y - 30);
			var angle3 = point_direction(x, y, target.x, target.y - 30);
			hsp = lengthdir_x(8, angle3);
			vsp = lengthdir_y(8, angle3);
		}
		
	    MattCanGrab = true;MorshuCanGrab = true;
		CalCanSnack = 1;
		Pocketable = true;
		Pocket_hsp = 16;Pocket_vsp = 0;Pocketed = false;waspocketed = false;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 2;
	    Blockable = true;
	}
	if(hbox_num >= 2){
		//ignore teammates
		with(oPlayer){
			if(get_player_team(player) == get_player_team(other.player)){
		    	other.can_hit[player] = false;
			}
		}
	}
}

if(attack == AT_UAIR){
	if(hbox_num == 7){
		//ignore teammates
		with(oPlayer){
			if(get_player_team(player) == get_player_team(other.player)){
		    	other.can_hit[player] = false;
			}
		}
		
	    MattCanGrab = true;MorshuCanGrab = true;
		CalCanSnack = 1;
		Pocketable = true;
		Pocket_hsp = 16;Pocket_vsp = 0;Pocketed = false;waspocketed = false;
	    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 2;
	    Blockable = true;
	}
}

if(attack == AT_FTILT || attack == AT_DATTACK){
	UnReflectable = true;
	Pocketable = false;
}