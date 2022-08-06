//article1_update - runs every frame the article exists

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

//if (place_meeting(x, y, asset_get("plasma_field_obj"))/* && !(state == 3 || state == 2)*/) {

if (x > room_width or y > room_height + 200){
    instance_destroy();
    exit;
}

//State 0: Just thrown
if (state == 0){
	
	if (spr_dir == 1){
		mask_index = sprite_get("spear_proj_maskR");
	}
	else {
		mask_index = sprite_get("spear_proj_maskL");
	}
	
	if (state_timer == 0){
		spear_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
//		hsp = 6*spr_dir;
//		vsp = -6;	
	}

	
	spear_hitbox.x = x+30*spr_dir;
	spear_hitbox.y = y-image_angle*spr_dir;
	
	if (image_angle == 36){
		image_angle = 41;
	}
	
	if (image_angle > -39 && image_angle < 34.5){
		image_angle -= (hsp / 4);
	}

	vsp += .5;
	
	if (state_timer > 25 && (!free ||
		((place_meeting(x,y,asset_get("par_block")) || place_meeting(x,y,asset_get("par_jumpthrough")))))){
		sound_play(sound_get("sfx_spear_pin"));
		spear_hitbox.destroyed = true;
		spear_hitbox = 0;
		state = 1;
		hsp = 0;
		vsp = 0; 
		got_stuck = true;
		sprite_index = sprite_get("spear_pin_start_ground");  
		mask_index = sprite_get("spear_pin_idle_ground");
	}
	
	if (hit_wall){
		sound_play(sound_get("sfx_spear_pin"));
		spear_hitbox.destroyed = true;
		spear_hitbox = 0;
		state = 3;
		hsp = 0;
		vsp = 0; 
		got_stuck = true;
		sprite_index = sprite_get("spear_pin_start_wall");  
		mask_index = sprite_get("spear_pin_idle_wall");
	}
	
	
}

//State 1: Stuck on the Ground
if (state == 1){
	if (spr_dir == -1 && free && got_stuck == true && place_meeting(x,y,asset_get("par_block")) == false){
		x -= 10;
		y -= 4;
		got_stuck = false;
	}
	image_angle = 0;
	image_index += .5;
	if (image_index > 5){
		sprite_index = sprite_get("spear_pin_idle_ground"); 
	}
}

//Getting Hit by stuff
if (state > 0 && state != 4){
	with (asset_get("pHitBox")){
    	if (place_meeting(x,y,other.id) && effect != 420 && kb_value > 0){
		if (other.hit_cooldown == 0){
			other.desired_hitstop = clamp(hitpause + damage * hitpause_growth * 0.05, 0, 20);
			if (type == 1){
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
			}
	        other.hsp = 0;
			other.vsp = 0;
			other.hit_delay = 4 + hitpause + extra_hitpause;
			other.hit_cooldown = hitpause + extra_hitpause + 10;
			other.owner = player;
			other.kb_scaling = kb_scale;
			other.bkb = kb_value;
			with (other) {kb_angle = get_hitbox_angle(other.id)}
			other.hitpause = true;
			other.hitstop = hitpause + extra_hitpause;
			le_hit_effect = hit_effect;
			sound_play(pHitBox.sound_effect);
			spawn_hit_fx(other.x, other.y, le_hit_effect).pause = 7;
			other.got_hit = true;
			has_hit = true;
			
//			other.apple_hit = true;
			
		}
        }
    
		if (place_meeting(x,y,other.id) && effect == 420 && attack == AT_FSPECIAL){
			other.sprite_index = sprite_get("spear_spin"); 
			other.image_index += .3;
			other.x = player_id.x;
			other.y = player_id.y-70;
			player_id.parasol_spear = true;
		}
	}
    
    if (kb_angle > 240 && kb_angle < 300 && state == 1){
		kb_angle *= -1;
	}
    
    kb_speed = ((bkb + 1 * kb_scaling * fancynum * kb_adj)); // calculates knockback speed
    if (kb_speed < 12){
        kb_speed = 12;
    }
    
    if (hit_delay == 4){
    	vsp = lengthdir_y(kb_speed, kb_angle);
    	hsp = lengthdir_x(kb_speed, kb_angle);
	}
	
	if (got_hit && vsp < 13){
		vsp += .7;
	}
	
	if (hit_delay > -10){
		hit_delay--;
	}
	
	if (got_hit && state != 2){
		sound_play(asset_get("sfx_spin"));
		state = 2;
	}
	
}

//State 2: Flying after being hit
if (state == 2){
	if (spear_hitbox == 0){
		spear_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
	}
	spear_hitbox.kb_value = bkb;
	spear_hitbox.kb_angle = kb_angle;
	spear_hitbox.player = owner;
	spear_hitbox.x = x;
	spear_hitbox.y = y;
	sprite_index = sprite_get("spear_spin"); 
	image_index += .5;
	can_be_grounded = false;                           
	ignores_walls = true;  
}

//State 3: Stuck on a wall
if (state == 3){
	image_angle = 0;
	image_index += .5;
	if (image_index > 5){
		sprite_index = sprite_get("spear_pin_idle_wall"); 
	}
	
	with (player_id){
		if (place_meeting(x,y,other)){
			attack_end();
			invincible = 0;
			hurtboxID.sprite_index = sprite_get("bd_hurtbox");
			state = PS_IDLE_AIR;
			vsp = -12;
			move_cooldown[AT_NSPECIAL] = 60
			
			spawn_hit_fx(x, y, 302).pause = 7;
			sound_play(asset_get("sfx_blow_medium3"))
			
			other.sprite_index = sprite_get("spear_pin_death_wall"); 
			other.state = 5;
		}
	}
	
}

//State 4: Affected by DSpecial
if (state == 4){
	if (spear_hitbox == 0){
		if (player_id.bwd_mega_is_perfect){
			spear_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y);
			vsp = -18;	
		}
		else{
			spear_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
			vsp = -12;
		}
		
	}
	vsp += .6;
	spear_hitbox.kb_angle = 90;
	spear_hitbox.x = x;
	spear_hitbox.y = y;
	sprite_index = sprite_get("spear_spin"); 
	image_index += .5;
	can_be_grounded = false;                           
	ignores_walls = true;  
}

//State 5: Dying
if (state == 5){
//	sprite_index = sprite_get("spear_pin_death_ground"); 
	image_index += .3;
	if (image_index > 3.6){
		instance_destroy();
    	exit;
	}
}

//Make time progress
state_timer++;