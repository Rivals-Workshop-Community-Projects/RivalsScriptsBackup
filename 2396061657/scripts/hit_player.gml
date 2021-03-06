// hit_player.gml
// calle when you hit a player
// Use hit_player_obj to reference the player object that was hit. 
// Use hit_player to reference which player you hit
// Use my_hitboxID to reference the hitbox you hit them with
// To change the knockback given, edit hit_player_obj.orig_knock

// Calculates how many hearts an attack creates
if (attack != AT_NTHROW && attack != AT_DTHROW && attack != AT_UTHROW && attack != AT_FTHROW){
	HeartPop = floor(my_hitboxID.damage/1.8);
}

if (attack == AT_FSPECIAL && state == PS_HITSTUN){
	with(hit_player){
		hitpause = false;
	}
}

// Does all the fancy code to define when Date Girl lands a grab
if (attack == AT_FSPECIAL && state != PS_HITSTUN){
	other.isThorn = false;
	other.isRibbon = false;
	other.isBalloon = false;
	other.isCandy = false;
	
	other.ThornCounter = 0;
	other.RibbonCounter = 0;
	other.BalloonCounter = 0;
	other.CandyCounter = 0;

	other.thorn_id = noone;
	other.ribbon_id = noone;
	other.balloon_id = noone;
	other.candy_id = noone;
	
	other.CCheck = 0;

	dthrowCheck = false;
	
	ThornKB = 7.5;
	CandyKB = 4;
	
	attack_end();
	if (!other.super_armor){ // Checks if the opponent has super armor and doesn't activate if they are
		switch(GrappleMode){
			case 0:			
				hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
				ThornKB = (ThornKB + ((LoveMeter/40)));
				set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, ThornKB);
				set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, ThornKB);
				attack = AT_FTHROW;
			break;
			case 1:
				hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE);
				CandyKB = (CandyKB + (LoveMeter/100));
				set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, CandyKB);
				set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, CandyKB + 5);
				attack = AT_DTHROW;
			break;
			case 2:	
				hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);	RibbonHSP = (RibbonHSP - (LoveMeter/60));
				RibbonVSP = (RibbonVSP - (LoveMeter/100));
				set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, RibbonHSP);
				set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, RibbonVSP);
				
				RibbonKB = (RibbonKB + (LoveMeter/30));
				set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, RibbonKB);
				attack = AT_NTHROW;
			break;
			case 3:
				hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);
				attack = AT_UTHROW;
			break;
		}
		state_timer = 0;
		window = 0;
		window_timer = 0;
	}
}

// Sets up Roses Status Effect
if (attack == AT_FTHROW){
	other.isThorn = true;
	other.thorn_id = id;
	if (other.ThornCounter == 0){
		other.ThornCounter = LoveMeter + 120;
		LoveMeter = 0;
	}
}

// Sets up Candy Status Effect
if (attack == AT_DTHROW){
	other.isCandy = true;
	other.candy_id = id;
	if (other.CandyCounter == 0){
		other.CandyCounter = (LoveMeter/2) + 60;
		LoveMeter = 0;
	}
}

// Sets up Ribbon Status Effect
if (attack == AT_NTHROW){
	other.isRibbon = true;
	other.ribbon_id = id;

	if (other.RibbonCounter == 0){
		other.RibbonCounter = LoveMeter  + 120;
		LoveMeter = 0;
	}
}

// Sets up Balloon Status Effect
if (attack == AT_UTHROW){
	other.isBalloon = true;
	other.balloon_id = id;
	if (other.BalloonCounter == 0){
		other.BalloonCounter = LoveMeter  + 200;
		LoveMeter = 0;
	}
}
