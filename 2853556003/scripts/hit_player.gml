
if(attack == AT_JAB && my_hitboxID.attack == AT_JAB){
	if(my_hitboxID.hbox_num != 3){
		lockon_id = hit_player_obj
	}
}

if(my_hitboxID.attack == AT_FSTRONG){
	if(my_hitboxID.hbox_num == 1){
		if(hit_player_obj.x < x + 60 && spr_dir == 1){
			hit_player_obj.x = lerp(x + 68*spr_dir, hit_player_obj.x, 0.5)
		}else if(hit_player_obj.x > x - 60 && spr_dir == -1){
			hit_player_obj.x = lerp(x + 68*spr_dir, hit_player_obj.x, 0.5)
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
			if(!(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1)){
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
			}else{
				with(hurricane){
					player_id.spawned_riptide = true
	    			state = 1
	    			state_timer = 0
	    			image_index = 0
	    			hsp = 7.5 * player_id.spr_dir
	    			if(!instance_exists(player_id.sawblade)){
		    			player_id.sawblade = instance_create(x, y,"obj_article2");
		    			player_id.sawblade.spr_dir = player_id.spr_dir
		    			player_id.sawblade.type = 1
		    			player_id.sawblade.hsp = (player_id.sawblade_speed / 4) * player_id.sawblade.spr_dir
		    			player_id.sawblade.vsp = player_id.sawblade_jumpspeed / 2
		    			sound_play(asset_get("sfx_spin"))
		    			if(holding_bomb){
		    				player_id.sawblade.big = true
		    				with(player_id.sawblade){
		    					sound_play(asset_get("sfx_waterwarp"))
		    				}
		    			}else{
		    				with(player_id.sawblade){
		    					sound_play(asset_get("sfx_waterwarp_start"))
		    				}
		    			}
		    			if(bomb_strong) player_id.sawblade.strong = true
	    			}
	
	    			holding_bomb = false
				}
			}
		}
	}
	if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2){
		if(hurricane.grabbedid != hit_player_obj && hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND){
			hurricane.grabbedid = hit_player_obj
		}
		if(hurricane.multihits == 0){
			hurricane.state_timer = 1
		}
		if(hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND){
			hurricane.multihits += 1
		}
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
if(my_hitboxID.attack == AT_NSPECIAL){
	if(instance_exists(my_hitboxID.waterBomb_id)){
		if(my_hitboxID.hbox_num == 1 && my_hitboxID.waterBomb_id.got_hit_timer <= 0){
			if(!my_hitboxID.waterBomb_id.strong){
				my_hitboxID.waterBomb_id.state = 2
				my_hitboxID.waterBomb_id.state_timer = 0
			}else{
				my_hitboxID.waterBomb_id.state = 3
				my_hitboxID.waterBomb_id.state_timer = 0
			}
		}else if(my_hitboxID.hbox_num == 1 && my_hitboxID.waterBomb_id.got_hit_timer > 0){
			instance_destroy(my_hitboxID.waterBomb_id.waterBomb_hitbox)
		}
		if(my_hitboxID.hbox_num == 2){
			move_cooldown[AT_NSPECIAL] = max(0, move_cooldown[AT_NSPECIAL] - 60)
			
		}
		if(my_hitboxID.hbox_num == 3){
			move_cooldown[AT_NSPECIAL] = max(0, move_cooldown[AT_NSPECIAL] - 15)
		}
	}
}

if(instance_exists(sawblade)){
	if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3){
		sawblade.hitstun = 3
		if(sawblade.state == 1){
			sawblade.old_vsp += 0.35
			sawblade.vsp += 0.35
		}
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	fspecial_can_attack = true
}


//Runes
if((has_rune("F") || all_runes)){
	if(my_hitboxID.attack == AT_NSPECIAL){
	    hit_player_obj.cheesed = 300
	}else if(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num > 1 || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG
	|| my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
		if(hit_player_obj.cheesed > 50){
			sound_play(sound_get("sfx_collecttoppin"))
			spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 20, vfx_cheesed_fx)
			hit_player_obj.cheesed = 0
			hit_player_obj.hitstop += 40
			hit_player_obj.hitstop_full += 40
		}
	}
}

if((has_rune("J") || all_runes)){
	if(!instance_exists(sawblade) && my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
		spawned_riptide = true
		sawblade = instance_create(my_hitboxID.x, my_hitboxID.y,"obj_article2");
		sawblade.spr_dir = spr_dir
		sawblade.type = 1
		sawblade.old_hsp = hit_player_obj.old_hsp / 1.25
		sawblade.old_vsp = hit_player_obj.old_vsp / 1.25
		sawblade.hitstun = 10 //NOT WOKRING
		sawblade.big = true
		sound_play(asset_get("sfx_waterwarp"))
	}
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
