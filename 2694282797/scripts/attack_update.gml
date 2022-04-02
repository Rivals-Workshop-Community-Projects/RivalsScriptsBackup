//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
var window_length = get_window_value(attack,window,AG_WINDOW_LENGTH);

//present toss/pickup
if attack == AT_NSPECIAL_2 {
    if window == 2 && window_timer == 1 {
        clear_button_buffer(PC_SPECIAL_PRESSED); //clear input cause it's really fast, and ends up buffering the next special   
        if instance_exists(present_id) { //pickup
            if point_distance(x,y-15,present_id.x,present_id.y) <= 60 {holding_present = true; present_id.being_held = true;}
        }
        if abs(right_down-left_down) {spr_dir = (right_down-left_down);}
    }
    //toss
    if window == 5 && window_timer == 1 {
        clear_button_buffer(PC_SPECIAL_PRESSED); //clear input cause it's really fast, and ends up buffering the next special
        if instance_exists(present_id) {
            holding_present = false; present_id.being_held = false;
            var throw_hdir = right_down - left_down;
            var throw_vdir = down_down - up_down;
            if abs(throw_vdir) && !abs(throw_hdir) {
                present_id.hsp = 0;
                present_id.vsp = 8 * throw_vdir;
            } else if abs(throw_hdir){
                present_id.hsp = 7 * throw_hdir;
                present_id.vsp = -4;
            } else {
                present_id.hsp = 5 * spr_dir;
                present_id.vsp = -5;
            }
        }
        if abs(right_down-left_down) {spr_dir = (right_down-left_down);}
    }
}

if attack == AT_USPECIAL {
    can_fast_fall = false;
    if window >= 2 {
        can_wall_jump = true;
    }
}

if attack == AT_DSPECIAL {
    if window == 2 && window_timer == 1 && !hitpause {
        if !instance_exists(tree_id) {
            tree_id = instance_create(x+15*spr_dir,y,"obj_article1");
        }
    }
}

if attack == AT_FSPECIAL {
    if window == 3 && window_timer == window_length-1 {
        move_cooldown[AT_FSPECIAL] = 25;
    }
}

if attack == AT_TAUNT {
    if window == 1 && window_timer == 1 {
        sound_play(sfx_padoru_short);
    }
    if window == 2 && window_timer == window_length-1 {
        if taunt_down {
            window_timer = 1;
        }
    }
    if window == 3 {
        sound_stop(sfx_padoru_short)
    }
}

//gamefeel
switch(attack){
    case AT_JAB:
        sound_window_play(1,window_length-3,sfx_poke_iceshard,false,noone,0.45,1.1)
        sound_window_play(1,window_length-1,sfx_poke_icicle,false,noone,1,1.2)
        sound_window_play(4,window_length-2,sfx_spiral_sword2,false,noone,1,1.1)
        //sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,1,1.1)
        break;
    case AT_DATTACK:
        //sound_window_play(1,window_length-4,sfx_poke_metronome,false,noone,0.65,0.55)
        sound_window_play(1,window_length-1,sfx_spiral_sword2,false,noone,0.7,1.1)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.7,1.1)
        sound_window_play(1,window_length-4,asset_get("sfx_dash_start"),false,noone,1,1.15)
        break;
    case AT_FTILT:
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,1,1)
        break;
    case AT_UTILT:
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,1,1)
        hud_offset = round(lerp(hud_offset,95,0.35));
        break;
    case AT_DTILT:
        sound_window_play(1,window_length-2,sfx_spiral_sword3,false,noone,1,1.15)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.45,1.15)
        break;
    case AT_NAIR:
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,0.45,0.95)
        sound_window_play(2,window_length-2,sfx_spiral_sword1,false,noone,0.45,0.95)
        sound_window_play(3,window_length-2,sfx_spiral_sword3,false,noone,0.45,0.95)
        //sound_window_play(4,window_length-2,sfx_spiral_sword2,false,noone,1,1.1)
        break;
    case AT_FAIR:
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,1,1.1)
        break;
    case AT_BAIR:
        sound_window_play(1,window_length-1,sfx_poke_hail,false,noone,0.2,1.65)
        sound_window_play(1,window_length-3,sfx_poke_iceshard,false,noone,0.25,1.1)
        sound_window_play(1,window_length-1,sfx_poke_icicle,false,noone,0.75,1.2)
        sound_window_play(2,window_length-3,sfx_poke_iceshard,false,noone,0.25,1.1)
        sound_window_play(2,window_length-1,sfx_poke_icicle,false,noone,0.75,1.2)
        sound_window_play(3,window_length-3,sfx_poke_iceshard,false,noone,0.25,1.1)
        sound_window_play(3,window_length-1,sfx_poke_icicle,false,noone,0.75,1.2)
        break;
    case AT_UAIR:
        sound_window_play(1,window_length-2,sfx_spiral_sword1,false,noone,1,1.15)
        break;
    case AT_DAIR:
        sound_window_play(1,window_length-2,sfx_spiral_sword1,false,noone,0.85,1.15)
        sound_window_play(2,window_length-2,sfx_spiral_sword2,false,noone,0.85,1.15)
        sound_window_play(3,window_length-2,sfx_spiral_sword1,false,noone,0.85,1.15)
        break;
    case AT_FSTRONG:
        sound_window_play(1,window_length-4,sfx_other_bell1,false,noone,0.65,0.95)
        sound_window_play(2,window_length-2,sfx_spiral_sword2,false,noone,1,0.95)
        break;
    case AT_USTRONG:
        sound_window_play(1,window_length-4,sfx_other_bell1,false,noone,0.65,1.1)
        sound_window_play(2,window_length-2,sfx_spiral_sword2,false,noone,1,0.95)
        sound_window_play(2,window_length-1,sfx_spiral_treasure,false,noone,0.85,1.15)
        if window > 1 {
            hud_offset = round(lerp(hud_offset,195,0.35));
        }
        break;
    case AT_DSTRONG:
        sound_window_play(1,window_length-4,sfx_other_bell1,false,noone,0.6,1)
        sound_window_play(2,window_length-2,sfx_spiral_sword2,false,noone,1,0.95)
        sound_window_play(2,window_length-1,sfx_spiral_crystalshatter,false,noone,0.95,1.15)
        break;
    case AT_NSPECIAL:
        sound_window_play(1,window_length-1,sfx_spiral_treasure,false,noone,0.85,1)
        sound_window_play(1,window_length-2,sfx_poke_present,false,noone,0.65,1.15)
        break;
    case AT_NSPECIAL_2:
        //sound_window_play(3,window_length-1,sfx_poke_present,false,noone,0.85,1.15)
        break;
    
    case AT_FSPECIAL:
        sound_window_play(1,window_length-1,sfx_poke_icicle,false,noone,0.7,1.2)
        sound_window_play(1,window_length-4,sfx_poke_hail,false,noone,0.35,1.55)
        break;
    case AT_DSPECIAL:
        sound_window_play(1,window_length-1,sfx_spiral_treasure,false,noone,0.85,1)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.45,1.15)
        break;
    case AT_DSPECIAL_AIR:
        sound_window_play(1,window_length-1,sfx_spiral_sword3,false,noone,0.85,1)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.45,1.15)
        break;
    case AT_USPECIAL:
        sound_window_play(1,window_length-2,sfx_poke_iceshard,false,noone,0.15,1.1)
        sound_window_play(1,window_length-1,sfx_spiral_sword2,false,noone,1,1.15)
        sound_window_play(2,window_length-2,sfx_poke_iceshard,false,noone,0.15,1.1)
        sound_window_play(2,window_length-1,sfx_spiral_sword1,false,noone,1,0.95)
        sound_window_play(3,window_length-2,sfx_poke_iceshard,false,noone,0.15,1.1)
        sound_window_play(3,window_length-1,sfx_spiral_sword3,false,noone,1,1.15)
        sound_window_play(4,window_length-2,sfx_poke_iceshard,false,noone,0.15,1.1)
        sound_window_play(4,window_length-1,sfx_spiral_sword2,false,noone,1,0.95)
        sound_window_play(5,window_length-2,sfx_poke_iceshard,false,noone,0.15,1.1)
        sound_window_play(5,window_length-1,sfx_spiral_sword2,false,noone,1,1.15)
        sound_window_play(6,window_length-2,sfx_poke_iceshard,false,noone,0.15,1.1)
        sound_window_play(6,window_length-1,sfx_spiral_sword3,false,noone,1,0.95)
        break;
    
}




#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define sound_window_play //basically a shortcut to avoid repeating if statements over and over
/// sound_window_play(_window, _timer, _sound, _looping = false, _panning = noone, _volume = 1, _pitch = 1)
var _window = argument[0], _timer = argument[1], _sound = argument[2];
var _looping = argument_count > 3 ? argument[3] : false;
var _panning = argument_count > 4 ? argument[4] : noone;
var _volume = argument_count > 5 ? argument[5] : 1;
var _pitch = argument_count > 6 ? argument[6] : 1;
if window == _window && window_timer == _timer {
    sound_play(_sound,_looping,_panning,_volume,_pitch)   
}


