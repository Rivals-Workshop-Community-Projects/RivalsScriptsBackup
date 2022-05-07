//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 0.5 Throw Prep
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/

if (player_id.cycle != 1) {
	instance_destroy();        
	exit;
}

if (totaldamage <= 0) {
	totaldamage = 0;
}

//Does it exist?
if(!instance_exists(self)){
	exit;
}

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

//State buffering
    
if (buffertimer < 20){
	buffertimer++;
} else {
	bufferedstate = 0;
	buffertimer = 0;
}

//State 0: Freshly spawned

if (state == 0) {
	depth = player_id.depth+1;
	can_be_grounded = true; 
	ignores_walls = false;  
	image_angle = 0;
	if (state_timer == 1) {
		hsp = 0;
		vsp = 0;
	}
	grav = false;
	var lerp_spd = 0.2;
    x = floor(lerp(x,player_id.x-40*player_id.spr_dir,lerp_spd));
	y = floor(lerp(y,player_id.y-40,lerp_spd));
    spr_dir = abs(player_id.x-x) >= 1 ? sign(player_id.x-x) : spr_dir;
}

//State 0.5: Throw Prep

if (state == 0.5) {
	x = player_id.x;
	y = player_id.y-30;
	spr_dir = player_id.spr_dir;
	plux_can_bounce = false;
}

//State 1: Throw

if (state == 1){
	depth = player_id.depth+1;
	grav = true;
	if (state_timer == 1) {
		x = player_id.x+throwX*spr_dir;
		y = throwY;
		hsp = throwHSP*spr_dir;
	    vsp = throwVSP;
	}
	if (state_timer == 5) {
		plux_can_bounce = true;
	}
	if (get_stage_data( SD_BOTTOM_BLASTZONE_Y ) < y){
		state = 5;
		state_timer = 0;
	}
	if (get_stage_data( SD_TOP_BLASTZONE_Y ) > y){
		state = 5;
		state_timer = 0;
	}
	if (get_stage_data( SD_RIGHT_BLASTZONE_X ) < x || get_stage_data( SD_LEFT_BLASTZONE_X ) > x){
		state = 5;
		state_timer = 0;
	}
	with (oPlayer) {
        if (place_meeting(x, y, other) && other.player_id != id) {
			if (invincible == false && !( (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer > 2 && state_timer < 17) 
        		&& !( (state == PS_TECH_GROUND || state == PS_WALL_TECH) && state_timer < 17) 
        		&& !( (state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && state_timer < 19) && state != PS_RESPAWN) {
				with (other) {
					create_hitbox(AT_NSPECIAL_2, 3, other.x + 5 * spr_dir, other.y - 10);
				}
			}
			if (state == PS_PARRY && state_timer > 0 && state_timer < 9) {
				other.state = 18;
				other.state_timer = 0;
			} else if (invincible == false && !(state == PS_PARRY && state_timer > 0 && state_timer < 9) 
        				&& !( (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer > 2 && state_timer < 17) 
        				&& !( (state == PS_TECH_GROUND || state == PS_WALL_TECH) && state_timer < 17) 
        				&& !( (state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && state_timer < 19) && state != PS_RESPAWN) {
				other.plux_hitID = player;
				other.state = 12;
				other.state_timer = 0;
			}
        }
    }
}

//State 2: Bounce

if (state == 2){
	depth = player_id.depth+1;
	vsp = -3;
    hsp = 0;
    grav = false;
	if (state_timer == 1) {
		sound_play( sound_get("plux_land")); 
	}
	if (state_timer >= 12) {	
		state = 3;
		state_timer = 0;
		player_id.plux_throw_hit = 0;
	}
}

//State 3: Idle

if (state == 3) {
	depth = player_id.depth+1;
	can_be_grounded = true; 
	ignores_walls = false;  
	image_angle = 0;
	if (fairyenergy <= 0) {
		state = 7;
		state_timer = 0;
	}
    if (state_timer == 1) {
        hsp = 0;
        vsp = 0;
    }
    grav = false;
    if (vsp > 0) {
        vsp = vsp - 0.5;
    }
	if (vsp < 0) {
        vsp = vsp + 0.5;
    }
    if (hsp > 0) {
        hsp = hsp / 1.07;
    }
	if (hsp < 0) {
        hsp = hsp / 1.07;
    }  
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
}

if (fairyenergy > 4) {
	fairyenergy = 4;
}

if (fairyenergy < 0) {
	fairyenergy = 0;
}

if (state != 3) {
	cooldown = 300;
}

//State 4: Walk back

if (state == 4){
	depth = player_id.depth+1;
	image_angle = 0;
	can_be_grounded = false;
	ignores_walls = true;  
	grav = false;
    anglething = point_direction(x,y,player_id.x-(40*player_id.spr_dir),player_id.y-40);
    fly_dist = point_distance(x,y,player_id.x-(40*player_id.spr_dir),player_id.y-40);
    if (fly_dist > max_speed){
        hsp = lengthdir_x(max_speed, anglething);
        vsp = lengthdir_y(max_speed, anglething);
    }
	if (x < player_id.x) {
		spr_dir = 1;
	}
	if (x > player_id.x) {
		spr_dir = -1;
	}
    if (point_distance(x,y,player_id.x-(40*player_id.spr_dir),player_id.y-40) <= 10) {
        player_id.fairy = true;
        state = 0;
		state_timer = 0;
    }
}

//State 5: Gets Hit by enemy

if (state == 5){
	if (state_timer == 0) {
		depth = player_id.depth+1;
		grav = false;
		spr_dir = -enemyspr_dir;
		hsp = lengthdir_x( force, langle );
		vsp = lengthdir_y( force, langle );
	}
	if (state_timer == 1) {
		grav = true;
		fairyenergy -= 1;
		totaldamage += 0.8;
		sound_play( sound_get("plux_hurt_new"));
		sound_play( sound_get("tick"));
		spawn_hit_fx( x, y, player_id.pluxhurt_effect);
	}
	if (state_timer >= 20 && fairyenergy > 0) {
		state = 6;
		state_timer = 0;
    }
	if (state_timer > 1 && fairyenergy == 0) {
		state = 7;
		state_timer = 0;
	}
}

//State 6: Retreating to Nik

if (state == 6){
	depth = player_id.depth+1;
	image_angle = 0;
	can_be_grounded = false;
	ignores_walls = true;  
	grav = false;
	anglething = point_direction(x,y,player_id.x-(40*player_id.spr_dir),player_id.y-40);
    fly_dist = point_distance(x,y,player_id.x-(40*player_id.spr_dir),player_id.y-40);
	if (fly_dist > max_speed){
		hsp = lengthdir_x(max_speed, anglething);
		vsp = lengthdir_y(max_speed, anglething);
	}
	if (x < player_id.x) {
		spr_dir = 1;
	}
	if (x > player_id.x) {
		spr_dir = -1;
	}
	if (point_distance(x,y,player_id.x-(40*player_id.spr_dir),player_id.y-40) <= 10) {
        player_id.fairy = true;
        state = 0;
		state_timer = 0;
    }
}

//State 7: Dying

if (state == 7){
	depth = player_id.depth-1;
	ignores_walls = true;   
	image_angle = 0;
	grav = true;
	if (state_timer == 0) {
		vsp = -10;
		hsp = 0;
		sound_play( sound_get("plux_death"));
	}
	if (vsp >= 10) {
		vsp = 10;
	}
	if (get_stage_data( SD_BOTTOM_BLASTZONE_Y) < y){
		player_id.cooldownCycle = 1;
		player_id.cooldownOn = true;
		instance_destroy();
    	exit;
	}
}

//State 8: Attack

if (state == 8){
	depth = player_id.depth+1;
	hsp = 0;
    vsp = 0;
	grav = false;
    //16 frames in, create NSPECIAL_2 hitbox 1, then go to state 3
    if (state_timer == 14) {
		with (asset_get( "obj_article2" )) {
			if (player == other.player) {
            	replacedcount += 1;
			}
        }
	}
	if (state_timer == 16) {
		var new_article = instance_create(x - 1 * spr_dir, y + 10, "obj_article2");
		new_article.player = player;
    }
    if (state_timer == 31) {
        state = 4;
        state_timer = 0;
    }
}

//State 9: USpecial_2 follow

if (state = 9) {
	depth = player_id.depth+1;
	x = player_id.x - 40 * spr_dir;
	y = player_id.y - 40;
	with (player_id) {
		if (attack == AT_USPECIAL_2 && window == 5 && window_time_is(get_window_value( AT_USPECIAL_2, 5, AG_WINDOW_LENGTH) - 1) ) {
			other.state = 0;
			other.state_timer = 0;
    	}
	}
}

// State 12: Throw

if (state == 12) {
	depth = player_id.depth-1;
	grav = false;
	hsp = 0;
	vsp = 0;
	image_angle = 0;
	if (state_timer == 0) {
		if (x < player_id.x) {
			spr_dir = 1;
		}
		if (x > player_id.x) {
			spr_dir = -1;
		}
	}
	if (state_timer <= 11) {
		with (oPlayer) {
			if (player == other.plux_hitID) {
				can_move = false;
				can_attack = false;
				can_jump = false;
				can_strong = false;
				can_ustrong = false;
				can_special = false;
				vsp = 0;
				hsp = 0;
			}
		}
	}
	if (state_timer == 16) {
		with (oPlayer) {
			if (player == other.plux_hitID) {		
			x = other.x;
			y = other.y - 5;
			}
		}
	}
	if (state_timer == 0) {
		with (oPlayer) {
			if (player == other.plux_hitID) {		
			x = other.x;
			y = other.y - 5;
			}
		}
	}
	if (state_timer >= 0 && state_timer <= 15) {
		with (oPlayer) {
			if (player == other.plux_hitID) {	
				anglething = point_direction(x,y,other.x-(25*other.spr_dir),other.y-10);
				fly_dist = point_distance(x,y,other.x-(25*other.spr_dir),other.y-10);
				max_speed = 5;
				if (fly_dist > max_speed){
					hsp = lengthdir_x(max_speed, anglething);
					vsp = lengthdir_y(max_speed, anglething);
				}
			}
		}
	}
	if (state_timer == 15) {
		sound_play( asset_get("sfx_swipe_medium2") );
	}
	if (state_timer == 16) {
		with (oPlayer) {
			if (player == other.plux_hitID) {
				with (other) {
				create_hitbox(AT_NSPECIAL_2, 4, other.x, other.y - 30);
				}
				can_move = true;
				can_attack = true;
				can_jump = true;
				can_strong = true;
				can_ustrong = true;
				can_special = true;
			}
		}
	}
	if (state_timer == 28) {
		plux_hitID = noone;
		state = 4;
		state_timer = 0;
	}
}

// State 13: Appear

if (state == 13) {
	x = player_id.x - 50 * spr_dir;
	y = player_id.y - 50;
	if (state_timer == 16) {
		state = 0;
		state_timer = 0;
	}
}

// State 14: Disappear

if (state == 14) {
	if (state_timer == 0) {
		sound_play( sound_get("plux_despawn"));
		with (player_id) {
            dontdspec = true;
		}
	}
	if (state == 0) {
		x = player_id.x - 50 * spr_dir;
		y = player_id.y - 50;
	}
	if (state_timer == 32) {
		with (player_id) {
            cooldownOn = true;
            cooldownCycle = 1;
		}
		instance_destroy();
    	exit;
	}
}

//State 17: Taunt

if (state == 17) {
	/*if (state_timer <= 5) {
		anglething = point_direction(x,y,player_id.x,player_id.y-80);
		fly_dist = point_distance(x,y,player_id.x,player_id.y-80);
		if (fly_dist > max_speedT){
			hsp = lengthdir_x(max_speedT, anglething);
			vsp = lengthdir_y(max_speedT, anglething);
		} 
	//}
	if (fly_dist < 20){
		x = player_id.x;
		y = player_id.y-80;
		spr_dir = 1;
	}*/
	vsp = 0;
	hsp = 0;
	if (state_timer >= 40) {
		animation_type = 4;
	}
	if (state_timer == 70) {
		player_id.fairy = true;
		state = 0;
		state_timer = 0;
	}
}

//State 18: Stun

if (state == 18) {
	grav = false;
	vsp = 0;
	hsp = 0;
	if (state_timer >= 179) {
		state = 3;
		state_timer = 0;
	}
}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)


//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("pluxidle");
        animation_type = 2;
        break;
	case 0.5:
		new_sprite = asset_get("empty_sprite");
        animation_type = 2;  	
        break;
    case 1:
		if (plasma = true) {
        	new_sprite = sprite_get("pluxlaunch");
		} else {
        	new_sprite = sprite_get("pluxspin");
		}
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("pluxbounce");
        animation_type = 3;
        break;
    case 3:
        new_sprite = sprite_get("pluxidle");
        animation_type = 2;
        break;
    case 4: 
        new_sprite = sprite_get("pluxwalk");
        animation_type = 2;
		break;
    case 5: 
		new_sprite = sprite_get("pluxhurt");
        animation_type = 1;
		break;
    case 6:
		new_sprite = sprite_get("pluxscatter");
        animation_type = 2;
		break;
    case 7: 
		new_sprite = sprite_get("pluxdeath");
        animation_type = 1;
		break;
    case 8:
		new_sprite = sprite_get("pluxattack");
        animation_type = 4; 
		break;
    case 9:
        new_sprite = asset_get("empty_sprite");
        animation_type = 2;  	
        break;
	case 12:
        new_sprite = sprite_get("pluxthrow");
        animation_type = 1;
        break;
	case 13:
		new_sprite = sprite_get("pluxspawn");
        animation_type = 1; 
		break;
	case 14:
		new_sprite = sprite_get("pluxdespawn");
        animation_type = 2; 
		break;
	case 17:
		new_sprite = sprite_get("pluxtaunt");
		if (state_timer >= 55) {
			animation_type = 5;
		} else {
        	animation_type = 1;
		}
        break;
	case 18:
		new_sprite = sprite_get("pluxstun");
        animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
		break;
		
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
	case 3: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod idle2_anim_rate == 0){
            image_index++;
        }
        break;
	case 4: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle3_anim_rate == 0){
            image_index++;
        }
        break;
	case 5: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod taunt2_anim_rate == 0){
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

//gravity
if (free && grav == true) {
    vsp += 0.6;
}

//bouncing
if ((plux_can_bounce == true && !free && (state != 0 && state != 4 && state != 5 && state != 6 && state != 7 && state != 8 && state != 9 && state != 10 && state != 11 && state != 12 && state != 17)) || player_id.plux_throw_hit == 1) {
    state = 2;
	state_timer = 0;
	player_id.plux_throw_hit = 0;
}

//Energy Sync
player_id.fairyenergy = fairyenergy;

//Bullet Attack & Getting Hit
with (asset_get("pHitBox")) {
	if (other.state == 3 || other.state == 4 || other.state == 6 || other.state == 10) {
		if (player_id != other.player_id) {
			if (place_meeting(x, y, other.id)) {
				other.enemyspr_dir = player_id.spr_dir;
				other.langle = get_hitbox_angle( id );
				other.force = id.kb_value + (other.totaldamage * id.kb_scale * 12);
				other.state = 5;
				other.state_timer = 0;
			}
		}
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion