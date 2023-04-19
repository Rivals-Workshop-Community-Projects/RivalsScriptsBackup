//p2 update




//if hit by a hitbox, die
spawnhiteffect = false;
with (pHitBox) {
    if player != other.player_id.player {
        if place_meeting(x,y,other) {
            other.i_do_not_control_the_speed_at_which_lobsters_die = true;
        }
    }
}

switch(state) {
    case 1:
        if (free) { 
            //correct position if buggy spawn from pat detection
            var leftstage = get_stage_data(SD_X_POS);
			var rightstage = room_width - get_stage_data(SD_X_POS);
			var upstage = get_stage_data(SD_Y_POS);
			//if there's ground below, teleport to it
			var dist_to_ground = 0;
			//increase detection range until it reaches the ground or goes too far
			while(!collision_line(x,y,x,y+dist_to_ground,asset_get("par_block"),true,true) && !collision_line(x,y,x,y+dist_to_ground,asset_get("par_jumpthrough"),true,true) && dist_to_ground < 999) {
				dist_to_ground += 4;
			}
			//if dist to ground is less than the limit (onstage)
			if dist_to_ground < 999 {
				y += dist_to_ground;
			} else { //else that means you're offstage, teleport to one of the edges
			    if x < room_width/2 {
			    	x = leftstage;
			    	y = upstage;
			    } else {
			    	x = rightstage;
			    	y = upstage;
			    }
			}
        }
        sprite_index = sprite_get("dspecial_specs");
        last_window = 4;
        switch(window) {
            case 1: //startup
                window_length = 32;
                anim_frame_start = 0;
                anim_frames = 11;
                if window_timer == 1 { 
                	sound_play(sound_get("ToHumanMix00"));
                }
                break;
            case 2: //shot
                window_length = 2;
                anim_frame_start = 11;
                anim_frames = 2;
                if window_timer == 1 {
		    		if(collision_point(x + (window_timer * 20) * spr_dir, y + 20, asset_get("par_block"),false,true) != noone || collision_point(x + (20 * spr_dir) + (window_timer * 20)* spr_dir, y + 20, asset_get("par_jumpthrough"),false,true) != noone){
                    	hsp = 12 * spr_dir;
                    	spawn_base_dust(x, y, "dash_start", 0);
                	}else{
                    	hsp = 0;
                	}
                	sound_play(sound_get("PlayerWeaponRollerSwingVertical10"));
                    bullet = create_hitbox(AT_DSPECIAL,2,x * spr_dir, y);
                    bullet.spr_dir = spr_dir; //projectile spr_dir is currently broke apparently so we gotta do this
                    bullet.draw_xscale = spr_dir;
                }
                if window_timer == 2 {
                    bullet1 = create_hitbox(AT_DSPECIAL,2,x * spr_dir, y);;
                    bullet.spr_dir = spr_dir; //projectile spr_dir is currently broke apparently so we gotta do this
                    bullet.draw_xscale = spr_dir;
                	
                }
				if instance_exists(bullet) {
					bullet.x = x + 30 * spr_dir;
					bullet.y = y - 28;
				}
				if instance_exists(bullet1) {
					bullet1.x = x + 0 * spr_dir;
					bullet1.y = y - 88;
				}
                break;
            case 3: //endlag
                window_length = 20;
                anim_frame_start = 13;
                anim_frames = 5;
				if(collision_point(x + (window_timer * 20) * spr_dir, y + 20, asset_get("par_block"),false,true) != noone || collision_point(x + (20 * spr_dir) + (window_timer * 20)* spr_dir, y + 20, asset_get("par_jumpthrough"),false,true) != noone){
                if hsp > 0 && spr_dir = 1{
                    hsp -= 0.8 * spr_dir;
                }
                if hsp < 0 && spr_dir = -1{
                    hsp -= 0.8 * spr_dir;
                }
                }else{
                hsp = 0;
            	}
                //hsp = 0;
				if instance_exists(bullet) {
					bullet.x = x + 30 * spr_dir;
					bullet.y = y - 28;
				}
				if instance_exists(bullet1) {
					bullet1.x = x + 0 * spr_dir;
					bullet1.y = y - 88;
				}
                break;
            case 4: //endlag
                window_length = 28;
                anim_frame_start = 18;
                anim_frames = 7;
				if(collision_point(x + (window_timer * 20) * spr_dir, y + 20, asset_get("par_block"),false,true) != noone || collision_point(x + (20 * spr_dir) + (window_timer * 20)* spr_dir, y + 20, asset_get("par_jumpthrough"),false,true) != noone){
                if hsp > 0 && spr_dir = 1{
                    hsp -= 0.8 * spr_dir;
                }
                if hsp < 0 && spr_dir = -1{
                    hsp -= 0.8 * spr_dir;
                }
                }else{
                hsp = 0;
            	}
                //hsp = 0;
				if instance_exists(bullet) {
					bullet.x = x + 30 * spr_dir;
					bullet.y = y - 28;
				}
				if instance_exists(bullet1) {
					bullet1.x = x + 0 * spr_dir;
					bullet1.y = y - 88;
				}
                break;
        }
        if i_do_not_control_the_speed_at_which_lobsters_die {
            state = 2;
            window = 1;
            window_timer = 0;
            
        }
        break;
    case 2:
        sprite_index = sprite_get("squib_soul");
        last_window = 1;
        ignores_walls = true;
        can_be_grounded = false;
        switch(window) {
            case 1: //thrown
                window_length = 144;
                anim_frame_start = 0;
                anim_frames = 36;
                //movement to make it look like he got hit
                if window_timer == 1 {
                    vsp = -5;
                    sound_stop(sound_get("VoiceMComeOn00"));
                    sound_play(sound_get("SpecsDead"));
                    sound_play(sound_get("Damage00"));
                    sound_play(sound_get("DeadSplash00"));
                    spawn_hit_fx(x,y,player_id.Inkdeath);
                    spawn_hit_fx(x,y,306);
                }
                break;
        	
        }
		//cooldown for the player
        break;
    case 3:
        sprite_index = sprite_get("taunt_specs_gritty");
        last_window = 3;
        switch(window) {
            case 1: //startup
                window_length = 30;
                anim_frame_start = 1;
                anim_frames = 6;
                hsp = 0;
                break;
            case 2: //shot
                window_length = 30;
                anim_frame_start = 1;
                anim_frames = 6;
                break;
            case 3: //endlag
                window_length = 75;
                anim_frame_start = 7;
                anim_frames = 15;
                if window_timer == 74 { 
                	state = 1;
                	window = 4;
            		window_timer = 0;
                	
                }
                break;
        }
        if i_do_not_control_the_speed_at_which_lobsters_die {
            state = 2;
            window = 1;
            window_timer = 0;
            
        }
        break;
    case 4:
        sprite_index = sprite_get("taunt_specs");
        last_window = 3;
        switch(window) {
            case 1: //startup
                window_length = 30;
                anim_frame_start = 1;
                anim_frames = 5;
        		hsp = 0;
                break;
            case 2: //shot
                window_length = 30;
                anim_frame_start = 7;
                anim_frames = 5;
                break;
            case 3: //endlag
                window_length = 30;
                anim_frame_start = 12;
                anim_frames = 7;
                if window_timer == window_length { 
                	state = 1;
                	window = 4;
            		window_timer = 0;
                	
                }
                break;
        }
        if i_do_not_control_the_speed_at_which_lobsters_die {
            state = 2;
            window = 1;
            window_timer = 0;
            
        }
        break;
}


//does stuff
progress_attack();

#define progress_attack //makes attack go brrrr
//animation that works like attack window animation
image_index = ease_linear(anim_frame_start,anim_frame_start + anim_frames, window_timer, window_length);
//window stuff
if window_timer >= window_length {
    if window == last_window { //if it's the last window then die
        instance_destroy();
    } else { //otherwise go to next window & reset timer
        window += 1; 
        window_timer = 0;
    }
} else {
    window_timer += 1;
}

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
