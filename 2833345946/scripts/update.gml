//update

user_event(0)

timer++

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);

//practice mode detector
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice_mode = true;
}

//walljump cling
if !stance && state == PS_WALL_JUMP && !clinging {
    if state_timer == 0 {
        walljump_timer = 0
        sound_play(asset_get("sfx_shovel_hit_med2"))
    }
    else walljump_timer++
}

if !stance && state == PS_WALL_JUMP && clinging && attack_pressed {
    //set_attack(AT_NSPECIAL_AIR)
    set_attack(AT_FTHROW)
    hurtboxID.sprite_index = sprite_get("wallattack_hurt")
    //spr_dir *= -1
    clinging = false
}

var start_char_height = 52;
if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    char_height = start_char_height;
    height_timer = 0;
} else if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    switch attack {
        case AT_USTRONG:
        var end_char_height = 100;
        if !(window == 7 && window_timer > 6) {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 4), 4), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer-6, 0, 10), 10), start_char_height, end_char_height);
        }
        break;
        
        case AT_USTRONG_2:
        var end_char_height = 100;
        if !(window == 5 && window_timer > 6) {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 4), 4), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer-6, 0, 10), 10), start_char_height, end_char_height);
        }
        break;
    }
}

if stance { //hilt
    walk_speed = 4;
    walk_accel = 0.5;
    walk_turn_time = 6;
    initial_dash_time = 10;
    initial_dash_speed = 7.75;
    dash_speed = 7.5;
    dash_turn_time = 6;
    dash_turn_accel = 1.5;
    dash_stop_time = 6;
    dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
    ground_friction = 0.6;
    moonwalk_accel = 1.4;
    
    leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = 0.35;
    
    jump_speed = 11;
    short_hop_speed = 7;
    djump_speed = 10;
    
    can_wall_cling = false;
    walljump_time = 26;
} else { //sord
    walk_speed = 2.5;
    walk_accel = 0.4;
    walk_turn_time = 6;
    initial_dash_time = 10;
    initial_dash_speed = 6.5;
    dash_speed = 6;
    dash_turn_time = 12;
    dash_turn_accel = 1.2;
    dash_stop_time = 6;
    dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
    ground_friction = 0.6;
    moonwalk_accel = 1.4;
    
    leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = 0.3;
    
    jump_speed = 10;
    short_hop_speed = 6.5;
    djump_speed = 10;
    
    can_wall_cling = true;
    walljump_time = 18;
}

if !ruber_attacking {
    user_event(1)
} else if attack != AT_FSPECIAL_2 && (window == 1 || window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)) {
    user_event(1)
}

if !stance {
    if state == PS_DASH_START {
        if state_timer == 1 sound_play(sound_get("metal_grind_start"))
        if state_timer == 8 sound_play(sfx_metal_grind, true, noone, 0.5)
    } else if state == PS_DASH_TURN {
        if state_timer == 1 sound_play(sound_get("metal_grind_turn"))
    }
}

if state != PS_DASH && state != PS_DASH_TURN && state != PS_DASH_START && state != PS_DASH_STOP {
    sound_stop(sfx_metal_grind)
}

if pickup_alpha > 0 {
    pickup_alpha -= 0.04
}

var smoke_spr = sprite_get("smoke_particle")
with hit_fx_obj if sprite_index == smoke_spr && player_id == other.id {
    x += sign((id mod 2) - 0.5)/2
    y += sign((id mod 5) - 2.5)/2
}

var num_swords = 0
var oldest = 10000000000000000000
with obj_article1 if player_id == other.id && !destroyed {
    num_swords++
    if age < oldest && timer > 6 {
        oldest = age
    }
}

//print(num_swords)

if num_swords > 2 {
    oldest.destroyed = true
}

//intro anim

var intro_time = get_gameplay_time();
if intro_time == 4 sound_play(asset_get("sfx_swipe_medium1"))
if intro_time == 27 sound_play(asset_get("sfx_shovel_hit_med1"))
if intro_time == 27 sound_play(asset_get("sfx_zetter_shine"))
if intro_time == 27 spawn_hit_fx(x - 40*spr_dir, y - 40, 301)

/*
if !shield_down {
    with oPlayer if state == PS_RESPAWN && id != other.id {
        state_timer = 0
        hsp = 0
        vsp = 0
        x = 1400
        //x = 200
    }
}
*/
//if timer == 10 print(get_synced_var(player))


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