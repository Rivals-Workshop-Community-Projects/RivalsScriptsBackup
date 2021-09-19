//article1_update

// Aerial State

if (state == 0) { // Cast From Smash Attack
	new_sprite = sprite_get("cannonballair");
	anim_type = 0;
	
	if (free == false || hit_wall == true) {
	    state = 1;
	    state_timer = 0;
	    ignores_walls = true;
	}
	
	if (state_timer > 1) {
	    with (oPlayer) {
	    	if (player != other.player_id.player) {
	    		//sound_play(sound_get("gazer_hit"));
	    		other.cannonball_enemy_idX = self.x;
	    		other.cannonball_enemy_idY = self.y;
	    		
	    	}
	    	
	    	if (point_distance(other.x,other.y, other.cannonball_enemy_idX, other.cannonball_enemy_idY) <= 50) {
	    		other.state_timer = 0;
	    		other.state = 1;
	    		other.ignores_walls = true;
	    	}
	    }
	}
	
	if (vsp >= 8) {
	    vsp += 0.4;
	} else if (vsp > 4) {
	    vsp += 0.2;
	} else {
	    vsp += 0.1;
	}
}

// Landing Explosion State

if (state == 1) { // Cast From Attack
	new_sprite = sprite_get("cannonballexplode");
	anim_type = 0;
	
	vsp = 0;
	hsp = 0;
	
	if (state_timer == 4) {
		with (player_id) {
    		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 130);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 130);
	    }
	    create_hitbox(AT_NSPECIAL, 1, x, y - 15);
	}
	
	if (state_timer == 8) {
		with (player_id) {
    		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 140);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 140);
	    }
	    create_hitbox(AT_NSPECIAL, 1, x, y - 15);
	}
	
	if (state_timer == 12) {
		with (player_id) {
    		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 150);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 150);
	    }
	    create_hitbox(AT_NSPECIAL, 1, x, y - 15);
	}
	
	if (state_timer == 16) {
	    with (player_id) {
	        if (other.cannonball_dir == 1) {
    			set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
    		} else {
    			set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 120);
    		}

	    }
	    create_hitbox(AT_NSPECIAL, 2, x, y - 15);
	}
	
	if (state_timer >= 25) {
	    player_id.CannCannonBallActive = false;
	    instance_destroy();
	}
}

// Destroys If Off Screen Somehow

if (y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS) || x < get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE) || x > room_width + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE)) {
	player_id.CannCannonBallActive = false;
	instance_destroy();
}

state_timer++;

// Amnimating

if (anim_timer == 5 && anim_type == 0) { // Normal
	image_index++;
	anim_timer = 0;
}

if (sprite_index != new_sprite) {
    sprite_index = new_sprite;
    
    image_index = 0;

}

anim_timer++;