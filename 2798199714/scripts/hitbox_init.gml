anim = 0;

MattCanGrab = false;
MattStar = false;
CalCanSnack = false;
MorshuCanGrab = false;
UnReflectable = false;
AriaCantAbsorb = true;
Pocketable = false;

num = 0;
tornadosfx = noone;
playercharge = 0;

if(attack == AT_NSPECIAL){
	swordnum = 0;
	up = false;
	angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
    proj_angle = angle;
	start_rotation = proj_angle;
	
	MattCanGrab = false;MorshuCanGrab = false;
	CalCanSnack = 0;
	AriaCantAbsorb = true;AriaDontDestroyWhenAbsorbed = true;
	Pocketable = false;Pocket_hsp = 12;Pocket_vsp = -4;Pocketed = false;waspocketed = false;
    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 0;
}
if(attack == AT_FSPECIAL){
	if(hbox_num <= 2){
	    UnReflectable = true;
	    CalCanSnack = false;
	}else{
		MattCanGrab = true;MorshuCanGrab = true;
		CalCanSnack = 2;
		AriaCantAbsorb = false;
		Pocketable = true;Pocket_hsp = 18;Pocket_vsp = 0;
    	Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 1;
	}
}

if(attack == AT_DSPECIAL){
	UnReflectable = true;
	AriaCantAbsorb = false;AriaDontDestroyWhenAbsorbed = true;
	PocketBuff = 0;
}

if(attack == AT_FSTRONG){
	MattCanGrab = true;MorshuCanGrab = true;
	CalCanSnack = 2;
	AriaCantAbsorb = false;
	Pocketable = true;Pocket_hsp = 18;Pocket_vsp = 0;
    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 2;
}

if(attack == AT_USTRONG){
	CalCanSnack = 1;
	if(hbox_num == 4 || hbox_num == 6){ //lightning
		UnReflectable = true;
	    Pocketable = true;Pocket_hsp = 0;Pocket_vsp = 0;Pocketed = false;waspocketed = false;waspocketed2 = false;PocketBuff = 0;
    	Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 3;
	}else if(hbox_num == 5 || hbox_num == 7){ //lightning hitboxes
	    AriaCantAbsorb = false;
	}
}

if(attack == AT_DSTRONG){
	playercharge = player_id.dstrongcharge;
	if(hbox_num == 9){
		tornadospeed = abs(hsp);
	    anim = 11;
	    tornado_sfx = sound_get("tornado");
	    tornado_end_sfx = sound_get("tornado end");
	    tornado_sprite = sprite_get("tornado");
	    tornado_sprite_alts = sprite_get("tornado_alts");
	    
	    Pocketable = true;Pocket_hsp = 2;Pocket_vsp = 0;Pocketed = false;waspocketed = false;waspocketed2 = false;PocketBuff = 0;
    	Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 4;
	}
	if(hbox_num >= 9){
		UnReflectable = true;
		if(hbox_num == 9){
			tornadosfx = sound_play(sound_get("tornado"));
		}
	}
	CalCanSnack = 1;
}