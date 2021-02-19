//update

//Dash Attack off-platform superspeed fix
if (attack == AT_DATTACK && state_cat != SC_HITSTUN && free && abs(hsp) > 30) {
    hsp = air_max_speed * spr_dir;
}

//Lightning effect
if ((attack != AT_FSPECIAL || window == 1) || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) {
    lightning_fx = 0;
}
if (lightning_fx > 8) {
    lightning_fx = 1;
}

//Reset Up Special
if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) {
    move_cooldown[AT_USPECIAL] = 0;
}

//Reset Down Special
if (!free) {
    can_stall = true;
}

//Kirby
if (variable_instance_exists(self, "swallowed") && variable_instance_exists(self, "enemykirby")) {
	if (swallowed) {
		swallowed = false;
		var ability_spr = sprite_get("kirb");
		var ability_hurt = sprite_get("kirb_hurt");
		var special_sfx = sound_get("nspecial");
		var ori_sfx = asset_get("sfx_ori_charged_flame_hit");
		var blow_sfx = asset_get("sfx_blow_weak2");

		with (enemykirby) {
			set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
			set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
			set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
			set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);

			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, special_sfx);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 7);

			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

			set_num_hitboxes(AT_EXTRA_3, 2);

			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 34);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -34);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 46);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 46);
			set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .6);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 3);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ori_sfx);

			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 60);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 34);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -64);
			set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 20);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 20);
			set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
			set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .3);
			set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 4);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 301);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, blow_sfx);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GRAVITY, .3);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
		}
	}

	var proj_spr = 0;
	var gw_food1 = sprite_get("food1");
	var gw_food2 = sprite_get("food2");
	var gw_food3 = sprite_get("food3");
	var gw_food4 = sprite_get("food4");

	with (enemykirby) {
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_EXTRA_3) {
			trigger_b_reverse();
			if (window == 1 && window_timer == 1) {
				set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 2 + random_func(0, 3, false));
				set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, -4 - random_func(1, 4, false));
				proj_spr = 1 + random_func(2, 4, true);
				switch (proj_spr) {
					case 1:
						set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, gw_food1);
					break;
					case 2:
						set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, gw_food2);
					break;
					case 3:
						set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, gw_food3);
					break;
					case 4:
						set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, gw_food4);
					break;
				}
				gw_in_air = false;
				if (free) {
					gw_in_air = true;
				}
			}
			if (window == 2 && window_timer > 15 && window_timer < 21 && special_pressed && !was_parried) {
				window = 1;
				window_timer = 0;
				attack_end();
			}
			if (gw_in_air && !free && !was_parried && window_timer > 1) {
				set_state(PS_LAND);
			}
		}
    
		with (asset_get("pHitBox")) {
			if (attack == AT_EXTRA_3 && hbox_num == 2) {
				proj_angle += (5 * spr_dir);
				if (!free) {
					destroyed = true;
				}
			}
		}
	}
}

//Codec conversation
if (trummelcodecneeded) {
	trummelcodec = 17;
	trummelcodecmax = 21;
	trummelcodecsprite1 = sprite_get("idle");
	trummelcodecsprite2 = sprite_get("idle");
	var page = 0;

	//Page 0
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 1;
	trummelcodecline[page, 1] = "Hey, look! It's";
	trummelcodecline[page, 2] = "Mr. Game & Watch!";
	trummelcodecline[page, 3] = "He's my favorite";
	trummelcodecline[page, 4] = "character...";
	page++;

	//Page 1
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;
	trummelcodecline[page, 1] = "...to punch the face of!";
	trummelcodecline[page, 2] = "";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 2
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;
	trummelcodecline[page, 1] = "I'll flatten his already";
	trummelcodecline[page, 2] = "flat face with my bare";
	trummelcodecline[page, 3] = "hands!";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 3
	trummelcodecspeaker[page] = 2;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "wow alto chill";
	trummelcodecline[page, 2] = "";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 4
	trummelcodecspeaker[page] = 2;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "talk about him before";
	trummelcodecline[page, 2] = "punching him will you";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 5
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "Fine...";
	trummelcodecline[page, 2] = "";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 6
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "Mr. Game & Watch comes";
	trummelcodecline[page, 2] = "from small electronic";
	trummelcodecline[page, 3] = "devices sold by Nintendo";
	trummelcodecline[page, 4] = "back in 1980.";
	page++;

	//Page 7
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "These were known as";
	trummelcodecline[page, 2] = "'Game & Watch'.";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 8
	trummelcodecspeaker[page] = 2;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "talk about watchception";
	trummelcodecline[page, 2] = "";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 9
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "His moves have him use";
	trummelcodecline[page, 2] = "different objects from";
	trummelcodecline[page, 3] = "the many games the";
	trummelcodecline[page, 4] = "'Game & Watch' had.";
	page++;

	//Page 10
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "Even his respawn";
	trummelcodecline[page, 2] = "platform comes from";
	trummelcodecline[page, 3] = "one of these.";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 11
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;
	trummelcodecline[page, 1] = "His attacks are either";
	trummelcodecline[page, 2] = "good for combos or good";
	trummelcodecline[page, 3] = "for ending stocks.";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 12
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;
	trummelcodecline[page, 1] = "His recovery is also very";
	trummelcodecline[page, 2] = "good because of how high";
	trummelcodecline[page, 3] = "his USPECIAL can go, plus";
	trummelcodecline[page, 4] = "the parachute.";
	page++;

	//Page 13
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 1;
	trummelcodecline[page, 1] = "However, speed and";
	trummelcodecline[page, 2] = "weight aren't his best";
	trummelcodecline[page, 3] = "attributes.";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 14
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 3;
	trummelcodecline[page, 1] = "That allows us to stay";
	trummelcodecline[page, 2] = "away from him pretty";
	trummelcodecline[page, 3] = "easily, whenever I'm not";
	trummelcodecline[page, 4] = "punching his face.";
	page++;

	//Page 15
	trummelcodecspeaker[page] = 2;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "can we talk about which";
	trummelcodecline[page, 2] = "nair is better";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 16
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;
	trummelcodecline[page, 1] = "No.";
	trummelcodecline[page, 2] = "";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 17
	trummelcodecspeaker[page] = 2;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "i like the parachute";
	trummelcodecline[page, 2] = "";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;

	//Page 18
	trummelcodecspeaker[page] = 0;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "I like the fishbowl more,";
	trummelcodecline[page, 2] = "it's so good for combos.";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;
	
	//Page 19
	trummelcodecspeaker[page] = 2;
	trummelcodecexpression[page] = 0;
	trummelcodecline[page, 1] = "but the parachute hits";
	trummelcodecline[page, 2] = "so hard";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;
	
	//Page 20
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;
	trummelcodecline[page, 1] = "Please, stop it!";
	trummelcodecline[page, 2] = "";
	trummelcodecline[page, 3] = "";
	trummelcodecline[page, 4] = "";
	page++;
	
	//Page 21
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;
	trummelcodecline[page, 1] = "I'm done with this, I'm";
	trummelcodecline[page, 2] = "going to punch that";
	trummelcodecline[page, 3] = "disgusting thing now!";
	trummelcodecline[page, 4] = "";
	page++;
}

//Abyss Runes
if (runesUpdated) {
	leave_ground_max = 5;
	max_jump_hsp = 5;
	air_max_speed = 5;
	air_accel = .3;
	if (runeA) {
		leave_ground_max = 5.5;
		max_jump_hsp = 5.5;
		air_max_speed = 5.5;
		air_accel = .45;
	}
	reset_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH);
	if (runeB) {
    	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
	}
	reset_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	if (runeC) {
    	set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
    	set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
	}
	set_num_hitboxes(AT_DSTRONG, 5);
	if (runeH) {
    	set_num_hitboxes(AT_DSTRONG, 6);
	}
}
if (runeK) {
    knockback_adj = 1.1 - (.1 * oil_charge);
}
if (free && state_cat == SC_AIR_NEUTRAL && taunt_pressed && runeN) {
	set_state(PS_ATTACK_AIR);
	set_attack(AT_PARACHUTE);
}