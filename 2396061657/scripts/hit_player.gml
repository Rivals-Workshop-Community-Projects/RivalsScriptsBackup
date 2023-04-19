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

// checks to see if user hit Callie then they adopt the hitpause of their move instead of Callie Fspecial
if (my_hitboxID.attack == AT_FSPECIAL && state == PS_HITSTUN){
	with(hit_player){
		hitstop = other.hitstop;
	}
}

if (my_hitboxID.attack == AT_DSPECIAL){
	should_crumple = true;
	crumple_timer = 0;
	crumple_x = hit_player_obj.x;
	crumple_y = hit_player_obj.y;
	crumple_dir = -1 * hit_player_obj.spr_dir;
	crumple_alpha = .80;
}

// Does all the fancy code to define when Date Girl lands a grab
if (my_hitboxID.attack == AT_FSPECIAL && state != PS_HITSTUN){
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

	ThornKB_scale = .6;
	CandyKB = 4;
	CandyKB_scale = .5;
	full_candy_bar = false;
	
	RibbonKB_scaling = .8;
	Ribbon_damage = 8;
	RibbonRights = 0;
	Calliecide = false;
	
	Balloon_hitstun_multi = 1.0;

	if (other.Balloon_hitstun_grav != 0){
		other.hitstun_grav = other.Balloon_hitstun_grav;
	}

	LM_a = LoveMeter div 100;
	LM_b = LoveMeter div 10;
	LM_c = LoveMeter div 1;
		
	attack_end();
	if (!other.super_armor){ // Checks if the opponent has super armor and doesn't activate if they are
		switch(GrappleMode){
			
			// Roses
			case 0:			
				hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
				ThornKB_scale = ThornKB_scale + LoveMeter/1000;
				print(ThornKB_scale)
				set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, ThornKB_scale);
				set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, ThornKB_scale +.1);
				attack = AT_FTHROW;
			break;
			
			// Candy
			case 1:
				hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE);
				CandyKB = CandyKB + (LoveMeter/100);
				CandyKB_scale = CandyKB_scale + (LoveMeter/2000);		
				
				if (!other.Candy_SecondAttack){
					set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, CandyKB);
					set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, CandyKB + 2);
					set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, CandyKB_scale);
				
					set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
					set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 20);
				//	print("Sticky Mode")
				}
				else {
					set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, CandyKB);
					set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, CandyKB + 2);
					set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, CandyKB_scale);
				
					set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 20);
					set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 2);
				//	print("Candy mode")
				}
				
				attack = AT_DTHROW;
			break;
			
			// Ribbon
			case 2:	
				hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);

				if (LoveMeter >= 100){
					Calliecide = true;
				}
				if (LoveMeter >= 100){
					RibbonRights = 1;
				}
				if (LoveMeter >= 200){
					RibbonRights = 2;
				}
				
				RibbonKB_scaling = RibbonKB_scaling + LoveMeter/1000;
				Ribbon_damage = Ribbon_damage + LoveMeter/50;
				
				set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, RibbonKB_scaling);
				set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, RibbonKB_scaling);
				
				set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, floor(Ribbon_damage));

				attack = AT_NTHROW;


			break;
			
			// Balloon
			case 3:
				hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);

				Balloon_hitstun_multi = Balloon_hitstun_multi + (LoveMeter/200);
				set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, Balloon_hitstun_multi);
				
				attack = AT_UTHROW;
			break;
		}
		state_timer = 0;
		window = 0;
		window_timer = 0;
	}
}


if (my_hitboxID.attack == AT_FTHROW || 
	my_hitboxID.attack == AT_UTHROW || 
	(my_hitboxID.attack == AT_NTHROW && my_hitboxID.hbox_num == 2) || 
	(my_hitboxID.attack == AT_DTHROW && my_hitboxID.hbox_num == 1) ){

		if (LM_a != 0){
			var digit_1 = noone;
			digit_1 = instance_create(other.x - 12, other.y - 40, "obj_article2");
			digit_1.player_id = id;
			digit_1.player = player;
			digit_1.vsp = -2;
			digit_1.sprite_index = sprite_get("callie_num");
			digit_1.image_index = LM_a;
			digit_1.image_speed = 0;
			digit_1.state_timer = 2;
			digit_1.state = 5;
			digit_1.depth = -200;
		}
		
		var digit_2 = noone;
		digit_2 = instance_create(other.x, other.y - 40, "obj_article2");
		digit_2.player_id = id;
		digit_2.player = player;
		digit_2.vsp = -2;
		digit_2.sprite_index = sprite_get("callie_num");
		digit_2.image_index = LM_b;
		digit_2.image_speed = 0;
		digit_2.state_timer = 2;
		digit_2.state = 5;
		digit_2.depth = -200;
		
		var digit_3 = noone;
		digit_3 = instance_create(other.x + 12, other.y - 40, "obj_article2");
		digit_3.player_id = id;
		digit_3.player = player;
		digit_3.vsp = -2;
		digit_3.sprite_index = sprite_get("callie_num");
		digit_3.image_index = LM_c;
		digit_3.image_speed = 0;
		digit_3.state_timer = 2;
		digit_3.state = 5;
		digit_3.depth = -200;
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
	candy_pos_x = 0;
	candy_pos_y = 0;
	candy_identity = string(hit_player_obj);
	if (LoveMeter >= 200){
		full_candy_bar = true
	}
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

	if (my_hitboxID.hbox_num == 2){
		other.isRibbon = false
	}
}

// Sets up Balloon Status Effect
if (attack == AT_UTHROW){
	other.isBalloon = true;
	other.balloon_id = id;
	other.balloon_got_hit = false;
	other.balloon_first_hit = false;
	if (other.BalloonCounter == 0){
		other.BalloonCounter = LoveMeter  + 200;
		LoveMeter = 0;
	}
}