//update

timer++

//practice mode detector
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice_mode = true;
}

//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 12 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
	var color_rgb1=make_color_rgb(255, 0, 0);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),4,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_article_color_slot(4,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	//set_article_color_slot(6,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	//set the new color using rgb values from the gamemaker color
}

if state == PS_LANDING_LAG || state == PS_LAND {
    destroy_hitboxes()
}

init_shader()


var start_char_height = 52;
if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    char_height = start_char_height;
    height_timer = 0;
} else if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    switch attack {
        case AT_UAIR:
        var end_char_height = 100;
        if window != 3 {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(state_timer, 0, 10), 10), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer, 0, 16), 16), start_char_height, end_char_height);
        }
        break;
        
        case AT_USTRONG:
        var end_char_height = 130;
        if window != 5 {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 4), 4), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer, 0, 10), 10), start_char_height, end_char_height);
        }
        break;
    }
}

if state == PS_CROUCH && prev_prev_state == PS_ATTACK_GROUND && attack == AT_DSPECIAL {
    if state_timer < 10 state_timer = 10;
}

//debug meter managment

if (taunt_down) && (debugMode == true || practice_mode) {
    if up_down {
        meter_cur++;
    } else if down_down {
        meter_cur--;
    }
}


meter_cur = clamp(meter_cur, 0, meter_max)

if meter_cur < orb_value {
    move_cooldown[AT_NSPECIAL] = 2;
}

if meter_flash_timer > 0 meter_flash_timer--;
if spark_timer > 0 spark_timer--;

var num_orbs = 0;
with obj_article1 {
    if player_id == other.id {
        num_orbs++;
    }
}

if num_orbs > 1 {
    var min_id = 1000000000000000;
    with obj_article1 {
        if id < min_id {
            min_id = id;
        }
    }
    spawn_hit_fx(min_id.x, min_id.y, orb_explosion_vfx)
    instance_destroy(min_id);
}
/*
var shape = get_hitbox_value(attack, hitbox_num[tipper_num], HG_SHAPE);
var effect = get_hitbox_value(attack, hitbox_num[tipper_num], HG_EFFECT);

var hitbox_sprite = undefined;
switch shape {
    case 0: hitbox_sprite = shape_circle break;
    case 1: hitbox_sprite = shape_rect break;
    case 2: hitbox_sprite = shape_roundrect break;
}
*/

with pHitBox {
    if player_id == other.id && effect == 99 && hitbox_timer == 0 {
        depth = other.meter_flipped == true ? -7 : -8;
        if sprite_index = asset_get("hitbox_circle_spr") sprite_index = other.shape_circle;
        else if sprite_index = asset_get("hitbox_square_spr") sprite_index = other.shape_rect;
        else if sprite_index = asset_get("hitbox_rounded_rectangle") sprite_index = other.shape_roundrect;
    }
}

if draw_limit {
	if limit_timer mod 2 == 0 meter_cur++;
	limit_timer++;
	if limit_timer mod 4 == 0 limit_vfx_counter++;
	
	if limit_timer mod 8 == 0 {
		var randvar = random_func(0, 50, true) - 25;
		var limitfx = spawn_hit_fx(x + randvar, y - 2, limit_large)
			limitfx.barvar = true;
	}
	
	if limit_timer mod 6 == 0 {
		var randvar = random_func(1, 50, true) - 25;
		var limitfx = spawn_hit_fx(x + randvar, y - 2, limit_small)
			limitfx.barvar = true;
	}
	
	if limit_timer mod 12 == 1 {
		spawn_base_dust(x, y, "jump", 1)
	}
	
	//circle draw
	var circle_timer = limit_timer mod 14;
	if circle_timer == 0 {
		if limit_circle_col == c_yellow limit_circle_col = c_aqua;
		else if limit_circle_col == c_aqua limit_circle_col = c_yellow;
	}
	limit_circle_radius = 60 + dsin(limit_timer*14*2)*5
	limit_circle_alpha = 0.2 + dsin(limit_timer*14*2)*0.1
}

with hit_fx_obj {
	if "barvar" in self {
		y -= 5;
	}
}


if draw_limit_flash {
	limit_flash_timer++;
	if limit_flash_timer = 30 {
		limit_flash_timer = 0;
		draw_limit_flash = false;
	}
}
//runes
user_event(2)

//intro anim
var intro_time = get_gameplay_time();
if intro_time == 36 sound_play(asset_get("sfx_clairen_fspecial_dash"))
if intro_time == 66 sound_play(asset_get("sfx_swipe_medium2"))
if intro_time == 69 sound_play(asset_get("sfx_blow_medium3"))
if intro_time == 69 shake_camera(8, 6)
if intro_time == 74 sound_play(asset_get("sfx_bounce"))
if intro_time == 74 spawn_base_dust(x, y, "n_wavedash", 1)
if intro_time == 96 sound_play(asset_get("sfx_land"))
if intro_time == 96 spawn_base_dust(x, y, "land", 1)

//intro flip meter
if intro_time < 96 && (taunt_pressed || (special_pressed && down_down)) {
	intro_flip = true;
}

if intro_time == 100 && intro_flip {
	sound_play(asset_get("sfx_zetter_shine"))
	meter_flipped = true;
}

//hitfx colour
/*
with hit_fx_obj {
	
}
*/

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;