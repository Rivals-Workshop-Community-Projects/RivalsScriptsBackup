//hit_player.gml

//hitplayerdamage = get_player_damage( hit_player_obj )
hit_player_obj.hitBySleepingAttack = true; // just in case
damage_dealt = get_hitbox_value( my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE )
var sleepVFX = pillow_hit_fx_med;
if (has_rune("H") && hit_player_obj.NotSleepKirby_IsSleeping == true){
	//take_damage( hit_player_obj, player, (damage_dealt * 2) );
	//set_player_damage( hit_player_obj, get_player_damage( hit_player_obj ) + (damage_dealt * 2) );
	take_damage(hit_player_obj.player, player, damage_dealt + damage_dealt + damage_dealt);
	sound_play(sfx_canvas_curse_death);
	shake_camera( 8, 4 )
	spawn_hit_fx( hit_player_obj.x * hit_player_obj.spr_dir, hit_player_obj.y - 30, burst_bubble_charged_vfx );
	spawn_hit_fx( hit_player_obj.x * hit_player_obj.spr_dir, hit_player_obj.y - 30, 304 );
}

switch (my_hitboxID.attack){ //lol switch statement
	case AT_EXTRA_1: 
		sound_play(sfx_smash_bros_crack);
		shake_camera( 18, 6 )
		break;
	/*
	case AT_JAB:
		if (my_hitboxID.hbox_num == 1){
			var hit;
			hit = spawn_hit_fx(hit_player_obj.x+2,hit_player_obj.y-20,pillow_hit_fx_sml)
			hit.depth = depth-4
		} else if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
			var hit;
			hit = spawn_hit_fx(hit_player_obj.x+2,hit_player_obj.y-20,pillow_hit_fx_sml)
			hit.depth = depth-4
		} else if (my_hitboxID.hbox_num == 4){
			var hit;
			hit = spawn_hit_fx(hit_player_obj.x+2,hit_player_obj.y-20,pillow_hit_fx_sml)
			hit.depth = depth-4
		}
		break;
	*/
	case AT_DTILT:
		//hit_player_obj.x = x + 42 * spr_dir
		//hit_player_obj.y = y - 14
		//spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 30, 302 );
		/*
		attack_end();
		set_attack( AT_EXTRA_2 );
		window_timer = 0
		window = 1
		destroy_hitboxes();
		sound_play(sfx_bounce);
		*/
		break;
	case AT_FAIR:
		//sound_play(sfx_fighter_blow1);
		break;
	case AT_FAIR:
		if (my_hitboxID.hbox_num != 6){
			//hit_player_obj.x += 18 * spr_dir
			//hit_player_obj.y += 22
		}
		break;
	/*
	case AT_UAIR:
		var hit;
		hit = spawn_hit_fx(hit_player_obj.x + 10 * (hit_player_obj.spr_dir),hit_player_obj.y-18,pillow_hit_fx_sml)
		hit.depth = depth-4
		break;
	*/
	/*
	case AT_DAIR:
		if (my_hitboxID.hbox_num < 3 && my_hitboxID.hbox_num != 6){//>
			//hit_player_obj.x = x + 6 * spr_dir
			//hit_player_obj.y = y + 20
			
			hit_player_obj.x -= 4 * hit_player_obj.spr_dir
			hit_player_obj.y -= 6
		}
		break;
	*/
	case AT_FSTRONG:
		sound_play(sfx_fighter_blow1);
		break;
	case AT_NSPECIAL:
		sound_play(asset_get("sfx_blow_medium3"));
		/*
		if (my_hitboxID.burst_bubble_has_ability_star == true){
			//sound_play(sfx_ability_get);
			//sound_play(sfx_death);
			//hit_player_obj.hey_person_who_just_got_hit_by_burst_bubble_with_star_fall_asleep_please = true;
			create_hitbox(AT_DSPECIAL, 2, hit_player_obj.x, hit_player_obj.y + 4);
			essence_got_parried = 0
		}
		*/
		if (my_hitboxID.hbox_num >= 6){
			var instaSleepHB = create_hitbox(AT_DSPECIAL, 1, hit_player_obj.x, hit_player_obj.y - 30);
			instaSleepHB.hitbox_timer = 14;
		}
		break;
	case AT_FSPECIAL:
		essence_got_parried = false
		if (has_rune("L")){
			move_cooldown[AT_FSPECIAL] = 200;
		}
		if (my_hitboxID.hbox_num != 3){
			destroy_hitboxes();
			move_cooldown[AT_FSPECIAL] = 40;
			window = 5;
			window_timer = 0;
			y = y - 1;
			hsp = -5 * spr_dir;
			if (my_hitboxID.hbox_num == 1){
				if (hit_player_obj.isCurrSleeping == false && hit_player_obj.clone == false && hit_player_obj.super_armor == false && hit_player_obj.soft_armor == 0){
					inflictSleepStatus();
				}
			} else if (my_hitboxID.hbox_num == 2){
				var hatThrowVisual = create_hitbox(AT_FSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 20);
				hatThrowVisual.vsp = -10;
			}
		}
		break;
	case AT_DSPECIAL:
		if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)&& hit_player_obj.super_armor == false && hit_player_obj.soft_armor == 0){
			spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-20,ability_star_hit_fx)
			destroy_hitboxes();
			hit_player_obj.should_make_shockwave = false
			my_hitboxID.make_shockwave = false
			if (hit_player_obj.NotSleepKirby_IsSleeping == false && hit_player_obj.clone == false){
				sound_play(sfx_ability_get);
				sound_play(sfx_death);
				if (my_hitboxID.hbox_num == 1){
					copy_essence_hit = true
				}
				if (hit_player_obj.isCurrSleeping == false && hit_player_obj.clone == false && hit_player_obj.super_armor == false && hit_player_obj.soft_armor == 0){
					inflictSleepStatus();
					with (currEssence){
						starHitSomeone = true;
						state = 3;
						state_timer = 261;
					}
				}
			} else if (hit_player_obj.NotSleepKirby_IsSleeping == true && hit_player_obj.clone == false){
				hit_player_obj.NotSleepKirby_IsSleeping = false;
				hit_player_obj.NotSleepKirby_SleepTick = 0;
				copy_essence_hit = true;
				hit_player_obj.state_timer = -4;
			}
		} else if (my_hitboxID.hbox_num == 2){
			hit_player_obj.x = my_hitboxID.x;
			hit_player_obj.y = my_hitboxID.y;
		} else if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3) && (hit_player_obj.super_armor != false || hit_player_obj.soft_armor != 0)){
			if (my_hitboxID.hbox_num == 1){
				copy_essence_hit = true;
			}
		}
		essence_got_parried = false;
		break;
}

if(has_runes_equipped){
	if((my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) || my_hitboxID.attack == AT_DSPECIAL){
		with(hit_player_obj){
			if (url == 2284823424){
				bed_x = x;
				bed_y = y;
				bed_spawn = true;
				with chat_owner{
					ds_list_add(chat_txt, "Respawn point set");
					ds_list_add(chat_tmr, chat_tmr_max);
					ds_list_add(chat_col, c_white);
				}
			}
		}
	}
}
if (my_hitboxID.attack != AT_FSPECIAL && my_hitboxID.attack != AT_DSPECIAL){
	if (hit_player_obj.NotSleepKirby_IsSleeping == true){
		hit_player_obj.NotSleepKirby_IsSleeping = false
		can_move = true
		can_jump = true
	}
	hit_player_obj.NotSleepKirby_SleepTimer = 0
}

//--------------------------------------------

#define inflictSleepStatus()
//print("awake player should now go to sleepy sleepy");
sound_play(sfx_death, false, noone, 0.95, 0.9);
hit_player_obj.isCurrSleeping = true;
hit_player_obj.hitBySleepingAttack = false;
hit_player_obj.damageIncrementTick = 0;
hit_player_obj.sleepHatSpr = sprite_get("fspecial_enemy_hat");
hit_player_obj.sleepID = id;
hit_player_obj.sleepFXspr = sprite_get("pillow_hit_fx_sml");
hit_player_obj.sleepVFX = hit_fx_create(sleepFXspr, 27);