//


MattCanGrab = false;
MorshuCanGrab = false;
CalCanSnack = false;
UnReflectable = false;
Pocketable = false;
SpikeCanEat = false;
Frozen = false;

alt = player_id.alt;
Pocket_hud = sprite_get((alt==0)?"villager_pocket_hud_icons":"villager_pocket_hud_icons_alts");

if(attack == AT_USTRONG){
	if("toast_type" !in self)toast_type = 0;
	image_index = toast_type;
    MattCanGrab = true;MorshuCanGrab = true;
    CalCanSnack = 1;Toadie_Ability = 3;
    Pocketable = true;Pocket_hsp = 6;Pocket_vsp = -6;
	SpikeCanEat = true;SpikeHealPercent = 4;

    base_dmg = damage;base_kbs = kb_scale;
    Pocket_hud_imageindex = 0+(toast_type+(toast_type>0)*2);
    if("toast_count" !in self)toast_count = 0;
    if(toast_count > 0){
	    if("toaster_hell" not in self){ //May or may not be taken from DinoBros lol!
	        var move_angle = point_direction(0, 0, hsp, vsp);
	        var move_speed = sqrt(sqr(hsp) + sqr(vsp));
	        for (var i = -2; i < toast_count-2; i++){
	            var toast = create_hitbox(attack, 1, x, y);
	            toast.toaster_hell = true;
	            toast.hsp = lengthdir_x(move_speed, move_angle + i * 10);
	            toast.vsp = lengthdir_y(move_speed, move_angle + i * 10);                    
	        }
	    }
    }
}

if(attack == AT_DSTRONG){
	image_index = 1;
}

if(attack == AT_DSPECIAL){
	UnReflectable = true;prevhitbox = noone;
	Pocketable = false;Toadie_Ability = 5;
}
if(attack == AT_UAIR){
	if(hbox_num <= 3){
		MattCanGrab = true;
		MorshuCanGrab = true;
		CalCanSnack = 2;Toadie_Ability = 8;
		Pocketable = hbox_num!=3;
		Pocket_hsp = 8;
		Pocket_vsp = -8;	
		Pocket_hud_imageindex = 1;
		AriaDontDestroyWhenAbsorbed = false;
		if(hbox_num == 3){
			if("rng" not in self){rng = 0;}
		    hsp = spr_dir * (-6 + random_func_2( rng, 10, true ) );
		    vsp = -4 - random_func_2( rng, 6, true );		
		}
		Pocketed = false;
		pigtimer = 0;
		was_pocketed = false;
		hashitplayer = false;
		originalplayer = player_id;
	    hitpausehit = 0;
    	timer = 0;
    	lasthitbox = noone;
	    hitlockout = 4;
        hitlockout2 = 0;
        hitplayer = false;
    	hitplayertimer = 0;
    	lastplayerhit = -1;
    	thehit_player = -1;
	}else if(hbox_num == 4){
		Pocketable = false;
		UnReflectable = true;AriaCantAbsorb = true;
	}
	if(hbox_num == 3){
		rupee_sfx = sound_get("ww_rupee");
		Freezable = false;
		UnReflectable = true;		
	}
}

if(attack == AT_DATTACK){
    MattCanGrab = true;
    MorshuCanGrab = true;
    CalCanSnack = 1;
    Pocketable = true;
	Pocket_hsp = 6;
	if(alt == 12 || alt == 18 || alt == 22 || alt == 29 || alt == 31)Pocket_hud = sprite_get("villager_pocket_hud_icons_alts2");
	if(alt == 4)Pocket_hud = sprite_get("villager_pocket_hud_icons");
    Pocket_hud_imageindex = 2;	
    FireHitbox = true;Toadie_Ability = 3;
}

if(attack == AT_USPECIAL){
	proj_angle = -45*spr_dir;
	image_index = 2;
	Freezable = false;
	UnReflectable = true;
}

if(attack == AT_FSPECIAL){
    MattCanGrab = true;
    MorshuCanGrab = true;
    CalCanSnack = 1;
    Pocketable = true;
	Pocket_hsp = 6;
	Pocket_vsp = -6;
	SpikeCanEat = true;
	SpikeHealPercent = hbox_num*2;
	Pocket_hud_imageindex = (hbox_num<3)?5:6;
	Blockable = (hbox_num < 3);
	
    base_kbs = kb_scale;base_kb = kb_value;
    
    was_free = true;
    
    
    sprite_index = player_id.meatball_sprite;
    if(alt == 15 || alt == 20)sprite_index = sprite_get("planet");
    
	if(hbox_num == 3)image_index = 1;
	if(hbox_num == 4)image_index = 2;
	if(hbox_num == 5)image_index = 3;
}

if(attack == AT_FSTRONG){
	if(hbox_num == 1){ //ew
	    MattCanGrab = true;
	    MorshuCanGrab = true;
	    CalCanSnack = 2;
	    Pocketable = true;Pocket_hsp = 14;Pocket_vsp = 0;
	    mariohit = false;
	    if(alt == 2)Pocket_hud = sprite_get("villager_pocket_hud_icons_alts2");
	    Pocket_hud_imageindex = 7;
	    Toadie_Ability = 8;
	}else if(hbox_num == 2){ //poof
		Pocketable = false;Freezable = false;
		Toadie_Ability = 8;
	}
}

if(attack == AT_NSPECIAL){
	UnReflectable = true;
    MattCanGrab = true;MorshuCanGrab = true;	
	Pocketable = true;Pocket_hsp = 6;Pocket_vsp = -2;Pocketed = false;was_pocketed = false;Pocket_hud_imageindex = 8;
	Toadie_Ability = 7;
}