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
	set_color_profile_slot(get_player_color(player),3,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_article_color_slot(3,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_article_color_slot(6,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	//set the new color using rgb values from the gamemaker color
}

if state == PS_LANDING_LAG || state == PS_LAND {
    destroy_hitboxes()
}

if meter_flipped {
    set_color_profile_slot( 0, 6, 255, 0, 0 );
} else {
    set_color_profile_slot( 0, 6, 26, 0, 0 );
}

var meter_mod = 10;

if meter_cur/meter_max < 0.5 {
    meter_mod = -10;
}

set_color_profile_slot_range( 6, 1, 1, round((meter_cur*91/meter_max)-1));

init_shader()


var start_char_height = 52;
if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    char_height = start_char_height;
    height_timer = 0;
} else if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    switch attack {
        case AT_UAIR:
        var end_char_height = 90;
        if window != 3 {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(state_timer, 0, 10), 10), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer, 0, 16), 16), start_char_height, end_char_height);
        }
        break;
        
        case AT_USTRONG:
        var end_char_height = 100;
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

if taunt_down && (debugMode == true || practice_mode) {
    if up_down {
        meter_cur++;
    } else if down_down {
        meter_cur--;
    }
}


meter_cur = clamp(meter_cur, 0, meter_max)

if meter_cur < orb_value {
    move_cooldown[AT_FSPECIAL] = 2;
}

if meter_cur < gun_value {
    move_cooldown[AT_NSPECIAL] = 2;
}

if meter_flash_timer > 0 meter_flash_timer--;

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
        if sprite_index = 2735 sprite_index = other.shape_circle;
        else if sprite_index = 2737 sprite_index = other.shape_rect;
        else if sprite_index = 2740 sprite_index = other.shape_roundrect;
    }
}

//runes
user_event(2)