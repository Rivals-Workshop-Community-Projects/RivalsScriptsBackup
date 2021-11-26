// Delete the Rune or Mirror if they're in the field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && (state != 2 and state != 3 and state != 6 and state != 7)) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    if state == 0 or state == 1{
        setState(3);
    }
}

if flash{
	if flash_timer % 24 < 5{
		art_col = c_black;
	} else {
		art_col = get_player_hud_color(player_id.player);
	}
	flash_timer++;
}

// Delete the rune if it goes off stage
if (y > room_height + 100 && (state != 6 and state != 7 and state != 2 and state != 3)){
	// Remove Cloud
	if (state == 0 or state == 1){
	    setState(3);
	}
}

if soundplayed{
	soundplayed = false;
}

offscreen_track = 8;

//print_debug(string(state))

posCloud();
depth =29;
switch(state){
    case 0:     // Summon
    	for(var i = 0; i < rain_particle_count; i++){
        	//print_debug(rain_particles[i].y)
        	rain_particles[i].y+=rain_particles[i].fall_speed;
        	if(collision_point(x, rain_particles[i].y, asset_get("par_block"), false, true)){
    			rain_particles[i].visible = false;
        	}
        }
        var cur_raindrop = rain_particles[get_gameplay_time()/rain_particle_rate%rain_particle_count];
        
        if(!cur_raindrop.visible and get_gameplay_time()%rain_particle_rate==0){
        	cur_raindrop.visible = true;
        	cur_raindrop.y = y;
        	cur_raindrop.x = x-state_timer + random_func(0, state_timer*2, true);
        	cur_raindrop.fall_speed = 5 + random_func(0, 12, true)/6;
        }
    
    	if state_timer == 55{
    		sound_play(sound_get("sfx_rain"));
			ignores_walls = false;
			setState(1);
    	}
        break;
    case 1:     // Active
    case 2:
    
        // Rain
        
        for(var i = 0; i < rain_particle_count; i++){
        	//print_debug(rain_particles[i].y)
        	rain_particles[i].y+=rain_particles[i].fall_speed;
        	if(collision_point(x, rain_particles[i].y, asset_get("par_block"), false, true)){
    			rain_particles[i].visible = false;
        	}
        }
        var cur_raindrop = rain_particles[get_gameplay_time()/rain_particle_rate%rain_particle_count];
        
        if(!cur_raindrop.visible and get_gameplay_time()%rain_particle_rate==0){
        	cur_raindrop.visible = true;
        	cur_raindrop.y = y;
        	cur_raindrop.x = x-60 + random_func(0, 120, true);
        	cur_raindrop.fall_speed = 5 + random_func(0, 12, true)/6;
        }
        // Timer
        lifetime++;
        if lifetime >= lifetime_max{
            setState(3);
        }
        break;
    case 3:     // Deactive
        if state_timer == 67{
            player_id.raincloud = noone;
            instance_destroy();
        }
        break;
}
if(instance_exists(self)){ //preventing a bug
	// Animation Handler
	switch(anim_type[state]){
	    case 0:
	        var frames = 4;
	        var frame_dur = 3;
	        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
	        break;
	    case 1: //unused, just from template
	        var frames = 20;
	        var frame_dur = 3;
	        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
	        break;
	    case 2: //RainCloud Active
	        var frames = 8;
	        var frame_dur = 8;
	        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
	        break;
	    case 3: //RainCloud Summon
	        var frames = 10;
	        var frame_dur = 6;
	        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
	        break;
	    case 4: //RainCloud Vanish
	        var frames = 12;
	        var frame_dur = 6;
	        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
	        break;
	}
	
	//If not already at the sprite it should be, switch to the new sprite
	if (sprite_index != sprite[state]){
	    sprite_index = sprite[state];
	}
	
	state_timer += 1;
}
#define posCloud
// Check for the ground, basically around where trummel clouds are

if x < stage_x{
	// move left
	x = lerp(x, stage_x + full_move, move_amt);
}

if x > stage_x_right{
	// move right
	x = lerp(x, stage_x_right - full_move, move_amt);
}

if y > stage_y{
	// move up
	y = lerp(y, stage_y, move_amt);
}

if y < stage_y{
	y = lerp(y, stage_y, move_amt);
}

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

prev_state = state;
state = new_state;
state_timer = 0;
