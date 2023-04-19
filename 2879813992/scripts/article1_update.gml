//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Spawn
- 1 Idle
- 2 Replicate Hitbox
- 3 Despawn


*/



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles && state != 3){
    state = 3;
    state_timer = 0;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//turn leaf
if(state == 1 || state == 2 || state == 0){
	ring_turn_cycle -= 0.2;
}

field_lifespawn++;


//State 0: Spawn
if (state == 0){
	intro_ring_alpha += 0.025;
	if(intro_ring_size < 1){
	intro_ring_size += 0.035;
	}if(intro_ring_size > 1){
		intro_ring_size = 1;
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
	if(field_lifespawn > 600){
		state = 3;
		state_timer = 0;
	}
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
		field_alpha -= 0.05
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
	}
}

//State 3: Despawn
if(state == 3){
	player_id.in_range_of_field = false;
	image_alpha -= 0.1;
	if(state_timer == 1){
		sound_play(sound_get("se_zelda_win01_02"));
		sound_play(asset_get("sfx_ori_taunt2"));
		player_id.destroy_field = false;
	}
	if(state_timer == 10){
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
        animation_type = 2;
        break;
    case 1:
        new_sprite = sprite_get("nspecial_ward_loop");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("nspecial_ward_loop");
        animation_type = 1;
        break;
    case 3:
        new_sprite = sprite_get("nspecial_ward_loop");
        animation_type = 1;
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