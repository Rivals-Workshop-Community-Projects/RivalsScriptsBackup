
if(attack == AT_JAB && my_hitboxID.attack == AT_JAB){
	if(my_hitboxID.hbox_num != 3){
		lockon_id = hit_player_obj
	}
}

if(my_hitboxID.attack == AT_FSTRONG){
	if(my_hitboxID.hbox_num == 1){
		if(hit_player_obj.x < x + 60 && spr_dir == 1){
			hit_player_obj.x = lerp(x + 70*spr_dir, hit_player_obj.x, 0.5)
		}else if(hit_player_obj.x > x - 60 && spr_dir == -1){
			hit_player_obj.x = lerp(x + 70*spr_dir, hit_player_obj.x, 0.5)
		}
	}
}

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	/*
	move_cooldown[AT_NSPECIAL] = 0
	if(dspecial_used == true){
		dspecial_used = false
		move_cooldown[AT_DSPECIAL] = 2
	}else{
		bead_thump = 4
	}
	waterBomb_charge_stun = 0
	thump = 4
	sound_play(asset_get("mfx_star"))
	*/
	vsp = -6
	hsp = -4*spr_dir
	old_vsp = -6
	old_hsp = -4*spr_dir
}

if(instance_exists(hurricane)){
	if(hurricane.grabbedid != noone){
		if(hit_player_obj == hurricane.grabbedid && !(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) && hurricane.state == 0){
			with(hurricane){
				state = 1
				state_timer = 0
				image_index = 0
				with(player_id){
					if(hurricane.holding_bomb){
						waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
						if(hurricane.bomb_strong){
							waterBomb.strong = true
							waterBomb.state = 3
							waterBomb.state_timer = 0
							waterBomb.image_index = 0
						}else{
							waterBomb.strong = false
							waterBomb.state = 2
							waterBomb.state_timer = 0
							waterBomb.image_index = 0
						}
						waterBomb.spr_dir = 1
						hurricane.holding_bomb = false
					}
				}
			}
		}
	}
	if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2){
		if(hurricane.grabbedid != hit_player_obj){
			hurricane.grabbedid = hit_player_obj
		}
		if(hurricane.multihits == 0){
			hurricane.state_timer = 1
		}
		hurricane.multihits += 1
	}
}

/*
if(my_hitboxID.attack == AT_BAIR){
	if(my_hitboxID.hbox_num != 5){
		grabbedid = hit_player_obj;
        hit_player_obj.grabbed = 1;
		grabbedid.ungrab = 0;
	}
}*/

if(my_hitboxID.attack == AT_DATTACK){
	if(my_hitboxID.hbox_num == 1 && hit_player_obj.super_armor = false && hit_player_obj.invincible = false){
		grabbedid = hit_player_obj;
		hit_player_obj.grabbed = 1;
		grabbedid.ungrab = 0;
		dispos_x = x - hit_player_obj.x
		dispos_y = y - hit_player_obj.y
	}
}

if(instance_exists(waterBomb)){
	if(my_hitboxID.attack == AT_NSPECIAL){
		if(my_hitboxID.hbox_num == 1 && waterBomb.got_hit_timer <= 0){
			if(!waterBomb.strong){
				waterBomb.state = 2
				waterBomb.state_timer = 0
			}else{
				waterBomb.state = 3
				waterBomb.state_timer = 0
			}
		}else if(my_hitboxID.hbox_num == 1 && waterBomb.got_hit_timer > 0){
			instance_destroy(waterBomb.waterBomb_hitbox)
		}
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	fspecial_can_attack = true
}


//Ai stuff
if(ai == 1){
	last_move_hit = attack
	last_hit_timer = 60
	
    if(attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        if(fspecial_waver < 3) fspecial_waver += 1
    }
    if(attack == AT_DATTACK && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) ){
        if(dattack_waver < 3) dattack_waver += 0.33
    }
    if(attack == AT_DTILT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        if(dtilt_waver < 3) dtilt_waver += 1
    }
}

//Old Torga
