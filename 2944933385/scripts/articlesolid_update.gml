if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    should_die = true; //you could replace this with "setState(2);" to make it die INSTANTLY, even if already attacking or etc
}
if (is_free == true && free == false){
    spawn_base_dust(x, y + 26, "land", spr_dir);
    sound_play(sound_get("sfx_hydrant_land"));
    player_id.hydrant_cooldown = 0;
    is_free = false;
}
if (is_free == false && free){
    is_free = true;
}

if (state != 1 && exist_timer > 1){
	is_hittable = true;
	with (asset_get("pHitBox")){
    if (place_meeting(x,y,other) && other.state != 1 && throws_rock != 2){
    	if ((!(other.prev_hbox_num == hbox_num && other.prev_attack == attack)) && 
				((other.prev_hbox_group == hbox_group && other.prev_attack != attack) || 
				other.prev_hbox_group != hbox_group || -1 == hbox_group)){
    	has_hit = true;
    	if (!transcendent && type == 2){
    		destroyed = true;
    	}
    	other.prev_hbox_num = hbox_num;
    	other.prev_hbox_group = hbox_group;
    	other.prev_attack = attack;
        other.hitstun_time = hitpause;
        other.health -= damage;
        other.state = 1;
        other.state_timer = 0;
        other.hbox_spr_dir = spr_dir;
        other.recent_player = player;
        player_id.has_hit = true;
		other.kb_scaling = kb_scale;
		other.bkb = kb_value;
		with (other) {kb_angle = get_hitbox_angle(other.id);}
        sound_play(sound_effect);
        var fx = spawn_hit_fx(x, y, hit_effect);
        fx.pause_timer = 20;
        fx.pause = 15;
        if (type == 1){
        other.hbox_refresh_time = length*4;
        }
        if (type == 2){
        other.hbox_refresh_time = 10;
        }
        if (type != 2){
        	//player_id.artificial_hitstop_time = hitpause;
            }
        }
        }
    }
}

if (state == 0){
    var stage_x = get_stage_data( SD_X_POS );
    var stage_y = get_stage_data( SD_Y_POS );
    //var freemd = ;
    if (place_meeting(x, y + 1, asset_get("par_block"))){
    	if (x < room_width*0.5){
    	if (x <= stage_x + 20 && x > stage_x - 20){
    		x = stage_x + 20;
    	}
    	}
    	if (x > room_width*0.5){
    	if (x >= (room_width - stage_x) - 18 && x < (room_width - stage_x) + 20){
    		x = (room_width - stage_x) - 18;
    	}
    	}
    }
	if (free){
		var low_enough = collision_line(x, y, x, y - 32, asset_get("par_block"), false, false);
		if (low_enough != noone){
			 mask_index = sprite_get("hydrant_hurtbox");
		} else {
			//mask_index = asset_get("empty_sprite");
		}
		if (!instance_exists(fallbox)){
		fallbox = create_hitbox(AT_DSPECIAL, 1, x, y + 8);
		}
		fallbox.x = x;
		fallbox.y = y + 8;
		fallbox.sprite_index = asset_get("empty_sprite");
		fallbox.no_other_hit = 30;
		fallbox.length = 2;
		fallbox.vsp = 0;
		
		if (vsp == 0 && exist_timer == 1){
			y -= 16;
		}
		if (exist_timer > 1){
			vsp = 8;
		}
	} else idle_time ++;
    sprite_index = sprite_get("hydrant");
    mask_index =  sprite_get("hydrant_hurtbox");
    if (idle_time == 60){
    	if (sprays < 2){
    	state = 2;
    	state_timer = 0;
    	image_index = 0;
    	if (player_id.y <= y - 16){
    		if (player_id.x > x - 16 or player_id.x < x + 16){
	    		spray_dir = 1;
    		}
    	} else spray_dir = 0;
    	sprays += 1;
    	} else {
    		should_die = true;
    	}
    }
}

if (state == 2){
	if (spray_dir == 0){
	    sprite_index = sprite_get("hydrant_start_side");
	}
	if (spray_dir == 1){
	    sprite_index = sprite_get("hydrant_start_top");
	}
	image_index += .2;
	if (state_timer == 40){
		sound_play(sound_get("sfx_hydrant_spray"));
		state = 3;
		state_timer = 0;
		image_index = 0;
		if (spray_dir == 0){
		var right_spray = create_hitbox(AT_DSPECIAL, 3, x + 40*spr_dir, y - 8);
		var left_spray = create_hitbox(AT_DSPECIAL, 4, x - 40*spr_dir, y - 8);
		}
		if (spray_dir == 1){
		var up_spray = create_hitbox(AT_DSPECIAL, 3, x, y - 32);
		up_spray.proj_angle = 90;
		up_spray.hsp = 0;
		up_spray.vsp = -5;
		}
	}
}

if (state == 3){
	if (spray_dir == 0){
	    sprite_index = sprite_get("hydrant_spray_side");
	}
	if (spray_dir == 1){
	    sprite_index = sprite_get("hydrant_spray_top");
	}
	image_index += .15;
	if (state_timer == 17){
		state = 0;
		state_timer = 0;
		idle_time = 0;
	}
}

if (state != 1){
	prev_state = state;
	prev_timer = state_timer;
	prev_index = image_index;
}


kb_speed = ((bkb + 10 * kb_scaling * kb_adj)); // calculates knockback speed

if (hbox_refresh_time > 0){
	hbox_refresh_time --;
	hbox_refresh = true;
}

if (hbox_refresh_time == 0 && hbox_refresh == true){
	prev_hbox_num = 0;
	prev_hbox_group = 0;
	prev_attack = 0;
	hbox_refresh = false;
}

if (state == 1){
	is_hittable = false;
    sprite_index = sprite_get("hydrant_hit");
    if (state_timer >= round(hitstun_time*1.25)){
        if (health > 0){
        state = prev_state;
        state_timer = prev_timer;
        image_index = prev_index;
        } else {
        	player_id.hydrant_cooldown = 80;
        	var loose_hyd = create_hitbox(AT_DSPECIAL, 2, x, y);
        	loose_hyd.vsp = lengthdir_y(kb_speed, kb_angle);
        	loose_hyd.hsp = lengthdir_x(kb_speed, kb_angle);
        	loose_hyd.spr_dir = hbox_spr_dir;
        	loose_hyd.player = recent_player;
            should_die = true;
        }
    }
}


right_block = collision_line(x, y, x + 32, y, asset_get("par_block"), false, false);
left_block = collision_line(x, y, x - 32, y, asset_get("par_block"), false, false);

if (y > room_height + 200){
	should_die = true;
}

if (should_die){
        instance_destroy();
        exit; //Stops execution of the script
}
state_timer ++;
exist_timer ++;
#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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

