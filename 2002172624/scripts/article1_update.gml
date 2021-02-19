//does not fall on ground
if(!free){ 
    vsp = 0;
}
//falls in air, += not = because it's accelerating while falling
if(free){
	if (vsp < fall_speed) {
		vsp += 0.4;
	}
}

if minionHealth == 0 {
    with(self){
    	if (player_id = other.id) state = 1;
    	
    }
}

//CAT IS WALKING
if (state = 0) {
	//TURNS AROUND WHEN HITTING A WALL
	if (hit_wall == true) {
		if (spr_dir = -1) {
			spr_dir = 1;
			hsp = 2.9 * spr_dir;
		} else {
			spr_dir = -1;
			hsp = 2.9 * spr_dir;
		}
	}
	
	if (place_meeting(x, y, oPlayer)) {
		var _inst = instance_place(x, y, oPlayer);
		if (instance_place(x, y, oPlayer) != player_id) {
			state = 1;
			create_hitbox(AT_EXTRA_1, 1, _inst.x , _inst.y);
		}
	}
	
	if (place_meeting(x, y, pHurtBox)) {
		var _inst = place_meeting(x, y, pHurtBox);
		if (_inst.player_id != self.player_id) {
			
			//create hitbox if its a projectile (cat wars are back? nope)
			if (_inst.type = 2) {
				create_hitbox(AT_EXTRA_1, 1, _inst.x , _inst.y);
			}
			
			sound_play(asset_get("sfx_orca_crunch"))
			state = 1;
		}
	}
}

//DESTORY SELF IF OFF SCREEN
if (y > room_height) {
		state = 1;
	}

if (state = 1) {
	player_id.num_cats -= 1;
	instance_destroy(self);
}

