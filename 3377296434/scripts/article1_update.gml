if (state == 0){ //ball
    image_index += 0.3;
	if (vsp < grav){
		vsp ++;
	}
	if (!free){
		if (state_timer % 4 < 1){
			
        spawn_base_dust(x - 8*spr_dir, y, "dash", 0);
		}
	}
	if (!free && !roll_sound_play){
		sound_play(roll_sound, true, noone, 1, 1);
		roll_sound_play = true;
	}
	if (free && roll_sound_play){
		sound_stop(roll_sound);
		roll_sound_play = false;
	}
	if (!instance_exists(brickbox)){
	brickbox = create_hitbox(AT_DSPECIAL, 1, x + 15*spr_dir, y - 26);
	}
	brickbox.x = x + 15*spr_dir;
	brickbox.y = y - 26;
    if (place_meeting(x, y, asset_get("plasma_field_obj")) == true){
	spawn_hit_fx(x, y, 256);
	state = 2;
	state_timer = 0;
	vsp = -8;
	hsp = -4*spr_dir;
    }
    if (hit_wall){
    sound_play(sound_get("ground_hit"));
	spawn_hit_fx(x, y, 301);
	state = 2;
	state_timer = 0;
	vsp = -8;
	hsp = -4*spr_dir;
    }
} else sound_stop(roll_sound);

if (state == 4){ //missile
	if (vsp < 0){
		vsp += 0.4;
	}
	hsp = 0;
	create_hitbox(AT_USTRONG, 2, x + 0*spr_dir, y - 46);
    sprite_index = sprite_get("brick_missile");
    image_index += 0.2;
    if (place_meeting(x, y, asset_get("plasma_field_obj")) == true){
	spawn_hit_fx(x, y, 256);
	state = 2;
	state_timer = 0;
	vsp = -8;
	hsp = -4*spr_dir;
    }
    if (hit_wall){
    sound_play(sound_get("ground_hit"));
	spawn_hit_fx(x, y, 301);
	state = 2;
	state_timer = 0;
	vsp = -8;
	hsp = -4*spr_dir;
    }
    if (y <= 0 || vsp >= 0){
	state = 2;
	state_timer = 0;
	hsp = 0*spr_dir;
    }
}

if (state == 1){
	depth = 0;
	is_hittable = false;
    sprite_index = sprite_get("brick_idle");
    image_index += 0.2;
    vsp = grav;
    hsp = lerp(hsp, 0, 0.5);
    if (free == false && was_free == true){
        spawn_base_dust(x, y, "land", 0);
        sound_play(asset_get("sfx_land_heavy"));
        was_free = false;
    }
}

if (state == 2){
	is_hittable = false;
    sprite_index = sprite_get("brick_hurt");
    image_index = 0;
    if (vsp < grav){
        vsp += 1;
    }
    if (vsp > grav){
        //vsp = grav;
    }
    if (!free && was_free == true && state_timer >= 2){
        spawn_base_dust(x, y, "land", 0);
        sound_play(asset_get("sfx_land_heavy"));
        was_free = false;
        state = 1;
        state_timer = 0;
    }
    if (hsp != 0){
    	
    hsp += 0.1*spr_dir;
    }
}

if (state == 3){
	if (state_timer == 1){
		sound_play(asset_get("sfx_ori_stomp_spin"));
	}
	is_hittable = false;
	sprite_index = sprite_get("brick_ball");
    image_index -= 0.3;
		var dir = point_direction(x, y, player_id.x, player_id.y - 12);
		hsp = lengthdir_x(14, dir);
		vsp = lengthdir_y(14, dir);
	create_hitbox(AT_DSPECIAL_2, 1, x + 12*spr_dir, y - 26);
	can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
	ignores_walls = true; 
} else {
	
	can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
	ignores_walls = false; 
}

if (x > room_width or x < 0 or y > room_height + 200){
	if (state != 3){
	var stage_y = get_stage_data(SD_Y_POS);
	x = room_width/2;
	y = stage_y - 64;
	state = 1;
	state_timer = 0;
    spawn_hit_fx(x, y, 144);
	}
}

if (should_die == true){
    instance_destroy();
    exit;
}

if (was_free == false && free){
    was_free = true;
}

exist_timer ++;
state_timer++;

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