// hit_player.gml
// calle when you hit a player
// Use hit_player_obj to reference the player object that was hit. 
// Use hit_player to reference which player you hit
// Use my_hitboxID to reference the hitbox you hit them with
// To change the knockback given, edit hit_player_obj.orig_knock

// Calculates how many hearts an attack creates
if (attack != AT_NTHROW && attack != AT_DTHROW && attack != AT_UTHROW && attack != AT_FTHROW && attack != AT_FSPECIAL && attack != AT_DSPECIAL){
	HeartPop = floor(my_hitboxID.damage/1.8);
}

if (attack == AT_FSPECIAL && state == PS_HITSTUN){
	with(hit_player){
		hitpause = false;
	}
}

if (attack == AT_DSPECIAL){
	should_crumple = true;
	crumple_timer = 0;
	crumple_x = hit_player_obj.x;
	crumple_y = hit_player_obj.y;
	crumple_dir = -1 * hit_player_obj.spr_dir;
	crumple_alpha = .80;
}

// Does all the fancy code to define when Date Girl lands a grab
if (attack == AT_FSPECIAL && state != PS_HITSTUN){
	other.isThorn = false;
	other.isRibbon = false;
	other.isBalloon = false;
	
	if (GrappleMode != 1){
		other.isCandy = false;
		other.CandyCounter = 0;
		other.candy_id = noone;
		other.CCheck = 0;
	//	print("remove candy");
	}
	
	if (other.isCandy){
	//	print("pain");
		other.Candy_SecondAttack = true;
	}
	else {
	//	print("bain");
		other.Candy_SecondAttack = false;
	}
	
	other.ThornCounter = 0;
	other.RibbonCounter = 0;
	other.BalloonCounter = 0;

	other.thorn_id = noone;
	other.ribbon_id = noone;
	other.balloon_id = noone;
	other.BalloonStrength = 1.0;

	other.initial_candy_land = false;
	
	dthrowCheck = false;

	ThornKB = 8;
	CandyKB = 4;
	
	RibbonKB = 8;
	RibbonHP = 14;
	RibbonRights = 0;
	Calliecide = false;

	if (other.Balloon_hitstun_grav != 0){
		other.hitstun_grav = other.Balloon_hitstun_grav;
	}
		
	attack_end();
	if (!other.super_armor){ // Checks if the opponent has super armor and doesn't activate if they are
		switch(GrappleMode){
			case 0:			
				hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
				ThornKB = floor(ThornKB + (floor(LoveMeter/40)));
				set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, ThornKB);
				set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, ThornKB);
				attack = AT_FTHROW;
			break;
			case 1:
				hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE);
				CandyKB = floor(CandyKB + (LoveMeter/100));
				
				if (!other.Candy_SecondAttack){
					set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, CandyKB);
					set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, CandyKB + 2);
				
					set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
					set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 20);
				//	print("Sticky Mode")
				}
				else {
					set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, CandyKB);
					set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, CandyKB + 2);
				
					set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 20);
					set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 2);
				//	print("Candy mode")
				}
				
				attack = AT_DTHROW;
			break;
			case 2:	
				hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);
				
				RibbonKB = 8 + (.5 * floor(LoveMeter/50));
				RibbonHP = floor(14 + (2 * floor(LoveMeter/50)));

				if (LoveMeter >= 100){
					Calliecide = true;
				}
				if (LoveMeter >= 100){
					RibbonRights = 1;
				}
				if (LoveMeter >= 200){
					RibbonRights = 2;
				}
				
				set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, RibbonKB);
				set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, RibbonHP);
				
//				print(RibbonKB);
//				print(RibbonHP);
				
/*
				RibbonHSP = floor(RibbonHSP - (LoveMeter/60));
				RibbonVSP = floor((RibbonVSP - (LoveMeter/100)));

				set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, RibbonHSP);
				set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, RibbonVSP);
				
				//print(RibbonHSP);
				//print(RibbonVSP);

				RibbonKB = floor(RibbonKB + floor(LoveMeter/30));
				//print("pain");
				set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, RibbonKB);
*/
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
	other.initial_candy_land = true;
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
