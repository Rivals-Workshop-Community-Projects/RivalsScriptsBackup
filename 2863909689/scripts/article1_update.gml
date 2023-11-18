//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
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




//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
	
	//nspecial interaction
	with (asset_get("pHitBox")){
    	if (player_id == other.player_id && attack == AT_NSPECIAL && !player_id.hitpause && place_meeting(x, y, other.id)){ //Kick
    		with (other){ 
    			state = 3;
    			state_timer = 0;
    		}
    	}
	}
    
    //janky landing animation code
    if (free){
    	landed = false;
    	sprite_index = sprite_get("alarm_idle");
    }
    else{
    	vsp = 0;
    }
    if (!free && !landed && land_time == -1){
    	land_time = land_time_max;
    	sound_play(asset_get("sfx_land_heavy"));
    }
    if (!landed && !free && land_time > 0){
    	sprite_index = sprite_get("alarm_land");
    }
    if (land_time <= 0 && !free && !landed){
    	landed = true;
    	land_time = -1;
    	sprite_index = sprite_get("alarm_idle");
    }
    if (land_time > 0){
		land_time--;
	}
    //end of janky landing animation code
    
    //flicker when about to disappear
    if (state_timer > lifetime){
    	state = 2;
    	state_timer = 0;
    }
    
    if (state_timer > lifetime - 60){
		visible = !(flash_time && state_timer % 10 < 5);
	}
	
	//disappear if too far offstage
	if (y > room_height + 200){
		shake_camera(3, 5);
	    state = 2;
	    state_timer = 0;
	}
	
	if (x < 0 || x > room_width){
	    state = 2;
	    state_timer = 0;
	}
    
    /*
    //do attack
    if (player_id.article_attack && state_timer > 2){
    	with (player_id){
    		article_attack = false;
    	}
    	state = 1;
    	state_timer = 0;
    }
    */
    
}



if (free){
    if (vsp < fall_speed){
    	vsp += grav_speed;
    }
}




var sparkle_timer = 1;

var random_x_range = 60;
var random_y_range = 60;

var random_x = random_func_2( 1, random_x_range, true ) - random_x_range/2;
var random_y = random_func_2( 2, random_y_range, true ) - random_y_range/2;



var red_timer = 40;

//State 1: attack

if (state == 1){
	
	visible = true;
	
	if (state_timer == 1){
		spawn_hit_fx( x + x_offset, y + y_offset, 301 );
		sound_play(sound_get("beep"));
	}
    
    //spawn hitbox on hit player
    if (state_timer == attack_delay && player_who_hit != -4){
    	var hitbox_x = player_hit.x;
    	var hitbox_y = player_hit.y;
    	
    	shake_camera(3, 5);
    	
    	spawn_hit_fx( floor(hitbox_x), floor(hitbox_y), player_id.explosion_effect );
    	
    	if (player_who_hit.player != player_id.player){
    		with (player_id){
    			set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
    		}
    	}
    	
    	var beep_hitbox = create_hitbox(AT_DSPECIAL, 2, floor(hitbox_x), floor(hitbox_y) - floor(player_hit.char_height/2));
    	beep_hitbox.player = player_who_hit.player;
    	sound_play(sound_get("explosion"));
    	sound_play(sound_get("beep"));
    	
    	with (player_id){
    		reset_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER);
    	}
    	
    	text_color = c_white;
    	
    	player_hit = noone;
    }
    
    //spawn vfx on hit player
    if (state_timer mod sparkle_timer == 0){
    	if (player_hit != noone){
    		spawn_hit_fx( player_hit.x + (random_x)*player_hit.spr_dir, player_hit.y - 20 + (random_y), player_id.nair_sparkle );
    	}
    }
    
    //make text flicker red
    if (state_timer mod red_timer <= red_timer/2){
    	text_color = c_red;
    }
    else{
    	text_color = c_white;
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == attack_delay + 40){
	    state = 2;
	    state_timer = 0;
    }
    
}



//State 2: Dying

if (state == 2){
    if (state_timer == 1){
    	spawn_hit_fx( x + x_offset, y + y_offset, 301 );
    	sound_play(sound_get("tool_break"));
        instance_destroy();
        exit;
    }
}



//State 3

if (state == 3){
	sprite_index = sprite_get("alarm_break");
	if (state_timer == 0){
		sound_play(asset_get("sfx_blow_medium3"));
		sound_play(sound_get("beep"));
		spawn_hit_fx( floor(x + x_offset), floor(y + y_offset), 301 );
	}
	if (state_timer == floor(blast_time/2)){
		sound_play(sound_get("beep"));
		spawn_hit_fx( floor(x + x_offset), floor(y + y_offset), 301 );
		image_index++;
	}
	if (state_timer == blast_time){
		sound_play(sound_get("beep"));
		sound_play(sound_get("explosion"));
		spawn_hit_fx( floor(x + x_offset), floor(y + y_offset), player_id.explosion_effect );
		var explosion_hitbox = create_hitbox(AT_DSPECIAL, 3, floor(x + x_offset), floor(y + y_offset) + 10);
		state = 2;
		state_timer = 0;
	}
}



//State 4

if (state == 4){
	//Put something here if you want
}



//State 5

if (state == 5){
	//Put something here if you want
}



//State 6

if (state == 6){
	//Put something here if you want
}



//State 7

if (state == 7){
	//Put something here if you want
}



//State 8

if (state == 8){
	//Put something here if you want
}



//State 9: Attack

if (state == 9){
    
    //11 frames in, create DSPECIAL hitbox 1
    if (state_timer == 11){
    	create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise"));
    }
    
    //11 frames in, create DSPECIAL hitbox 2
    if (state_timer == 15){
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise2"));
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 28){
	    state = 2;
	    state_timer = 0;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)

//Make time progress
state_timer++;