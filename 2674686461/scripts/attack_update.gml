//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
var window_length = get_window_value(attack,window,AG_WINDOW_LENGTH);

//acrobatics
if (attack == AT_NSPECIAL){
    can_fast_fall = false;
    if window < 4 {
        vsp = clamp(vsp,-3,1.5); //stall and fall while startup/charging
    }
    if window == 1 && window_timer == 1 {
        if !shields_up && place_meeting(x,y,meteor_id) && meteor_id.rock_type == "sand" { //regain armor
            sound_play(asset_get("sfx_bird_sidespecial"),false,noone,0.4,1.65);
            sound_play(sfx_poke_sandstorm,false,noone,0.85,1.35);
            var h = spawn_hit_fx(x,y, hfx_sand_absorb);
            h.depth = depth -1;
            meteor_id.should_die = true;
            shields_up = true;
        }
    }
    if window == 2 { //charge
        if abs(right_down-left_down){spr_dir = right_down - left_down;}
        nspecial_charge_timer += 1;
        if window_timer == window_length-1 {
            if special_down && nspecial_charge_timer <= 45 {
                if !shields_up && place_meeting(x,y,meteor_id) && meteor_id.rock_type == "sand" { //regain armor
                    sound_play(asset_get("sfx_bird_sidespecial"),false,noone,0.4,1.65);
                    sound_play(sfx_poke_sandstorm,false,noone,0.85,1.35);
                    var h = spawn_hit_fx(x,y, hfx_sand_absorb);
                    h.depth = depth -1;
                    meteor_id.should_die = true;
                    shields_up = true;
                }
                window_timer = 0;
                nspecial_charge_looped = true;
                sound_play(asset_get("sfx_spin"),false,noone,0.85,1.2);
                sound_play(sfx_poke_acrobatics,false,noone,0.7,1);
            }
        }
        if nspecial_charge_looped && !special_down {
            window = 3;
            window_timer = 0;
        }
    }
    if window == 3 && window_timer == 1 { //apply charge
        var charge_hspeed1 = (nspecial_charge_timer/45);
        var charge_hspeed2 = shields_up ? charge_hspeed1 * 7 : charge_hspeed1 * 9;
        set_window_value(AT_NSPECIAL,4,AG_WINDOW_HSPEED, 4+charge_hspeed2);
    }
    if window == 4 { //dash window
        if !hitpause {
            if place_meeting(x,y,meteor_id) && meteor_id.rock_type == "rock" { //lose armor
                //spawn_base_dust(x+25*spr_dir,y-20,"walljump",spr_dir)
                sound_play(sfx_poke_stonedge_1,false,noone,0.65,1.25);
                sound_play(sfx_spiral_wolver,false,noone,1,1);
                var h = spawn_hit_fx(x,y, hfx_rock_small);
                shake_camera(4,7);
                h.depth = depth -1;
                meteor_id.should_die = true;
                window = 6;
                window_timer = 0;
                vsp = -8;
                hsp = 0;
                shields_up = false;
                attack_end();
                destroy_hitboxes();
            }   
            if abs(vsp) < (shields_up ? 3 : 4) {
                vsp += shields_up ? (down_down - up_down) * 1 : (down_down - up_down) * 1.5;
                spr_angle += (up_down - down_down) * 2 * spr_dir;
                spr_angle = clamp(spr_angle,-30,30);
            }
        }
        can_move = false;
    }
    if window == 5 { 
        spr_angle = 0;
        hsp *= 0.95;  
        move_cooldown[AT_NSPECIAL] = 15;
    }
}

if (attack == AT_USPECIAL){
    if window == 1 && !shields_up && place_meeting(x,y,meteor_id) && meteor_id.rock_type == "sand" {
        sound_play(asset_get("sfx_bird_sidespecial"),false,noone,0.4,1.65);
        sound_play(sfx_poke_sandstorm,false,noone,0.85,1.35);
        var h = spawn_hit_fx(x,y, hfx_sand_absorb);
        h.depth = depth -1;
        meteor_id.should_die = true;
        shields_up = true;
    }
     if window == 3 {can_wall_jump = true;}
}
if (attack == AT_USPECIAL_2){
    if window > 1 {shields_up = false; }
    if window == 3 {can_wall_jump = true; }
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    if window == 1 && window_timer == 1 && !free {vsp = -7;}
    if window == 2 {
        hsp = lerp(hsp, 0, 0.45);
        if abs(hsp) < (shields_up ? 4 : 6) {
            hsp += shields_up ? (right_down - left_down) * 0.5 : (right_down - left_down) * 1;
        }
        can_move = false;
        if !free {
            spawn_base_dust(x,y,"land");
            if shields_up {
                var h = spawn_hit_fx(x,y, hfx_rock_small);
                h.depth = depth -1;
                sound_play(sfx_poke_stonedge_1,false,noone,0.7,1.25);
                sound_play(sfx_spiral_wolver,false,noone,0.95,1);
                sound_play(asset_get("sfx_blow_medium1"),false,noone,0.55,1.2);
                shake_camera(4,7);
            } else {
                sound_play(sfx_poke_stonedge_1,false,noone,0.5,1.25);
                sound_play(sfx_spiral_wolver,false,noone,0.75,1);
                sound_play(asset_get("sfx_blow_weak2"),false,noone,0.45,1.2);
                shake_camera(2,5);
            }
            window = 3;
            window_timer = 0;
        }
        if place_meeting(x,y,meteor_id) && meteor_id.rock_type == "rock" { //lose armor
            //spawn_base_dust(x+25*spr_dir,y-20,"walljump",spr_dir)
            sound_play(sfx_poke_stonedge_1,false,noone,0.7,1.25);
            sound_play(sfx_spiral_wolver,false,noone,0.95,1);
            sound_play(asset_get("sfx_blow_medium1"),false,noone,0.55,1.2);
            shake_camera(5,7);
            var h = spawn_hit_fx(x,y, hfx_rock_small);
            h.depth = depth -1;
            meteor_id.should_die = true;
            window = 3;
            window_timer = 0;
            vsp = -8;
            hsp = 0;
            shields_up = false;
            attack_end();
            destroy_hitboxes();
        }   
    }
    if window > 1 {
        can_wall_jump = true;
    }
    if window == 3 {
        if shields_up {
            shields_up = false;
        }
    }
    //later add article hit code & effects
    
}

//strongs armor
if attack == AT_FSTRONG {
    if meteor_armor {
        if window <= 2 {
            soft_armor = 7;
        } else {
            soft_armor = 0;
        }
    }
}

if attack == AT_USTRONG {
    if meteor_armor {
        if window <= 2 {
            soft_armor = 7;
        } else {
            soft_armor = 0;
        }
    }
}

if attack == AT_DSTRONG {
    if window == 2 {
        dstrong_loop_num_max = floor(strong_charge div 6);
    }
    if window == 4 { //lets go jigglypuff rollout on a strong
        can_wall_jump = true;
        if !hitpause {
            hsp += (right_down - left_down) * 2;
        }
        hsp = clamp(hsp,-6,6);
        vsp = clamp(vsp,-5,2);
        if window_timer mod 7 == 0 && !hitpause{
            spawn_base_dust(x,y,hsp!=0?"dash":"land",hsp>0?-1:1);
        }
        if window_timer == window_length-1 && dstrong_loop_num_current < dstrong_loop_num_max {
            dstrong_loop_num_current += 1;
            sound_play(sfx_poke_sandstorm,false,noone,0.25,1.15);
            sound_play(asset_get("sfx_spin"),false,noone,0.4,1.2);
            window_timer = 0;
        }
    }
    if window == 5 {
        can_wall_jump = true;
    }
    if meteor_armor {
        if window <= 2 {
            soft_armor = 7;
        } else {
            soft_armor = 0;
        }
    }
}


//misc attack gamefeel stuff
//and also hurtbox changing
switch(attack) {
    case AT_JAB:
        sound_window_play(1,window_length-2,sfx_smash_swing_1);
        sound_window_play(1,window_length-2,sfx_poke_dazzlinggleam_1,false,noone,0.2,1.1);
        sound_window_play(5,window_length-2,sfx_smash_swing_2);
        sound_window_play(5,window_length-2,sfx_poke_dazzlinggleam_1,false,noone,0.2,1);
        if shields_up {hurtboxID.sprite_index = sprite_get("jab_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("jab_hurt");}
        break;
    case AT_DATTACK:
        sound_window_play(1,window_length-2,asset_get("sfx_spin"));
        sound_window_play(1,window_length-2,sfx_spiral_sword_3,false,noone,0.7,1.15);
        sound_window_play(1,window_length-6,sfx_poke_accelrock,false,noone,0.45,1.15);
        if shields_up {hurtboxID.sprite_index = sprite_get("dattack_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("dattack_hurt");}
        break;
    case AT_FTILT:
        sound_window_play(1,window_length-2,sfx_smash_swing_2,false,noone,0.95,1);
        sound_window_play(1,window_length-2,sfx_spiral_sword_1);
        if shields_up {hurtboxID.sprite_index = sprite_get("ftilt_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("ftilt_hurt");}
        break;
    case AT_DTILT:
        sound_window_play(1,window_length-2,asset_get("sfx_spin"));
        sound_window_play(1,window_length-2,sfx_spiral_sword_3,false,noone,0.7,1.15);
        if shields_up {hurtboxID.sprite_index = sprite_get("dtilt_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("dtilt_hurt");}
        break;
    case AT_UTILT:
        sound_window_play(1,window_length-2,sfx_poke_ancientpower,false,noone,0.55,0.95);
        sound_window_play(1,window_length-2,sfx_spiral_sword_2);
        if shields_up {hurtboxID.sprite_index = sprite_get("utilt_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("utilt_hurt");}
        break;
    case AT_NAIR:
        sound_window_play(1,window_length-2,sfx_smash_swing_1);
        sound_window_play(1,window_length-3,sfx_poke_dazzlinggleam_1,false,noone,0.1,1.2);
        sound_window_play(1,window_length-1,asset_get("sfx_spin"),false,noone,0.85,1.15);
        sound_window_play(3,window_length-1,sfx_smash_swing_2);
        //sound_window_play(3,window_length-2,asset_get("sfx_spin"),false,noone,0.65,1.05);
        if shields_up {hurtboxID.sprite_index = sprite_get("nair_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("nair_hurt");}
        break;
    case AT_FAIR:
        sound_window_play(1,window_length-4,sfx_smash_swing_2,false,noone,0.55,1.1);
        sound_window_play(1,window_length-2,sfx_spiral_sword_3,false,noone,0.85,1.15);
        if shields_up {hurtboxID.sprite_index = sprite_get("fair_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("fair_hurt");}
        break;
    case AT_DAIR:
        sound_window_play(1,window_length-2,sfx_spiral_sword_3,false,noone,0.75,1.15);
        sound_window_play(1,window_length-3,sfx_poke_accelrock,false,noone,0.35,1.45);
        sound_window_play(1,window_length-1,asset_get("sfx_spin"));
        sound_window_play(3,window_length-3,sfx_poke_accelrock,false,noone,0.45,1.25);
        sound_window_play(3,window_length-2,sfx_poke_ancientpower,false,noone,0.65,1.05);
        if shields_up {hurtboxID.sprite_index = sprite_get("dair_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("dair_hurt");}
        break;
    case AT_BAIR:
        sound_window_play(1,window_length-2,sfx_smash_swing_2);
        sound_window_play(1,window_length-10,sfx_poke_powergem,false,noone,0.25,1.2);
        if shields_up {hurtboxID.sprite_index = sprite_get("bair_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("bair_hurt");}
        break;
    case AT_UAIR:
        sound_window_play(1,window_length-1,sfx_poke_acrobatics,false,noone,0.25,1.15);
        //sound_window_play(1,window_length-1,sfx_poke_cry,false,noone,0.25,1.15);
        sound_window_play(1,window_length-2,sfx_poke_powergem,false,noone,0.15,1.35);
        if shields_up {hurtboxID.sprite_index = sprite_get("uair_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("uair_hurt");}
        break;
    case AT_FSTRONG:
        sound_window_play(1,window_length-2,sfx_poke_aerialace_1,false,noone,0.85,0.75);
        sound_window_play(1,window_length-2,sfx_poke_dazzlinggleam_1,false,noone,0.35,0.95);
        sound_window_play(1,window_length-2,sfx_smash_special_2,false,noone,0.15,0.95);
        sound_window_play(2,window_length-2,sfx_smash_special_2,false,noone,0.3,1);
        sound_window_play(3,window_length-2,sfx_spiral_avengerhit,false,noone,1,1.15);
        sound_window_play(3,window_length-1,sfx_poke_accelrock,false,noone,0.3,0.75);
        sound_window_play(3,window_length-2,sfx_poke_ancientpower,false,noone,1,0.98);
        if window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) {
            strong_charge_anim_timer += 0.5;
            if strong_charge_anim_timer > window_length+1 {
                strong_charge_anim_timer = 0;
            }
            if strong_charge_anim_timer mod 8 == 0 {
                spawn_base_dust(x,y,"land",spr_dir);
                sound_play(sfx_poke_dazzlinggleam_1,false,noone,0.2,0.95);
            }
        }
        if window == 3 && window_timer == window_length {
            spawn_base_dust(x,y,"dash_start");
        }
        if shields_up {hurtboxID.sprite_index = sprite_get("fstrong_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("fstrong_hurt");}
        break;
    case AT_DSTRONG:
        sound_window_play(1,window_length-2,sfx_poke_aerialace_1,false,noone,0.85,0.75);
        sound_window_play(1,window_length-2,sfx_poke_sandstorm,false,noone,0.15,0.95);
        sound_window_play(2,window_length-2,sfx_poke_sandstorm,false,noone,0.35,1.15);
        sound_window_play(3,window_length-2,asset_get("sfx_spin"),false,noone,1,1.15);
        sound_window_play(3,window_length-1,sfx_poke_accelrock,false,noone,0.15,0.95);
        sound_window_play(3,window_length-2,sfx_poke_aerialace_1,false,noone,0.45,1);
        if window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) {
            strong_charge_anim_timer += 0.5;
            if strong_charge_anim_timer > window_length+1 {
                strong_charge_anim_timer = 0;
            }
            if strong_charge_anim_timer mod 8 == 0 {
                spawn_base_dust(x,y,"land",spr_dir);
                sound_play(sfx_poke_sandstorm,false,noone,0.25,1.35);
            }
        }
        if shields_up {hurtboxID.sprite_index = sprite_get("dstrong_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("dstrong_hurt");}
        break;
    case AT_USTRONG:
        sound_window_play(1,window_length-2,sfx_poke_steelwing,false,noone,0.85,0.75);
        sound_window_play(1,window_length-2,sfx_poke_sandstorm,false,noone,0.15,0.95);
        sound_window_play(2,window_length-2,sfx_poke_sandstorm,false,noone,0.35,1.15);
        sound_window_play(3,window_length-2,asset_get("sfx_spin"),false,noone,1,1.15);
        sound_window_play(3,window_length-1,sfx_poke_accelrock,false,noone,0.35,0.95);
        sound_window_play(3,window_length-2,sfx_poke_steelwing,false,noone,0.65,1.05);
        if window == get_attack_value(attack,AG_STRONG_CHARGE_WINDOW) {
            strong_charge_anim_timer += 0.5;
            if strong_charge_anim_timer > window_length+1 {
                strong_charge_anim_timer = 0;
            }
            if strong_charge_anim_timer mod 8 == 0 {
                spawn_base_dust(x + 15*spr_dir,y,"dash",-spr_dir);
                sound_play(sfx_poke_sandstorm,false,noone,0.15,1.65);
                sound_play(asset_get("sfx_spin"),false,noone,0.25,1.35);
            }
        }
        if (window == 3) or (window == 4) {
            hud_offset = floor(lerp(hud_offset,85,0.45));
        }
        if shields_up {hurtboxID.sprite_index = sprite_get("ustrong_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("ustrong_hurt");}
        break;
    case AT_NSPECIAL:
        if window == 1 && window_timer == window_length-1 {
            sound_play(asset_get("sfx_spin"),false,noone,0.85,1.2);
            sound_play(sfx_poke_acrobatics,false,noone,0.5,1.4);
        }
        if window == 3 && window_timer == window_length-1 {
            sound_play(sfx_poke_accelrock,false,noone,0.85,1.15);
            sound_play(sfx_poke_aerialace_1,false,noone,0.5,1.85);
        }
    
        if shields_up {hurtboxID.sprite_index = sprite_get("nspecial_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("nspecial_hurt");}
        break;
    case AT_FSPECIAL:
        if window == 1 {
            if window_timer == 2 {
                sound_play(sfx_poke_sandstorm,false,noone,0.85,1.1);
            }
            if window_timer == window_length-1 {
                sound_play(asset_get("sfx_spin"),false,noone,0.45,1.2);
                sound_play(asset_get("sfx_bird_sidespecial"),false,noone,0.85,1.1);
            }
        }
        break;
    case AT_FSPECIAL_2:
        if window == 1 {
            if window_timer == 2 {
                sound_play(sfx_poke_rocktomb,false,noone,0.85,1.1);
            }
            if window_timer == window_length-1 {
                sound_play(asset_get("sfx_spin"),false,noone,0.45,1.2);
                sound_play(asset_get("sfx_swipe_weak2"),false,noone,0.35,1.1);
            }
        }
        break;
    case AT_DSPECIAL:
        if window == 1 {
            if window_timer == 2 {
                sound_play(sfx_poke_stonedge_1,false,noone,0.95,1);
            }
            if window_timer == window_length-1 {
                sound_play(asset_get("sfx_spin"),false,noone,0.3,1.15);
                sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.55,0.9);
            }
        }
        if shields_up {hurtboxID.sprite_index = sprite_get("dspecial_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("dspecial_hurt");}
        break;
    case AT_USPECIAL:
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_spin"),false,noone,0.3,1.55);
            sound_play(sfx_smash_special_1,false,noone,0.55,1.15);
        }
        //change hurtbox in case player gets armor during uspec
        if shields_up {hurtboxID.sprite_index = sprite_get("uspecial_armor_hurt");}
        else {hurtboxID.sprite_index = sprite_get("uspecial_hurt");}
        break;
    case AT_USPECIAL_2:
        if window == 1 && window_timer == window_length-1 {
            var h = spawn_hit_fx(x,y-35, hfx_rock_small);
            h.depth = depth -1;
            sound_play(sfx_poke_shellsmash,false,noone,1,1);
            //sound_play(asset_get("sfx_forsburn_combust"),false,noone,0.45,1.45);
            //sound_play(asset_get("sfx_ell_eject"),false,noone,0.25,1.65);
        }
        break;
    case AT_TAUNT:
        hud_offset = floor(lerp(hud_offset,25,0.45));
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





