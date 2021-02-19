//hitbox_update

if (attack == AT_FSPECIAL) {
	if hbox_num == 1 {
		proj_angle -= 2*(hsp+1);
		
		image_index = eggBounce;
		
		if !free {
		if !was_parried {
			eggBounce += 1;
			}
		grav += .1;
		hitbox_timer -= 12;
		vsp = -8;
		with player_id sound_play(sound_get("smrpg_mario_kick"), false, noone, 1, 1+other.eggBounce/10);
		damage += 1;
		kb_value += 1;
		}
		
		with player_id if cookieTimer > 0 {
		other.grav = 0;
		other.air_friction = 0;
			if other.hitbox_timer == 1 {
			other.hitbox_timer += 18;
			other.damage += 1;
			other.eggBounce += 1;
			other.hsp *= 1.5;
			other.vsp *= .9;
			}
		}
		
		if eggBounce == 4 {
		destroyed = true;
		with player_id create_hitbox( AT_FSPECIAL, 2, other.x, other.y);
		with player_id sound_play(sound_get("ssbm_eggbreak"));
		spawn_hit_fx( x, y, 304);
		}
		
		if hitbox_timer == length-3 || hitbox_timer == length-6 || hitbox_timer == length-8 {
		with player_id sound_play(sound_get("smw2_co"));
		visible = false;
		} else {
		visible = true;
		}
		
		if hitbox_timer == length {
		with player_id create_hitbox( AT_FSPECIAL, 2, other.x, other.y);
		with player_id sound_play(sound_get("ssbm_eggbreak"));
		spawn_hit_fx( x, y, 304);
		}
		

	}
	if hbox_num == 2 {
		with (asset_get("pHitBox")) {
			if (attack == AT_FSPECIAL && hbox_num == 1 && was_parried) {
				other.player = player;
			}
		}
	}
}


if (attack == AT_FSPECIAL) && hbox_num == 9 { 


if !free && hitbox_timer > 10 && hitbox_timer < 90 {
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	spawn_hit_fx ( x, y + 40, 303)
	vsp *= -1
	y -= 5
}	

if hitbox_timer == 90 {
    destroyed = 1
	create_hitbox( AT_FSPECIAL, 8, x, y);
   sound_play(asset_get("sfx_bird_sidespecial"));	
}


	
}

if (attack == AT_FSPECIAL) && hbox_num == 8 { 
	
	if hitbox_timer > 0 {
	if hitbox_timer % 3 = 0 {
		sound_play(asset_get("sfx_ice_shieldup"));
		spawn_hit_fx ( x, y - 20, 302)
	}

	hsp = (player_id.x - x ) / 10
	vsp = (player_id.y - y -40 ) / 10
}


if hitbox_timer == 30 {
	destroyed = 1
	sound_play(asset_get("sfx_ice_on_player"));
		spawn_hit_fx ( x, y - 40, 304)
		player_id.yosword = 1
}
}


if (attack == AT_FSPECIAL) && hbox_num == 10 && !free {
    destroyed = 1
	sound_play(sound_get("ssbm_eggbreak"));
	spawn_hit_fx ( x, y - 40, 304)
	if get_gameplay_time() % 3 == 0 {
	create_hitbox( AT_FSPECIAL, 11, x, y - 50);
	}
}


if (attack == AT_FSPECIAL) && hbox_num == 11 {
	hitbox_timer = 1
	
	if (x - 40 - (player_id.x)) < 0 
	and (x + 40 - (player_id.x)) > 0 and (y - 30 - (player_id.y)) < 0
	and (y + 60 - (player_id.y)) > 0{	
			destroyed = 1
    	spawn_hit_fx( x  , y , 305 )
    	sound_play(asset_get("sfx_may_arc_hit"));
    	player_id.bsta += 20
		}
		
		
}




if (attack == AT_FSPECIAL) && hbox_num == 19 { 


if hitbox_timer == 90 {
    destroyed = 1
	create_hitbox( AT_FSPECIAL, 18, x, y);
   sound_play(asset_get("sfx_bird_sidespecial"));	
}


	
}

if (attack == AT_FSPECIAL) && hbox_num == 18 { 
	
	if hitbox_timer > 0 {

	hsp = (player_id.x - x ) / 20
	vsp = (player_id.y - y -40 ) / 20
	
	if hitbox_timer == 60 {
	destroyed = 1
	sound_play(asset_get("sfx_ice_on_player"));
		spawn_hit_fx ( x, y - 40, 304)
		player_id.yosword = 1
}

}
}