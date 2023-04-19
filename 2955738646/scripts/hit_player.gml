/*
if ((my_hitboxID.attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR ) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}
*/

/*
//if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	//if(attack == (AT_USPECIAL || AT_FSPECIAL || AT_NSPECIAL || AT_DSPECIAL)){
if !(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num < 3
	|| my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num < 4 
	|| my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num < 3
	|| my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num < 2
	|| my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num < 4
	|| my_hitboxID.attack == AT_USTRONG
	|| my_hitboxID.attack == AT_FSTRONG
	|| my_hitboxID.attack == AT_DSTRONG){
	has_hit_id = noone;
}
	//}
//}
*/
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
	window = 2;
	window_timer = 15;
	move_cooldown[AT_USPECIAL_2] = 50;
	marked_id = true;
	other.should_make_shockwave = false;
	other.targeted = true;
	other.target_time = 2;
	target_addup += 1;
	//if (other.hitstop > 1){ sound_play(asset_get("mfx_player_found")); }
	}
	if (my_hitboxID.hbox_num > 2){
		//other.targeted = false;
		//hsp = -10 * spr_dir;
		//vsp = -10;
		other.target_time -= 1;
		if (other.target_time == 0){
		other.targeted = false;
		}
	}
	if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
		//other.targeted = false;
		//hsp = -20 * spr_dir;
		//vsp = -20;
	}
	if (my_hitboxID.hbox_num == 5){
		x = my_hitboxID.x;
		y = my_hitboxID.y+35;
		//other.targeted = false;
		//hsp = -20 * spr_dir;
		//vsp = -20;
	}
}

if (timestop > 0){
	timestop_amount -= 3;
	timestop_BG.image_alpha -= 0.1;
	if (my_hitboxID.attack == AT_NSPECIAL){
		timestop_amount -= 2;
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
/*
if ((my_hitboxID.attack == AT_USPECIAL) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}

if ((my_hitboxID.attack == AT_FSTRONG) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}

if ((my_hitboxID.attack == AT_DATTACK) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}
if ((my_hitboxID.attack == AT_DSTRONG) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}
if ((my_hitboxID.attack == AT_UTILT && window == 2) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        window = 4;
        window_timer = 0;
    }
}
*/

if (my_hitboxID.attack == AT_FSTRONG){
	if (hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    	}
	}
	if (my_hitboxID.hbox_num == 2){
	if (hit_player_obj.should_make_shockwave == true){
	spawn_hit_fx(my_hitboxID.x+6 * spr_dir, my_hitboxID.y-24, (Explosive_Punch));
	}
	if (hit_player_obj.should_make_shockwave == false){
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
		y = y-2;
		dspecial_id = hit_player_obj;
		destroy_hitboxes();
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

if((my_hitboxID.attack == AT_DSPECIAL_2 && window == 2) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
	set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6);
	window = 4;
	window_timer = 0;
}

//Timestop hitboxes
if (timestop == true){
	with (other){
		timestop_damage += enemy_hitboxID.damage; 
			if (get_player_damage( player ) > prev_damage){
		set_player_damage( player, prev_damage );
		}
	}
	if (other.timestop_hit == false){
		if !(attack == AT_EXTRA_3 && hbox_num == 4){
		//other.timestop_damage = 1;
		other.timestop_hit = true;
		var timestop_hb = create_hitbox(AT_EXTRA_3, 2, other.x+20, other.y-90);
		timestop_hb.follow = hit_player_obj.id;
		}
	}
	if (attack == AT_EXTRA_3 && hbox_num == 4){
		//if (other.timestop_damage > 0){ other.timestop_damage -= 1; timestop_hb.destroyed = true; }
	}
}

if (timestop == false){
	with (other){ timestop_damage -= 1; }
}
