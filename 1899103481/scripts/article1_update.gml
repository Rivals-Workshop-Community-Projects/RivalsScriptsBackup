particle_timer--;
// image_angle -= hsp;  causes physics problems, Sy has solution? (search discord)

if (hsp > max_hsp){ hsp = max_hsp};
if (hsp < -max_hsp){ hsp = -max_hsp};

if (vsp > max_vsp){ vsp = max_vsp};
if (vsp < -max_vsp){ vsp = -max_vsp};

speeed = sqrt(hsp*hsp + vsp*vsp);

if (hitbox_timer > 0){
    hitbox_timer--;
} else{
    hitboxed = false;
}

if (ball_timer > 0){
    ball_timer--;
} else{
    // projectile = 1;
}

if (hitpause_timer > 1){
	hsp = 0;
	vsp = 0;
	hitpause_timer--;
}
if(hitpause_timer == 1){
	hitpause_timer--;
	hsp = stored_hsp;
	vsp = stored_vsp;
}

if (bounce_sound_timer > 0){
	bounce_sound_timer--;
}
if (bounce_sound_timer == 0){
	play_bounce_sound = true;
}

lifespan--;

if (hsp > 0){
    spr_dir = 1;
}
else if (hsp < 0){
    spr_dir = -1;
}

if(hit_wall){
    hsp = -1*hsp_previous*0.95;
	spawn_hit_fx(x, y, hit_fx_create(sprite_get("magma_explosion"), 10));
}


// collision with wall article
var article = noone;
with(asset_get("obj_article3")){
	if (player_id == other.player_id){
		article = id;
	}
}
if( article != noone
&& place_meeting(x, y, article) 
&& abs(hsp) > 1.5 && !has_collided){
	// hsp = -1*hsp_previous;
	if (abs(hsp) > 6){
		hsp = -1*hsp_previous; //original
	}else{
		hsp = -sign(hsp_previous)*6; // test, minimum speed
	}
	spawn_hit_fx(x,y,4);
	spawn_hit_fx(x, y, hit_fx_create(sprite_get("magma_explosion"), 10));
	sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
	has_collided = true;
} else if (article != noone
&& place_meeting(x, y, article) && abs(hsp) <= 1.5 && !has_collided){
	lifespan = 1;
	has_collided = true;
} else{
	has_collided = false;
}


if (free){
    vsp += ballGrav;
    hsp *= 0.999;
    hsp_previous = hsp;
    vsp_previous = vsp;
}else{
	if (abs(vsp_previous) > 2){
	    vsp = -0.80*vsp_previous;
		spawn_hit_fx(x+8*sign(hsp), y+48, hit_fx_create(sprite_get("magma_explosion"), 10));
	}
	hsp *= 0.95;
	if(play_bounce_sound && (abs(vsp) > 1.5) ){
		sound_play(asset_get("sfx_land_heavy"));
		play_bounce_sound = false;
		bounce_sound_timer = 20;
	}
	if (abs(hsp) < 1 && abs(vsp < 2) && lifespan < 420){
		projectile = 0;
	}
}

if (lifespan < 1
|| ready_to_destroy == true
|| player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND
|| y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS)
|| x < get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE)
|| x > room_width + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE)){
	if (player_id.attack != AT_TAUNT){
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("nspecial_proj_disintegrate"), 16));
		sound_play(asset_get("sfx_ori_charged_flame_release"));
		sound_play(asset_get("sfx_ori_charged_flame_release"));
	}
    instance_destroy();
    exit;
}

with (asset_get("oPlayer")){
	if(id == other.player_id){
		other.attack_id = attack_id;
	}
}

// when a hitbox from the owner player touches the article
with (asset_get("pHitBox")) {
    if ( player_id == other.player_id 
    && place_meeting(x,y,other) 
    && player != 0 
    && attack != AT_NSPECIAL
    && attack != AT_TAUNT
    && other.last_hitbox != id
    && !(other.attack_id == other.last_attack_id // condition hell....
    && other.last_hitbox_group == hbox_group)){
    	switch(attack){
			case AT_JAB:
				other.hsp = 8*sign(other.x+24*spr_dir - x);
				other.vsp = -3;
				break;
			case AT_FTILT:
				other.hsp = 12*sign(other.x+68*spr_dir - x);;
				other.vsp = -6;
				break;
			case AT_DTILT:
				other.hsp = 0;
				other.vsp = -20;
				break;
			case AT_UTILT:
				other.vsp = -8;
				break;
    		case AT_NAIR: 
				var sp = point_direction(x,y, other.x, other.y)
				other.hsp = lengthdir_x(10,sp);
				other.vsp = lengthdir_y(10,sp);
				break;
			case AT_FAIR:
				other.hsp = 11*sign(other.x + 40*spr_dir - x);
				other.vsp = 5;
				break;
			case AT_DAIR:
				// other.hsp = 3*sign(other.x+24*spr_dir - x);
				other.vsp = 15;
				break;
			case AT_UAIR:
				other.vsp = -11
				break;
			case AT_USPECIAL:
				var sp = point_direction(x,y, other.x, other.y)
				other.hsp = lengthdir_x(10,sp);
				if (sp <= 180){
					other.vsp = lengthdir_y(10,sp);
				} else{
					other.vsp = -1*lengthdir_y(10,sp);
				}
				break;
			case AT_DSPECIAL_AIR:
				if (hbox_num == 1){
					other.hsp = 4*sign(other.x+36*spr_dir - x);
					other.vsp = 18;
				} else if (hbox_num == 2){
					other.hsp = 6*sign(other.x+36*spr_dir - x);
					other.vsp = 8;
				} else if (hbox_num == 3){
					other.hsp = 8*sign(other.x+36*spr_dir - x);
					other.vsp = -4;
				}
				break;
			case AT_DSPECIAL_2:
				if (hsp != 0){other.hsp = 3*hsp;}
	        	other.vsp = 1*vsp;
	        	destroyed = true;
				break;
			case AT_USTRONG:
				other.hsp = 3*hsp;
				other.vsp = 1*vsp;
				destroyed = true;
				break;
			case AT_TAUNT:
				
				break;
			default:
	        	other.hsp = lengthdir_x(2*kb_value, get_hitbox_angle(id));
	        	other.vsp = lengthdir_y(1*kb_value, get_hitbox_angle(id));
				break;
    	}

        other.speed_kb = kb_value*2; //kb_value*2
        other.free = true;
        
        // TODO in later update (Muno's suggestions) -- yea..
	//      other.player_id.hitpause = true;
		// other.player_id.hitstop = other.player_id.hitstop_amount; 

        if (!other.hitboxed){
        	// TODO in later update
			// todo: pick sound based on amount of knockback
			// other.ball_grav = 0;
			// other.stored_hsp = other.hsp;
			// other.stored_vsp = other.vsp;
			// other.hsp = 0;
			// other.vsp = 0;
			// other.hitpause_timer = player_id.hitstop_amount;
			
			sound_play(asset_get("sfx_blow_heavy2")); //todo 
            spawn_hit_fx(other.x, other.y, hit_fx_create(sprite_get("round"), 10));
            other.hitboxed = true;
            hitbox_timer = 30;
            
            other.last_hitbox = id;
        	other.last_hitbox_group = hbox_group;
        	other.projectile = 1;
        	other.last_attack = attack;
        	other.last_attack_id = other.attack_id;
        }
        break;
    } else if (player_id != other.player_id
	&& place_meeting(x,y,other) 
    && player != 0 
    && other.last_hitbox != id
    && !(other.attack_id == other.last_attack_id // condition hell....
    && other.last_hitbox_group == hbox_group)	){
		// if another player hits the ball
		// option 1: destroy the article (but opponents hitting it back is more fun)
		// with (other) {
			// spawn_hit_fx(x, y, hit_fx_create(sprite_get("nspecial_proj_disintegrate"), 14));
			// sound_play(asset_get("sfx_burnend"));
			// lifespan = 1;
		// }
		
		// OPTION 2: Targma Tennis (harder to code...)
		other.hsp = lengthdir_x(2*kb_value, get_hitbox_angle(id));
	    other.vsp = lengthdir_y(1*kb_value, get_hitbox_angle(id));
		
		if (!other.hitboxed){
			other.last_whacked_by = player;
			sound_play(asset_get("sfx_blow_heavy2")); // todo? sound dependent on 
            with (other) {spawn_hit_fx(other.x, other.y, hit_fx_create(sprite_get("starburst"), 10));}
            other.hitboxed = true;
            other.hitbox_timer = 30;
            
            other.last_hitbox = id;
        	other.last_hitbox_group = hbox_group;
        	other.projectile = 2;
        	other.last_attack = attack;
        	other.last_attack_id = other.attack_id;
        }
		// end of Targma Tennis code
		
		// ignore these 2 lines:
		// instance_destroy(); //no idea which one is better
		// destroyed = true; //stopped working for no reason
		
		// projectile = player; // Targma Tennis comes later maybe
	}
}

// bouncing off the opponent
if (projectile == 1) {
	spawn_hit_fx(x - 4 + random_func(0, 8, true), y - 4 + random_func(1, 8, true), hit_fx_create(sprite_get("nspecial_proj_trace"), 80));
	
	with (player_id){
		var dynamic_knockback = 3 + other.speeed/6; 
		if (dynamic_knockback > 6) { dynamic_knockback = 6;}
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, dynamic_knockback);
	}
	sprite_index = sprite_get("nspecial_proj_active");
	mask_index = sprite_get("nspecial_proj_active");

	var hitted = instance_place(x,y,oPlayer);
	if hitted != noone && hitted != player_id && !hitted.invincible {
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("round"), 20));
		if (!hitted.hitpause){
			ball_box = create_hitbox(AT_NSPECIAL,1,hitted.x,hitted.y);
		}
		if hitted.state == PS_PARRY && hitted.state_timer <= hitted.dodge_active_frames+hitted.dodge_startup_frames {
			hsp = 9*-sign(hsp);
			vsp = -2;
			last_whacked_by = hitted.player;
			// ball_box.player = hitted;
			projectile = 2;
			// screw this, the ball shouldn't be destroyed on parry
			// spawn_hit_fx(x, y, hit_fx_create(sprite_get("nspecial_proj_disintegrate"), 14));
			// sound_play(asset_get("sfx_burnend"));
			// instance_destroy();
		} else {// if (hitted.state != PS_PARRY) { //Bonk
				vsp = -5; //-5
				hsp = sign(hsp); // -1
				projectile = 0;
				ball_timer = 30;
				player_id.magnet = 30;
		}
	}
	//opponent has hit it
} else if (projectile == 2){	
	spawn_hit_fx(x - 4 + random_func(0, 8, true), y - 4 + random_func(1, 8, true), hit_fx_create(sprite_get("nspecial_proj_trace"), 80));
	with (oPlayer){
		if (player == other.last_whacked_by){
			other.last_whacked_by_id = id;
		}
	}
	with (last_whacked_by_id){
		var dynamic_knockback = 3 + other.speeed/4; 
		if (dynamic_knockback > 6) { dynamic_knockback = 6;}
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, dynamic_knockback);
	}
	sprite_index = sprite_get("nspecial_proj_active");
	mask_index = sprite_get("nspecial_proj_active");

	var hitted = instance_place(x,y,oPlayer);
	if hitted != noone && hitted == player_id && !hitted.invincible {
		if (!hitted.hitpause){
			ball_box = create_hitbox(AT_NSPECIAL,1,hitted.x,hitted.y);
			ball_box.player = last_whacked_by;
		}
		if hitted.state == PS_PARRY && hitted.state_timer <= hitted.dodge_active_frames+hitted.dodge_startup_frames {
			hsp = 9*-sign(hsp);
			vsp = -2;
			last_whacked_by = player;
			projectile = 1;
		} else { //Bonk
				vsp = -5; //-2
				hsp = sign(hsp); // -1
				projectile = 0;
				ball_timer = 30;
				player_id.magnet = 30;
		}
	}
} else{
	sprite_index = sprite_get("nspecial_proj");
}