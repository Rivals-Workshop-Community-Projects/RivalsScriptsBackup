//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Spawn
- 1 Idle
- 2 Replicate Hitbox
- 3 Despawn
- 4 Break
- 5 Tempest
- 6 Tempest Boom


*/

//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//got hit code -----------------------------------------------------------------------------------------------------------

if (place_meeting(x, y, asset_get("pHitBox")) && hit_cooldown == 0 && state != 5) { //makes the article hittable when can_get_hit is true
    	with (asset_get("pHitBox")){
    		if (player != other.player_id.player){
    			if (place_meeting(x, y, other) && hit_priority != 0 && hitpause != 0 && kb_value != 0){
    				other.hitbox_hit = self;
    				if(type != 2){
    				player_id.hitpause = true;
                    player_id.hitstop = hitpause;
    				}
                    other.hitstop = hitpause;
    			}
    		}
    	}
    	if (hitbox_hit != noone){
    		if(hitbox_hit.hitpause != 0 && hitbox_hit.hit_priority != 0 && hitbox_hit.kb_value != 0){
    			with (hitbox_hit){
        			sound_play(sound_effect);
        			spawn_hit_fx(floor(x), floor(y), hit_effect);
    			}
    			if(hitbox_hit.type == 1){
    			hitbox_hit.player_id.hitpause = true;
    			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
    			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
    			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
    			hitbox_hit.player_id.has_hit = true;
    			hitstop = hitbox_hit.hitpause;
    			hitby = hitbox_hit.player_id;
    			}
    			/*
    			if(hitbox_hit.player_id.attack != AT_BAIR){
			print("Not a bair");
        	spr_dir = hitbox_hit.player_id.spr_dir*-1;
        }else{
        	print("Is a bair");
        	spr_dir = hitbox_hit.player_id.spr_dir;
        }
        */
        	hit_cooldown = 45;
        	sound_play(asset_get("sfx_ice_shatter"));
        	field_hp -= 1;
    		}
    		}
    }
    else{
    	hitbox_hit = noone;
    }
    
    if(hit_cooldown > 0){
    	hit_cooldown--;
    }

//spell collision stuff
//spell_collision = collision_circle(floor(x) , floor(y), spell_radius, pHitBox, true, false);

if(instance_exists(player_id.catalyst_spell) && player_id.catalyst_spell != 0){

if(collision_circle(floor(x) , floor(y), spell_radius, player_id.catalyst_spell, true, false)){
	with (pHitBox){
		if(player_id == other.field_owner){
			
		//break
	if (attack == AT_NSPECIAL and hbox_num == 4){	
        //print(other.id);
        with(player_id){
        death_target = noone;
        death_timer = 0;
        }
        destroyed = true;
        other.state = 4;
        other.state_timer = 0;
		}
		
		//tempest
	if (attack == AT_NSPECIAL and hbox_num == 2){	
        //print(other.id);
        other.tempest_dir = spr_dir;
        destroyed = true;
        other.state = 5;
        other.state_timer = 0;
		}
		
		//frogsong
	if (attack == AT_NSPECIAL and hbox_num == 8){
        //print(other.id);
        other.tempest_dir = spr_dir;
        destroyed = true;
        other.state = 7;
        other.state_timer = 0;
		}
		
		}
	}
}

}


if(state != 0 && state < 3 && state != 3){
//if (spell_collision != -4 && instance_exists(spell_collision)){
	/*
	if(collision_circle(floor(x) , floor(y), spell_radius, pHitBox, true, false)){
	with (pHitBox){
		if(player_id == other.field_owner){
			//print("test");
		//break
	if (attack == AT_NSPECIAL and hbox_num == 4){	
        //print(other.id);
        with(player_id){
        death_target = noone;
        death_timer = 0;
        }
        destroyed = true;
        other.state = 4;
        other.state_timer = 0;
		}
		
		//tempest
	if (attack == AT_NSPECIAL and hbox_num == 2){	
        //print(other.id);
        other.tempest_dir = spr_dir;
        destroyed = true;
        other.state = 5;
        other.state_timer = 0;
		}
		
		//frogsong
	if (attack == AT_NSPECIAL and hbox_num == 8){
        //print(other.id);
        other.tempest_dir = spr_dir;
        destroyed = true;
        other.state = 7;
        other.state_timer = 0;
		}
		
		
		}
	}
		
}
*/


//player collision stuff
uspecdetect = collision_circle(floor(x) , floor(y), 30, player_id, true, false);
if (uspecdetect != noone && instance_exists(uspecdetect)){
	with(uspecdetect){
		if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if(attack == AT_USPECIAL){
				if(window != 1 && window != 5 && !uspec_has_boosted){
					sound_play(sound_get("se_zelda_special_L01"));
				window = 1;
				window_timer = 2;
				uspec_has_boosted = true;
				other.need_to_die = true;
				}	
			}if(attack == AT_USPECIAL_2){
				if(window != 2 && !uspec_has_boosted){
        	set_attack( AT_USPECIAL );
        	hurtboxID.sprite_index = sprite_get("uspecial_hurt");
        	window = 1;
        	window_timer = 2;
        	uspec_has_boosted = true;
        	other.need_to_die = true;
				}
			}
		}
	}
}   
}

//turn leaf
if(state == 1 || state == 2 || state == 0){
	ring_turn_cycle -= 0.2;
}

if(state == 1){
	if(need_to_die){
		with(player_id){
		move_cooldown[AT_FSPECIAL] = 120;
		}
		state = 3;
		state_timer = 0;
		image_index = 0;
		new_sprite = sprite_get("core_break");
		spawn_hit_fx(x, y, 304);
		var hitbox = create_hitbox(AT_DSPECIAL, 2, floor(x) - 1, floor(y) + 3);
		hitbox.damage = 4;
		hitbox.kb_value = 8;
		hitbox.kb_scale = 0.4;
		hitbox.hitpause = 6;
		hitbox.hitpause_growth = 0.4;
		hitbox.hitstun_factor = 0.5;
	}
	
	if(field_hp = 0){
		with(player_id){
		move_cooldown[AT_FSPECIAL] = 300;
		}
		state = 3;
		state_timer = 0;
		image_index = 0;
		new_sprite = sprite_get("core_break");		
	}
}


//State 0: Spawn
if (state == 0){
	if(state_timer == 1){
		sound_play(sound_get("ward"), 0, noone, 0.8);
	}
	
	intro_ring_alpha += 0.025;
	if(intro_ring_size < 1){
	intro_ring_size += 0.035;
	}if(intro_ring_size > 1){
		intro_ring_size = 1;
	}
	
	if(intro_ring_size_2 < 1 && intro_ring_size > 0.5){
	intro_ring_size_2 += 0.075;
	ring_turn_cycle_2 *= 0.75;
	}if(intro_ring_size_2 > 1){
		intro_ring_size_2 = 1;
	}
	
	if(state_timer == 28){
		state = 1;
		state_timer = 0;
	}
	if(state_timer > 18){
	intro_alpha += 0.1;	
	}
player_id.in_range_of_field = false;
}

//State 1: Idle
if (state == 1){
field_range = 0;
field_growth = 10;
field_alpha = 1;

with (player_id){
if(destroy_field){
	other.state = 3;
	other.state_timer = 0;
	}if(state == PS_RESPAWN || state == PS_DEAD){
	other.state = 3;
	other.state_timer = 0;
	}
}

	// activate
	player_id.in_range_of_field = player_in_field;
	playerdetect = collision_circle(floor(x) , floor(y), 100, player_id, true, false);
	if (playerdetect != noone && instance_exists(playerdetect)){
	    	with(playerdetect){
	    	 other.player_in_field  = true;
	    }
	}else{
	player_in_field = false;	
		}
		with (asset_get("oPlayer")) {
		if(other.state = 1){
		if (player != other.player && invincible = 0 && invince_time = 0 && state != PS_RESPAWN && collision_circle( other.x, other.y, 100, self, true, false)){
		other.player_in_field = true;
			}
		}
	}
}

//State 2: Replicate Hitbox
if (state == 2){
	player_id.in_range_of_field = false;
	field_range += field_growth;
	field_growth = field_growth*0.92;
	
	if(field_range > 90){
		field_alpha -= 0.05;
	}
	
	if(field_alpha == 0){
	state = 1;
	state_timer = 0;
	}
	
	if(state_timer == 9){
		print("creating field hitbox...");
		var hitbox = create_hitbox(AT_DSPECIAL, 2, floor(x) - 1, floor(y) + 3);
		hitbox.damage = field_damage/2;
		hitbox.kb_value = field_kb;
		hitbox.kb_scale = field_kbscale;
		hitbox.hitpause = field_hitpause;
		hitbox.hitpause_growth = field_hitscale;
		//hitbox.kb_angle = field_angle;
	}
}

if(state == 1 || state == 2){
	if(field_hp == 2){
	if(image_index == 7){
		image_index = 2;
	}
	}	if(field_hp == 1){
	if(image_index == 8){
		image_index = 1;
	}
	}
}

//State 3: Despawn
if(state == 3){
	player_id.in_range_of_field = false;
	intro_alpha -= 0.025;
	if(state_timer == 1){
		sound_play(sound_get("se_zelda_win01_02"));
		sound_play(asset_get("sfx_ori_taunt2"));
		sound_play(sound_get("ward_break"), 0, noone, 0.75);
		player_id.destroy_field = false;
	}
	if(intro_alpha == 0 || intro_alpha < 0){
	    instance_destroy();
    	exit;
	}
	    if(image_index == 4){
		new_sprite = asset_get("empty_sprite"); 
	}
}

//State 4: Break
if(state == 4){
	player_id.in_range_of_field = false;
	player_id.destroy_field = false;
	intro_alpha -= 0.025;
	if(state_timer == 1){
	sound_play(sound_get("break_form"));	
	}
	
	if(state_timer == 20){
	var hitbox = create_hitbox(AT_DSPECIAL, 3, floor(x), floor(y));	
	}
		if(state_timer = (30+break_has_hit)){
		player_id.move_cooldown[AT_FSPECIAL] = 120;
		if(break_has_hit == 0){
			var hitbox = create_hitbox(AT_DSPECIAL, 4, floor(x), floor(y));	
		}else{
		spawn_hit_fx(x, y, player_id.break_vfx);
		sound_play(sound_get("break_shatter"));
		player_id.break_id = noone;
		}
	    instance_destroy();
    	exit;
	}
	
	if(break_has_hit != 0){
		image_alpha = 0.75;
	}
	
		if(image_index == 7){
		image_index = 6;
	}
}

//State 5: Tempest
if(state == 5){
	if(state_timer == 1){
	sound_play(sound_get("tempest"));	
	}
	player_id.in_range_of_field = false;
	player_id.destroy_field = false;
	if(state_timer < 12){
	hsp = 6*tempest_dir;
	}else{
	hsp = 2*tempest_dir;	
	}
	ignores_walls = false; 
	intro_alpha -= 0.1;
	
		if(image_index == 12){
		image_index = 4;
	}
	
	if(state_timer == 130){
		state = 6;
		state_timer = 0;
	}
	
	//sfx and hitboxes
	switch(state_timer){
		case 12:
		case 72:
		sound_play(sound_get("se_ness_attackair_F01"));
		tempest_cur_hitbox = create_hitbox(AT_DSPECIAL, 5, floor(x), floor(y));
        tempest_cur_hitbox.spr_dir = tempest_dir;
		break;
		
		case 42:
		case 102:
		sound_play(sound_get("se_ness_attackair_L01"));
		tempest_cur_hitbox = create_hitbox(AT_DSPECIAL, 5, floor(x), floor(y));
        tempest_cur_hitbox.spr_dir = tempest_dir;
		break;
		
		case 27:
		case 57:
		case 87:
		case 117:
		tempest_cur_hitbox = create_hitbox(AT_DSPECIAL, 5, floor(x), floor(y));
        tempest_cur_hitbox.spr_dir = tempest_dir;
		break;
	}
	

	if(instance_exists(tempest_cur_hitbox) && tempest_cur_hitbox != 0){
		tempest_cur_hitbox.x = floor(x);
		tempest_cur_hitbox.y = floor(y);
		if(tempest_got_parried){
			tempest_cur_hitbox.player = tempest_owner;
		}
	}

}

//State 6: Tempest_2
if(state == 6){
	player_id.in_range_of_field = false;
	hsp = 0;
	ignores_walls = true; 
	
	if(state_timer == 56){
		player_id.move_cooldown[AT_FSPECIAL] = 120;
	    instance_destroy();
    	exit;
	}
	
	//sfx and hitboxes
	switch(state_timer){
		case 1:
        sound_play(asset_get("sfx_mol_spark_explode2"));
        sound_play(sound_get("magic_explode"));
		break;
		
		case 6:
		case 9:
		case 13:
		case 17:
		case 21:
		sound_play(asset_get("sfx_mol_spark_explode1"));
		tempest_cur_hitbox = create_hitbox(AT_DSPECIAL, 6, floor(x), floor(y));
		break;
		
		case 33:
		sound_play(asset_get("sfx_mol_norm_explode"));
		tempest_cur_hitbox = create_hitbox(AT_DSPECIAL, 7, floor(x), floor(y));
		break;
	}
	
		if(instance_exists(tempest_cur_hitbox) && tempest_cur_hitbox != 0){
		tempest_cur_hitbox.x = floor(x);
		tempest_cur_hitbox.y = floor(y);
		if(tempest_got_parried){
			tempest_cur_hitbox.player = tempest_owner;
		}
	}
	
}

//State 7: Frogsong
if(state == 7){
	player_id.in_range_of_field = false;
	player_id.destroy_field = false;
	intro_alpha -= 0.05;
	if(state_timer == 1){
	sound_play(sound_get("frogsong"));	
	}
	
	
	if(state_timer == 28){
	sound_play(sound_get("frogtransform_1"));
		var hitbox = create_hitbox(AT_DSPECIAL, 8, floor(x), floor(y));
		hitbox.damage = 4;
		hitbox.kb_value = 8;
		hitbox.hitpause = 6;
	}
	
	if(state_timer == 64){
		player_id.move_cooldown[AT_FSPECIAL] = 120;
	    instance_destroy();
    	exit;
	}
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("nspecial_ward_intro");
        spell_radius = 0;
        mask_index = asset_get("empty_sprite"); 
        animation_type = 2;
        break;
    case 1:
    case 2:
    if(field_hp == 2){
        new_sprite = sprite_get("core");
    }if(field_hp == 1){
    	new_sprite = sprite_get("core_weak");	
    }
    	spell_radius = 45;
        mask_index = sprite_get("core");
        animation_type = 1;
        break;
    case 3:
    	spell_radius = 0;
    	mask_index = asset_get("empty_sprite"); 
        animation_type = 1;
        break;
    case 4:
    new_sprite = sprite_get("break_form");
    spell_radius = 0;
    mask_index = asset_get("empty_sprite"); 
    animation_type = 2;
    break;
    case 5:
    new_sprite = sprite_get("tempest_lol");
    spell_radius = 0;
    mask_index = asset_get("tempest_index"); 
    animation_type = 2;
    break;
    case 6:
    new_sprite = sprite_get("tempest_explosion");
    spell_radius = 0;
    mask_index = asset_get("empty_sprite"); 
    animation_type = 2;
    break;
    case 7:
    new_sprite = sprite_get("frogsong");
    spell_radius = 0;
    mask_index = asset_get("empty_sprite"); 
    animation_type = 2;
    break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;