
player_id.rock_lockout = 60;
player_id.can_rock = false;

if(!warm){
    with(pHitBox){
		if(place_meeting(x, y, other) and (player_id.free or type == 2 or !player_id.free and player_id.y > other.y) and !other.amdead){
			player_id.hitstop = floor(hitpause * 1.3);
			sound_play(sound_effect);
			sound_play(asset_get("sfx_kragg_rock_shatter"));
			other.amdead = true;

		}
	}
	if(!amdead){
    image_index = 0;
    life++;
    if(life == 1){
        orig_x = x;
        orig_y = y;
    } else if (life > 1 and life < lifetime){
        x = orig_x + random_func(4, 8, true);
        y = orig_y + random_func(3, 6, true);
    }else if(life > lifetime){
        image_alpha = 1;
        warm = true;
        life = 0;
        x = orig_x;
        y = orig_y;
    }
	} else {
		kaboom = true;
		player_id.rock_lockout = 120;
	}

} else {
    life++;
    if(life == 1){
        player_id.can_rock = false;
        sound_play(sound_get("drop"));
        hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
        var a = image_angle-90;
        hitbox.hsp = 8*dcos(a);
        hitbox.vsp = 4*dsin(a) < 0? 0: -8*dsin(a);
    }
    if(instance_exists(hitbox)){
    	vsp = hitbox.vsp;
		hsp = hitbox.hsp;
		x = hitbox.x;
		y = hitbox.y;
    } else {
    	kaboom = true;
    	player_id.rock_lockout = 120;
    }
    if(image_index < 16){
        image_index = 12+(life/6)%5;
    }
    
    if(y > room_height){
        player_id.rock_proj = noone;
        player_id.rock_lockout = 5;
        hitbox.length = 0;
        player_id.rock_lockout = 120;
    	instance_destroy(self);
    } else if(collision_line(x, y, x, y+vsp, asset_get("par_block"), false, true)){
		vsp = 0;
		hsp = 0;
		kaboom = true;
		player_id.rock_lockout = 120;
	} else {
    	vsp += .28;
    	image_angle = darctan2(vsp, -hsp) - 90;
	}
	
	//print_debug(image_angle);
}

