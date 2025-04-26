//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
var window_length = get_window_value(attack,window,AG_WINDOW_LENGTH);

//present toss/pickup
if attack == AT_NSPECIAL_2 {
    if (window == 1 && window_timer == 1) {
        if (instance_exists(present_id)) {
            present_id.apply_temporal_stasis = true;
        }
    }
    if window == 2 && window_timer == 1 {
        clear_button_buffer(PC_SPECIAL_PRESSED); //clear input cause it's really fast, and ends up buffering the next special   
        if instance_exists(present_id) { //pickup
            if point_distance(x,y-15,present_id.x,present_id.y) <= present_pickup_dist {holding_present = true; present_id.being_held = true;}
        }
        if abs(right_down-left_down) {spr_dir = (right_down-left_down);}
    }
    //toss
    if window == 5 && window_timer == 1 {
        clear_button_buffer(PC_SPECIAL_PRESSED); //clear input cause it's really fast, and ends up buffering the next special
        if instance_exists(present_id) {
            holding_present = false; 
            present_id.being_held = false;
            present_id.apply_temporal_stasis = false;
            var throw_hdir = right_down - left_down;
            var throw_vdir = down_down - up_down;
            
            // if no particular direction is pressed, throw to where you're going
            if !(abs(throw_vdir) or abs(throw_hdir)) {
                if (glide_tossing) {
                    present_id.hsp = present_toss_speed * lengthdir_x(1,point_direction(x,y,x+hsp,y+vsp));
                    present_id.vsp = present_toss_speed * lengthdir_y(1,point_direction(x,y,x+hsp,y+vsp)) - 2;
                    glide_tossing = false;
                } else {
                    present_id.hsp = present_toss_speed * spr_dir;
                    present_id.vsp = present_toss_speed * -1;
                }
            } else {
                present_id.hsp = present_toss_speed * throw_hdir;
                present_id.vsp = present_toss_speed * throw_vdir - 2;
                
            }
            
        }
        if abs(right_down-left_down) {spr_dir = (right_down-left_down);}
    }
    if (window == 6) {
        // tap
        can_special = true;
        // hold (particularly for up special)
        if (window_timer >= window_length - 2) {
            if (special_down && up_down) {
                set_attack(AT_USPECIAL)
            }
        }
    }
    if (window == 3) {
        if (!instance_exists(present_id)) {
            holding_present = false;
        }
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

if attack == AT_DSPECIAL_AIR {
    if window == 2 && window_timer == 1 && !hitpause && !free {
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

if (attack == AT_NSPECIAL) {
    if (window == 1 && window_timer == window_length) {
        present_should_exist = true;
        var present_spawn = create_hitbox(attack,1, x + get_hitbox_value(attack, 1, HG_HITBOX_X) * spr_dir, y);
        
        if (special_down) {
            present_id = present_spawn;
            holding_present = true; 
            present_id.being_held = true;
        } else {
            present_spawn.being_held = false;
            sound_play(sfx_poke_present,false,noone,0.65,1.15);
        }
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
        if (window == 1 && window_timer == window_length) {
            var dust_dist = hsp != 0 ? 48 : 4;
            spawn_base_dust(x + dust_dist * spr_dir,y,"dash_start", -spr_dir);
        }
        if (window == 2 && window_timer == window_length) {
            var dust_dist = hsp != 0 ? 48 : 16;
            spawn_base_dust(x + dust_dist * spr_dir,y,"dash", -spr_dir);
        }
        sound_window_play(1,window_length-1,sfx_spiral_sword2,false,noone,0.7,1.1)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.7,1.1)
        sound_window_play(1,window_length-4,asset_get("sfx_dash_start"),false,noone,1,1.15)
        break;
    case AT_FTILT:
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,1,1)
        break;
    case AT_UTILT:
        if (window == 2 && window_timer == window_length) {
            spawn_hit_fx(x,y,fx_diss_utilt);
        }
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,1,1)
        hud_offset = round(lerp(hud_offset,95,0.35));
        break;
    case AT_DTILT:
        sound_window_play(1,window_length-2,sfx_spiral_sword3,false,noone,1,1.15)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.45,1.15)
        break;
    case AT_NAIR:
        if ((window == 2 or window == 4) && window_timer == window_length) {
            spawn_hit_fx(x,y,fx_diss_nair1);
        }
        if ((window == 3) && window_timer == window_length) {
            spawn_hit_fx(x,y,fx_diss_nair2);
        }
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,0.45,0.95)
        sound_window_play(2,window_length-2,sfx_spiral_sword1,false,noone,0.45,0.95)
        sound_window_play(3,window_length-2,sfx_spiral_sword3,false,noone,0.45,0.95)
        //sound_window_play(4,window_length-2,sfx_spiral_sword2,false,noone,1,1.1)
        break;
    case AT_FAIR:
        if (window == 2 && window_timer == window_length) {
            spawn_hit_fx(x,y,fx_diss_fair);
        }
        sound_window_play(1,window_length-2,sfx_spiral_sword2,false,noone,1,1.1)
        break;
    case AT_BAIR:
        if (window == 2 && window_timer == 1) {
            spawn_hit_fx(x,y,fx_diss_bair1);
            var fx = spawn_hit_fx(x - 48 * spr_dir,y - 22,fx_small_centershine);
            fx.draw_angle = random_func(3, 2, true) * 90;
        }
        if (window == 4 && window_timer == 1) {
            spawn_hit_fx(x,y,fx_diss_bair3);
            var fx = spawn_hit_fx(x - 48 * spr_dir,y - 22,fx_small_centershine);
            fx.draw_angle = random_func(3, 2, true) * 90;
        }
        if (window == 3 && window_timer == 1) {
            spawn_hit_fx(x,y,fx_diss_bair2);
            var fx = spawn_hit_fx(x - 48 * spr_dir,y - 22,fx_small_centershine);
            fx.draw_angle = random_func(3, 2, true) * 90;
        }
        sound_window_play(1,window_length-1,sfx_poke_hail,false,noone,0.2,1.65)
        sound_window_play(1,window_length-3,sfx_poke_iceshard,false,noone,0.25,1.1)
        sound_window_play(1,window_length-1,sfx_poke_icicle,false,noone,0.75,1.2)
        sound_window_play(2,window_length-3,sfx_poke_iceshard,false,noone,0.25,1.1)
        sound_window_play(2,window_length-1,sfx_poke_icicle,false,noone,0.75,1.2)
        sound_window_play(3,window_length-3,sfx_poke_iceshard,false,noone,0.25,1.1)
        sound_window_play(3,window_length-1,sfx_poke_icicle,false,noone,0.75,1.2)
        break;
    case AT_UAIR:
        if (window == 2 && window_timer == window_length) {
            spawn_hit_fx(x,y,fx_diss_uair);
        }
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
        
        break;
    case AT_NSPECIAL_2:
        //sound_window_play(3,window_length-1,sfx_poke_present,false,noone,0.85,1.15)
        break;
    
    case AT_FSPECIAL:
        sound_window_play(1,window_length-1,sfx_poke_icicle,false,noone,0.7,1.2)
        sound_window_play(1,window_length-4,sfx_poke_hail,false,noone,0.35,1.55)
        break;
    case AT_DSPECIAL:
        if (window == 2 && window_timer == window_length) {
            spawn_hit_fx(x,y,fx_diss_dspecial);
        }
        sound_window_play(1,window_length-1,sfx_spiral_treasure,false,noone,0.85,1)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.45,1.15)
        break;
    case AT_DSPECIAL_AIR:
        if (window == 2 && window_timer == window_length) {
            spawn_hit_fx(x,y,fx_diss_dspecial);
        }
        sound_window_play(1,window_length-1,sfx_spiral_sword3,false,noone,0.85,1)
        sound_window_play(1,window_length-1,sfx_spiral_snowball,false,noone,0.45,1.15)
        break;
    case AT_USPECIAL:
        if (window == 1 && window_timer == window_length-2) {
            spawn_base_dust(x,y+8,"jump");
        }
        if (window >= 2 && window < 9) {
            if (window_timer == window_length) {
                if (window % 2 == 0) {
                    spawn_hit_fx(x,y,fx_diss_uspecial1);
                } else {
                    spawn_hit_fx(x,y,fx_diss_uspecial2);
                }
            }
            if (window_timer == 1) {
                if (window % 2 == 0) {
                    spawn_hit_fx(x - 24*spr_dir,y + 12,fx_diss_uspecial1);
                } else {
                    spawn_hit_fx(x + 24*spr_dir,y + 12,fx_diss_uspecial2);
                }
            }
            
        }
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

#define spawn_comp_hit_fx
//function takes in an array that contains smaller arrays with the vfx information
// list formatting: [ [x, y, delay_time, index, rotation, depth, force_dir], ..]
var fx_list = argument0;
vfx_created = false;

//temporary array
var temp_array = [{cur_timer: -1, max_timer: 0}];  //first value is an array that constains current and max timer, to detect when to spawn vfx and when to stop and be replaced
                            //later values are the fx
var player_dir = spr_dir;

//first take the arrays from the function, set them into objects, and store them in an array
for (var i=0;i < array_length(fx_list);i++) {
    //create new fx part tracker and add to temp array
    var new_fx_part = {
        x: fx_list[i][0],
        y: fx_list[i][1],
        delay_timer: fx_list[i][2],
        index: fx_list[i][3],
        rotation: fx_list[i][4],
        depth: fx_list[i][5],
        spr_dir: fx_list[i][6] == 0 ? player_dir : fx_list[i][6]
    };
    array_push(temp_array, new_fx_part);
    
    //change max timer if delay is bigger than it
    if (new_fx_part.delay_timer > temp_array[0].max_timer) {
        temp_array[0].max_timer = new_fx_part.delay_timer;
    }
}

//add temp array to final array
for (var e=0;e<array_length(comp_vfx_array);e++) {
    if (vfx_created) { //stop process if effect is created
        break;
    } 
    if (comp_vfx_array[e][0].cur_timer > comp_vfx_array[e][0].max_timer) { //replace finished effects
        comp_vfx_array[e] = temp_array;
        vfx_created = true;
    } else if (e == array_length(comp_vfx_array)-1) { //otherwise add it in the end of the array
        array_push(comp_vfx_array, temp_array);
        vfx_created = true;
    }
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


