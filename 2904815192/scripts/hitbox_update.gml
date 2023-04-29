//hitbox_update.gml

if (attack == AT_NSPECIAL){
	Pocketable = false;
	
	grounds = 0;
	//walls = 0;	
	if (dice_number < 1){
		dice_number = 1;
	}
	if (diceState == 1){
		sprite_index = sprite_get("dice_thrown");
		proj_angle -= ((8+(.4*dice_number)) * spr_dir);
		image_index = dice_number-1;
		hsp *= 0.96;
		damage = dice_number;
		if (hitbox_timer == 1){
			//print(dice_number);
		}
		if (hitbox_timer < 1){
			width = 0;
			height = 0;
		} else {
			width = 28;
			height = 28;
		}
		if (dice_number_kind == 1){
			player_id.dice1X = x;
			player_id.dice1Y = y;
		}
		if (dice_number_kind == 2){
			player_id.dice2X = x;
			player_id.dice2Y = y;
		}
		if (has_hit == true){
			has_hit = false;
			hsp *= -0.75;
			vsp *= -0.75;
			diceState = 2;
			if (dice_number_kind == 1){
				diceState = 2;
				sound_play(player_id.sfx_monopoly_pc_dice_bounce1);
			} else {
				diceState = 2;
				sound_play(player_id.sfx_monopoly_pc_dice_bounce2);
			}
		}
		//===========
		//Touching Either Ground or a Wall
		//Ground
		//if (place_meeting(x+(0*spr_dir),y,(asset_get("par_block")))){
		if (!free){
			vsp = -1.5;
			y -= 2;
			spawn_hit_fx(x,y - 6, 302);
			if (dice_number_kind == 1){
				diceState = 2;
				sound_play(player_id.sfx_monopoly_pc_dice_bounce1);
			} else {
				diceState = 2;
				sound_play(player_id.sfx_monopoly_pc_dice_bounce2);
			}
		}/*
		//Wall
		if (place_meeting(x+(6*spr_dir),y-6,(asset_get("par_block")))){
			spawn_hit_fx(x,y - 6, 302);
			instance_destroy();
			exit;
		}*/
		diceLifetime = 0;
	} else if (diceState == 2){
		//yeah.
		damage = 0;
		hitstun_factor = 0;
		grounds = 0;
		proj_angle = 0;
		sprite_index = sprite_get("dice_number");
		mask_index = sprite_get("empty");
		image_index = dice_number-1;
		hsp *= 0.4;
		width = 0;
		height = 0;
		hitpause = 0;
		kb_value = 0;
		kb_scale = 0;
		hit_effect = 1;
		proj_break = 0;
		transcendent = false;
		sound_effect = asset_get("mario");
		//
		if (place_meeting(x,y, asset_get("pHitBox"))){
		//if (collision_rectangle(x - 16,y + 16,x + 16,y - 16, asset_get("pHitBox"), true, true )){
			var tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
			if (tmp_hb_id.player_id == player_id){
				if (tmp_hb_id.hbox_num == 1 && hbox_num == 1){
					if (tmp_hb_id.type == type){
						if (tmp_hb_id.attack == AT_NSPECIAL){
							if (tmp_hb_id.x < x){
								tmp_hb_id.x -= 13;
								x += 13;
							} else if (tmp_hb_id.x == x){
								if (tmp_hb_id.dice_number_kind > dice_number_kind){
									x -= 26;
								}
							}
						}
					}
				}
			} else {
				//
			}
		}
	}
}

if (attack == AT_FSPECIAL){
	if (hbox_num == 1){
		proj_angle += (5 * spr_dir);
	
		//===========
		//Touching Either Ground or a Wall, then destroying itself
		//Ground
		if (place_meeting(x+(0*spr_dir),y,(asset_get("par_block")))){
			spawn_hit_fx(x,y - 6, player_id.money_hit_fx_sml);
			instance_destroy();
			exit;
		}
		//Wall
		if (place_meeting(x+(6*spr_dir),y-6,(asset_get("par_block")))){
			spawn_hit_fx(x,y - 6, player_id.money_hit_fx_sml);
			instance_destroy();
			exit;
		}
		//===========
		//Blastzone stuffs lol
		if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b){//>
			instance_destroy();
			exit;
		}
		//===========
		
		//rune stuff
		if (effect == 0){
			if (hitbox_timer == length-1){
				spawn_hit_fx(x,y,player_id.money_hit_fx_sml);
			}
		}
		Pocketable = true;
		Pocket_hsp = 3.5 * spr_dir;
		Pocket_vsp = -12;
		if (Pocketed){
			hit_effect = 302;
		}
	}
}

//UStrong Rune
if (attack == AT_USTRONG && hbox_num == 3){
	proj_angle -= (4 * spr_dir);
	Pocketable = true;
	Pocket_hsp = 3.5 * spr_dir;
	Pocket_vsp = -18;
	if (hitbox_timer == 30){
		spawn_hit_fx(x,y-14,144)
		instance_destroy();
		exit;
	}
}

if (attack == AT_DSPECIAL){
	Pocketable = false;
}