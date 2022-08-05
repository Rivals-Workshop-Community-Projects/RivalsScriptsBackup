
with (asset_get("pHitBox")){
	if (place_meeting(x,y,other.id) && other.player_id = player_id && attack == AT_NSPECIAL){
			other.spr_dir = spr_dir;
			if (hbox_num == 1 && other.nspecial_fly = false){
				other.hsp += 8*other.spr_dir;
				other.nspecial_push = true;
				destroyed = true;
			}
			if (hbox_num == 2){
				other.hsp += 10*other.spr_dir;
				other.nspecial_push = false;
				other.nspecial_fly = true;
				destroyed = true;
			}
		}
}

if (nspecial_push){
	if (hsp != 0){
		hsp -= 0.5*spr_dir;
	}
}

if (hsp == 0){
	nspecial_push = false;
	nspecial_fly = false;
}

if (nspecial_fly){
	if (state_timer%5 == 0){
		spawn_hit_fx(x - 10*spr_dir, y, player_id.nspecial_trail2);
		sound_play(asset_get("sfx_ori_uptilt_single"),false,noone,.5);
	}
	if (hsp != 0){
		hsp -= 0.25*spr_dir;
	}
}

if (instance_exists(spawn_hitbox)){
	spawn_hitbox.x = x;
	spawn_hitbox.y = y;
}

if (instance_exists(strong_hitbox)){
	if (strong_dir == 1){
		strong_hitbox.x = x+50*spr_dir;
		strong_hitbox.y = y-2;
	}
	if (strong_dir == 2){
		strong_hitbox.x = x;
		strong_hitbox.y = y-50;
	}
	if (strong_dir == 3){
		strong_hitbox.x = x;
		strong_hitbox.y = y+50;
	}
}

if (instance_exists(dspecial_hitbox)){
	dspecial_hitbox.x = x;
	dspecial_hitbox.y = y;
}

//State 0: Spawn and travel
if (state == 0){
	image_index += .3;
	hsp = 10*spr_dir;
	if (player_id.minion_controlling && player_id.up_down && vsp > -7){
		vsp += -0.75;
	}
	if (player_id.minion_controlling && player_id.down_down && vsp < 7){
		vsp += 0.75;
	}
	if (state_timer%5 == 0){
		spawn_hit_fx(x - 10*spr_dir, y, player_id.nspecial_trail1);
	}
}

//State 1: Take form
if (state == 1){
	sprite_index = sprite_get("minion_form");
	image_index += .2;
	if (image_index == 1){
		spawn_hitbox = create_hitbox(AT_FSPECIAL, 1, x, y-2);
	}
	hsp = 0;
	vsp = 0;
	if (image_index > 3.6){
		state = 2;
	}
}

//State 2: Idle
if (state == 2){
	sprite_index = sprite_get("minion_idle");
	image_index += .15;
}

//State 3: FSpecial Pop
if (state == 3){
	sprite_index = sprite_get("minion_pop");
	image_index += .2;
	if (image_index == 1){
		sound_play(asset_get("sfx_forsburn_combust"));
	}
	if (image_index == 2){
		spawn_hitbox = create_hitbox(AT_FSPECIAL, 1, x, y-2);
	}
	if (image_index > 7.6){
		shoulddie = true;
	}
}

//State 4: Minion Strong
if (state == 4){
	if (strong_dir == 1){
		sprite_index = sprite_get("minion_fstrong");
	}
	if (strong_dir == 2){
		sprite_index = sprite_get("minion_ustrong");
	}
	if (strong_dir == 3){
		sprite_index = sprite_get("minion_dstrong");
	}
	
	if (player_id.not_starting_strong == true){
		image_index += .25;
	}
	
	if (image_index == 3){
		sound_play(asset_get("sfx_absa_uair"));
		sound_play(asset_get("sfx_absa_new_whip1"));
	}
	
	if (image_index == 4){
		if (strong_dir == 1){
			strong_hitbox = create_hitbox(AT_FSTRONG, 3, x+50*spr_dir, y-2);
		}
		if (strong_dir == 2){
			strong_hitbox = create_hitbox(AT_USTRONG, 8, x, y-50);
		}
		if (strong_dir == 3){
			strong_hitbox = create_hitbox(AT_DSTRONG, 3, x, y+50);
		}
	}
	if (image_index > 7.6){
		state = 2;
	}
	
}

//State 5: Minion DSpecial
if (state == 5){
	sprite_index = sprite_get("minion_dspecial");
	image_index += .25;
	if (image_index == 1.75){
		spawn_hit_fx( x, y, player_id.blob2 );
	}
	if (image_index == 2){
		sound_play(asset_get("sfx_frog_nspecial_cast"),false,noone,.7);
	}
	if (image_index == 2.75){
		player_id.dspecial_orb = 0;
	}
	
	if (image_index == 6){	
		sound_play(asset_get("sfx_spin_longer"),false,noone,1.5,.8);
	}
	if (image_index == 13.75 && minion_orb > 1){
		image_index = 6;
		minion_orb--;
	}
	if (image_index == 15){
		sound_play(asset_get("sfx_frog_dspecial_swallow"),false,noone,.9);
	}
	if (image_index == 19){
		sound_play(asset_get("sfx_frog_nspecial_shove"),false,noone,.9);
	}
	if (image_index == 19.75){
		state = 2;
	}
	if (image_index%2 == 0 && image_index > 5.75 && image_index < 13.75){
		dspecial_hitbox = create_hitbox(AT_FSPECIAL_2, 1, x, y);
		sound_play(asset_get("sfx_buzzsaw_throw"),false,noone,0.7,.8);
	}
}

//State 6: Dying Pop
if (state == 6){
	sprite_index = sprite_get("minion_pop");
	image_index += .25;
	if (image_index == 1){
		sound_play(asset_get("sfx_forsburn_combust"));
	}
	if (image_index == 6){
		move_cooldown[AT_FSPECIAL] = 200;
	}
	if (image_index > 7){
		shoulddie = true;
	}
}

if (state == 4 || state == 5){
	with (asset_get("pHitBox")){
    	if (place_meeting(x,y,other.id) && kb_value > 0){
    		other.desired_hitstop = clamp(hitpause + damage * hitpause_growth * 0.05, 0, 20);
				if (type == 1 && player_id != other.player_id){
			        if (player_id.hitpause == false) {
			            player_id.old_vsp = player_id.vsp;
			            player_id.old_hsp = player_id.hsp;
			        }
			        player_id.hitpause = true;
			        player_id.has_hit = true;
			        if (player_id.hitstop < other.desired_hitstop) {
			            player_id.hitstop = other.desired_hitstop;
			            player_id.hitstop_full = other.desired_hitstop;
			        }
			        other.le_hit_effect = hit_effect;
					sound_play(pHitBox.sound_effect);
					with (other){spawn_hit_fx(x, y, le_hit_effect).pause = 7;}
					has_hit = true;
					if (other.state == 5){
						other.player_id.dspecial_orb = 0;
						other.minion_orb = 0;
					}
					other.state = 6;
					other.image_index = 0;
				}
	    }
	}
    
}


//Destroy when offstage
if (x > room_width or y > room_height + 200){
    shoulddie = true;
}

//Dying
if (shoulddie == true){
	player_id.move_cooldown[AT_FSPECIAL] = 90;
	player_id.killarticles = false;
    instance_destroy();
    exit;
}


//Make time progress
state_timer++;



