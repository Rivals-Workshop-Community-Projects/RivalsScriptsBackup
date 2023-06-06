if (move_cooldown[AT_TAUNT_2] > 10){ move_cooldown[AT_TAUNT_2] -= 10; }

if (my_hitboxID.attack == AT_USPECIAL){
	if (my_hitboxID.hbox_num == 1){
		window = 5;
		window_timer = 0;
	}
}

if (my_hitboxID.attack == AT_USPECIAL_2){
	if (my_hitboxID.hbox_num <= 2){
		sound_play (sound_get ("ScouterFound")); 
	destroy_hitboxes();
	//window = 2;
	window_timer += 2;
	move_cooldown[AT_USPECIAL_2] = 90;
	marked_id = true;
	other.should_make_shockwave = false;
	other.targeted = true;
	other.target_time = 2;
	target_addup += 1;
	}
	if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
		other.target_time -= 1;
		//other.targeted = false;
		//hsp = -20 * spr_dir;
		//vsp = -20;
	}
	if (my_hitboxID.hbox_num == 5){
		destroy_hitboxes();
		x = my_hitboxID.x;
		y = my_hitboxID.y+35;
		other.targeted = false;
		other.maintarget = false;
		//hsp = -20 * spr_dir;
		//vsp = -20;
	}
}

if (my_hitboxID.attack == AT_UTILT){
	if (my_hitboxID.hbox_num == 1){
	//destroy_hitboxes();
	flyforward = false;
	//spr_dir = hit_player_obj.spr_dir * -1;
	}
}

if (my_hitboxID.attack == AT_DTILT){
	if (my_hitboxID.hbox_num < 7){
		hit_player_obj.should_make_shockwave = false;
	}
}

if (my_hitboxID.attack == AT_FAIR){
	if (my_hitboxID.hbox_num == 6){
		if (my_hitboxID.spark_rng == 0){ spawn_hit_fx(my_hitboxID.x+1 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit1)); }
		if (my_hitboxID.spark_rng == 1){ spawn_hit_fx(my_hitboxID.x+1 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit1)); }
		if (my_hitboxID.spark_rng == 2){ spawn_hit_fx(my_hitboxID.x-1 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit2)); }
		if (my_hitboxID.spark_rng == 3){ spawn_hit_fx(my_hitboxID.x-1 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit2)); }
	}
}

if (my_hitboxID.attack == AT_FSTRONG){
	if (my_hitboxID.hbox_num == 1){
		grabbedid = hit_player_obj;
		destroy_hitboxes();
	}
	if (grabbedid > 0 && grabbedid.state != PS_RESPAWN && grabbedid.invincible == false and grabbedid.soft_armor == 0 and !grabbedid.super_armor){
    if (grabbedid == noone){
        grabbedid = hit_player_obj;
        grabbedid.grabbed = 1;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    	}
	}
	if (my_hitboxID.hbox_num == 2){
	if (grabbedid.should_make_shockwave == true){
	spawn_hit_fx(my_hitboxID.x+6 * spr_dir, my_hitboxID.y-24, (Explosive_Punch));
	//sound_play(sound_get("f16999_001_str_se_0"));
	sound_play(sound_get("f15480_054_cmn_other_dokabaki_offset_0"));
	
	}
	if (grabbedid.should_make_shockwave == false){
	spawn_hit_fx(my_hitboxID.x+25 * spr_dir, my_hitboxID.y-20, (204));
		}
	}
}

if (my_hitboxID.attack == AT_DSTRONG && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}

if (attack == AT_FSPECIAL){
	vsp = -9;
	hsp = -9 * spr_dir;
	if (random_mecha == 1){ sound_play(sound_get("Mecha_Too_Slow")); random_mecha = 0; }
		//instance_destroy(SuperDash_Particle2);
		//instance_destroy(SuperDash_Particle3);
		//instance_destroy(SuperDash_Particle4);
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
		can_fast_fall = true;
		can_jump = true;
		can_attack = true;
	}
	if (my_hitboxID.hbox_num == 4){
		can_fast_fall = true;
		can_jump = true;
	}
}

if (attack == AT_NSPECIAL){
	hit_player_obj.white_flash_timer = 4;
	if (my_hitboxID.hbox_num <= 2){
		if (my_hitboxID.spark_rng == 0){ spawn_hit_fx(my_hitboxID.x+15 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit1)); }
		if (my_hitboxID.spark_rng == 1){ spawn_hit_fx(my_hitboxID.x+15 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit1)); }
		if (my_hitboxID.spark_rng == 2){ spawn_hit_fx(my_hitboxID.x+19 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit2)); }
		if (my_hitboxID.spark_rng == 3){ spawn_hit_fx(my_hitboxID.x+19 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit2)); }
	}
	if (my_hitboxID.hbox_num == 2){
		if (my_hitboxID.spark_rng == 0){ spawn_hit_fx(my_hitboxID.x-1 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit1)); }
		if (my_hitboxID.spark_rng == 1){ spawn_hit_fx(my_hitboxID.x-1 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit1)); }
		if (my_hitboxID.spark_rng == 2){ spawn_hit_fx(my_hitboxID.x-5 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit2)); }
		if (my_hitboxID.spark_rng == 3){ spawn_hit_fx(my_hitboxID.x-5 * spr_dir, my_hitboxID.y - my_hitboxID.spark_dist, (BulletHit2)); }
	}
	if (my_hitboxID.hbox_num == 4){
		can_fast_fall = true;
		can_jump = true;
	}
}

if (attack == AT_DSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		y = y-4;
		window = 4;
		window_timer = 0;
		dspecial_id = hit_player_obj;
		destroy_hitboxes();
	}
	if (my_hitboxID.hbox_num == 3){
		dspecial_id = hit_player_obj;
		window = 4;
		window_timer = 1;
	}
	if (my_hitboxID.hbox_num == 4){
		hsp = -10 * spr_dir;
		vsp = -2;
	}
}

if (attack == AT_EXTRA_2){
	attack = AT_FSPECIAL;
	window = 3;
	window_timer = 2;
	vsp = 0;
	hsp = 0;
	//x = hit_player_obj.x;
	y = y-0.5 * hit_player_obj.char_height;
}


//SUPER MECHA FUN TIME

if(my_hitboxID.attack == AT_DSPECIAL_2){
	if (my_hitboxID.hbox_num == 1){
		if (random_mecha == 1){ sound_play(sound_get("Mecha_NoUseRunning")); random_mecha = 0; }
	if (window == 2 && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
	set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6);
	window = 4;
	window_timer = 0;
		}
	}
}

//Timestop hitboxes
if (timestop == true){
	timestop_amount -= 1;
	with (other){
		timestop_damage += enemy_hitboxID.damage; 
			if (get_player_damage( player ) > prev_damage){
		set_player_damage( player, prev_damage );
		}
	}
	if (other.timestop_hit == false){
		if !(attack == AT_EXTRA_3 && hbox_num > 0){
		//other.timestop_damage = 1;
		other.timestop_hit = true;
		var timestop_hb = create_hitbox(AT_EXTRA_3, 2, other.x+2, other.y-9);
		timestop_hb.follow = hit_player_obj.id;
		}
	}
	if (attack == AT_EXTRA_3 && hbox_num == 3){
		//if (other.timestop_damage > 0){ other.timestop_damage -= 1; timestop_hb.destroyed = true; }
	}
}

if (timestop == false){
	//if (attack == AT_EXTRA_3 && hbox_num >= 3){
	with (other){ timestop_damage -= 1; }
	//}
}
