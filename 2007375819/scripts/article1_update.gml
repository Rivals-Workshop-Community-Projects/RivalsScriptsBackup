//article1_update - runs every frame the article exists

//Gravity
if(free){
    vsp += 0.55;
}

if(!free){
    vsp = 0;
}


//State 0: Spawn
if (state == 0){
    if !free && state_timer > 50 {
		state = 2;
	}
}

//State 1: Idle
if (state == 1){
	if !free {
		if hsp > 0 {
			hsp -= .25;
		}
		if hsp < 0 {
			hsp += .25;
		}
	}
	image_speed = 0;
	


}

//State 2: Move
if (state == 2){
	if !free {
		hsp = 1*spr_dir;
	}
	sprite_index = sprite_get("blueytank_move");
	image_speed = .5;
	minionHealth -= .001;
}

//Bounce up when hit by Neutral Special's projectile
	with (asset_get("pHitBox")){
        if (player_id == other.player_id && attack == AT_NSPECIAL && place_meeting(x+25*(spr_dir),y,other.id) && !player_id.hitpause){
			if (hbox_num == 1) {
			other.vsp = -12;
			other.hsp = 2 * (spr_dir);
			destroyed = true;
			sound_play(asset_get("sfx_clairen_hit_med"));
			}
		}
		
        if (player_id == other.player_id && !(player == other.orig_player) && attack == AT_EXTRA_2 && place_meeting(x+15*(spr_dir),y,other.id) && !player_id.hitpause){
			other.vsp = -5;		
			destroyed = true;
			other.minionHealth -= 2;
			if (hbox_num == 1) {
				other.hsp = 6 * (spr_dir);
			}
			if (hbox_num == 2) {
				other.hsp = 6 * -(spr_dir);
			}
			sound_play(asset_get("sfx_blow_medium1"));
			spawn_hit_fx( x,y-2, 301);
		}
	}
	
//State 3: Turn around
if (state == 3){
	if !free {
		if hsp > 0 {
			hsp -= .25;
		}
		if hsp < 0 {
			hsp += .25;
		}
	}
	image_speed = 0;
	turnaroundTimer--;
	
	if turnaroundTimer == 3 {
		spr_dir *= -1;	
	}
	
	if 0 >= turnaroundTimer {
		state = 2;
	}
}

//Firing cannonballs
if(state_timer > 20){
	if (state == 2) && (state_timer % 115 == 0 || state_timer % 115 == 15) {
			sound_play(asset_get("sfx_shop_invalid"), false, noone, .7, 1.5);
	}
	
	if state_timer % 115 == 30 {
		if(state == 2){
			sound_play(asset_get("sfx_ell_arc_small_missile_ground"));
			minionHealth--;
				if spr_dir = 1 {
					if player_id.spr_dir == 1 {
					create_hitbox(AT_EXTRA_2,1,x + 30,y - 26);
					spawn_hit_fx( x + 44,y - 26, 13);
					}
					if player_id.spr_dir == -1 {
					create_hitbox(AT_EXTRA_2,2,x + 30,y - 26);
					spawn_hit_fx( x + 44,y - 26, 13);
					}
				}
				if spr_dir = -1 {
					if player_id.spr_dir == 1 {
					create_hitbox(AT_EXTRA_2,2,x - 30,y - 26);
					spawn_hit_fx( x - 44,y - 26, 13);
					}
					if player_id.spr_dir == -1 {
					create_hitbox(AT_EXTRA_2,1,x - 30,y - 26);
					spawn_hit_fx( x - 44,y - 26, 13);
					}
				}
		}
	}
}


//Make time progress
if state != 3 { 
	state_timer++;
}

//Destroy the article
if vsp > 25 {
	minionHealth = 0;
}

if minionHealth <= 0 {
	player_id.move_cooldown[AT_DSPECIAL] = 200;
	with player_id spawn_hit_fx( other.x, other.y-30, AppearBruh);
	with player_id sound_play(sound_get("sfx_disappear"));
	instance_destroy();
}