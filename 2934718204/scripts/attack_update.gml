// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DAIR){
    trigger_b_reverse();
}

switch attack {
    case AT_DAIR:
    can_fast_fall = false
    can_move = (window > 3) 
    if !free {
        destroy_hitboxes()
    }
    if !free {
        if !has_hit && (window == 2 || window == 3 || (window == 4 && window_timer > 6)) {
            
            set_state(PS_LANDING_LAG)
            landing_lag_time = 16
        }
    }
    if has_dair_wall_bounce {
        with pHitBox if player_id == other.id && attack == AT_DAIR && hbox_num == 1 {
            if position_meeting(x + 4 * spr_dir, y - 20, asset_get("par_block")) {
                other.has_hit = true
                other.vsp = -7
                other.hsp = -2*spr_dir
                spawn_hit_fx(x, y, 305)
                sound_play(asset_get("sfx_shovel_hit_med2"))
                sound_play(asset_get("sfx_ori_stomp_spin"))
                other.has_dair_wall_bounce = false
            }
        }
    }
    if window < 4 && has_hit {
        old_vsp = -8
        old_hsp = 6*spr_dir
        if !hitpause {
            destroy_hitboxes()
            window = 4
            window_timer = 0
        }
    }
    if state_timer >= 38 {
        can_jump = true
        can_shield = true
        can_special = true
    }
    
    if window == 1 && window_timer == 8 && !hitpause sound_play(sound_get("mantis_whoosh"))
    if window == 1 && window_timer == window_length && !hitpause  {
        var fx = spawn_hit_fx(x, y-40, vfx_dash)
            fx.draw_angle = -45*spr_dir
    }
    break;
    
    case AT_DATTACK:
    if window < 4 && has_hit {
        old_vsp = -8
        old_hsp = 6*spr_dir
        if !hitpause {
            destroy_hitboxes()
            window = 4
            window_timer = 0
        }
    }
    
    if window == 1 && free {
        set_state(PS_IDLE_AIR)
    }
    
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("mantis_whoosh"))
        var fx = spawn_hit_fx(x, y-35, vfx_dash)
            fx.spr_dir = spr_dir
    }
    break;
    
    case AT_UTILT:
    if window == 3 && !free {
        set_state(PS_LANDING_LAG)
    }
    if window == 1 && window_timer == window_length && !hitpause {
        spawn_base_dust(x, y, "jump", spr_dir)
    }
    break;
    
    case AT_TAUNT:
    if window == 2 && state_timer > 50 {
        window = 3
        window_timer = 0
    }
    taunt_cooldown = 0
    break;
    
    case AT_NSPECIAL:
    if window > 1 {
        move_cooldown[AT_NSPECIAL] = 25
    }
    break;
    
    case AT_FSPECIAL:
    can_move = false
    if window > 1 {
        move_cooldown[AT_FSPECIAL] = 10
        can_wall_jump = true
    }
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("brkn_wand_down_stab_dash"))
        var fx = spawn_hit_fx(x - 40*spr_dir, y-35, vfx_dash)
            fx.spr_dir = spr_dir
    }
    if window == 3 && window_timer == window_length {
        if free && !has_hit {
            set_state(PS_PRATFALL)
        }
    }
    
    //40px ledge snap
    if window == 1 has_snapped = false
    if (window == 2) && !has_snapped && free && place_meeting(x + hsp, y, asset_get("par_block")) {
        for (var i = 0; i < 40; i++) {
            if (!place_meeting(x + hsp, y-(i+1), asset_get("par_block"))) {
                y -= i;
                has_snapped = true;
                break;
            }
        }
    }
    break;
    
    case AT_FSTRONG:
    if window == 2 && window_timer == window_length && !hitpause {
        sound_play(sound_get("hero_nail_art_great_slash"))
        sound_play(asset_get("sfx_zetter_downb"))
    }
    break;
    
    case AT_DSPECIAL:
    can_move = (window != 2)
    if window == 1 {
        hsp = lerp(hsp, 0, 0.1)
        vsp = lerp(vsp, 0, 0.1)
    }
    if window > 1 {
        move_cooldown[AT_DSPECIAL] = 10
    }
    if window == 3 && window_timer == window_length {
        if free && !has_hit {
            set_state(PS_PRATFALL)
        }
    }
    break;
    
    case AT_USPECIAL:
    can_move = false
    if window <= 2 {
        hsp = lerp(hsp, 0, 0.1)
        vsp = lerp(vsp, 2, 0.1)
    }
    
    if window == 1 move_cooldown[AT_USPECIAL] = 1000000000000
    
    if window == 2 && window_timer == window_length {
        var needle_spd = 18
        
        var needle_hsp = 0
        var needle_vsp = 0
        
        
        var joy_angle_x = spr_dir*dcos(joy_dir)
        var joy_angle_y = dsin(joy_dir)
        var joy_angle = round(clamp(darctan2(joy_angle_y, joy_angle_x), -90, 90))
        
        //print(joy_angle)
        if on_keyboard {
            var needle_angle = clamp(joy_angle/2, -45, 45)
        } else {
            var needle_angle = clamp(joy_angle, -45, 45)
        }
        
        //taunt attack
        if taunt_attack {
            needle_angle = 0
        }
        
        /*
        if up_down && !down_down {
            needle_hsp = needle_spd*spr_dir
            needle_vsp = -5
        } else if down_down && !up_down {
            needle_hsp = needle_spd*spr_dir
            needle_vsp = 5
        } else {
            needle_hsp = 18*spr_dir
        }
        */
        if joy_pad_idle {
            needle_angle = 0
        }
        needle_hsp = needle_spd*dcos(needle_angle)*spr_dir
        needle_vsp = -needle_spd*dsin(needle_angle)
        var needle = create_hitbox(AT_USPECIAL, 1, floor(x + 20*spr_dir + 20*dcos(needle_angle)*spr_dir), floor(y - 20 - 20*dsin(needle_angle)))
            needle.hsp = needle_hsp
            needle.vsp = needle_vsp
    }
    
    //grapple dash
    if window == 7 {
        var needle_hitbox = undefined
        with pHitBox if player_id == other.id && attack == AT_USPECIAL && hbox_num == 1 {
            needle_hitbox = id
        }
        
        var needle_colliding = place_meeting(needle_hitbox.x, needle_hitbox.y, asset_get("par_block"))
        
        if !hitpause {
            if needle_hitbox != undefined {
                var needle_dir = point_direction(x, y - 30, needle_hitbox.x, needle_hitbox.y)
                hsp = 20*dcos(needle_dir)
                vsp = -20*dsin(needle_dir)
            } else {
                hsp = 20*spr_dir
            }
        } else {
            hsp = 0
            vsp = 0
        }
        
        if has_hit {
            old_vsp = -8
            old_hsp = 6*spr_dir
            if !hitpause {
                vsp = -8
                hsp = 2*spr_dir
                destroy_hitboxes()
                window = 9
                window_timer = 0
            }
        }
        
        
        
        with pHitBox if player_id == other.id && attack == AT_USPECIAL && hbox_num == 2 {
            if place_meeting(x, y, asset_get("par_block")) || player_id.manual_hit {
                var wall_bounce_vsp = 11
                if player_id.window_timer <= 3 && !player_id.manual_hit {
                    wall_bounce_vsp = 13
                }
                player_id.window = 9
                player_id.window_timer = 0
                player_id.vsp = -wall_bounce_vsp
                player_id.old_vsp = -wall_bounce_vsp
                player_id.old_hsp = 4*player_id.spr_dir
                player_id.hsp = 4*player_id.spr_dir
                //sound_play(asset_get("sfx_blow_medium3"))
                player_id.manual_hit = false
                instance_destroy(id)
            } else if (needle_hitbox != undefined && place_meeting(x, y, needle_hitbox) && (!other.free || !needle_colliding) && !needle_hitbox.has_hit_player && !needle_hitbox.manual_hit) { //hit needle hitbox if grounded
                player_id.window = 9
                player_id.window_timer = 0
                player_id.vsp = -7
                player_id.old_vsp = -7
                player_id.old_hsp = 6*player_id.spr_dir
                player_id.hsp = 6*player_id.spr_dir
                player_id.manual_hit = false
                player_id.has_hit = true
                instance_destroy(id)
            }
        }
        
        if window_timer == window_length {
            hsp *= 0.5
            vsp *= 0.5
        }
        fall_through = true
    }
    
    if window == 9 {
        can_wall_jump = true
    }
    
    if window == 7 && window_timer == 1 {
        var fx = spawn_hit_fx(x, y-35, vfx_dash)
            fx.spr_dir = spr_dir
            fx.draw_angle = darctan2(-vsp*spr_dir, hsp*spr_dir)
    }
    
    if (window == 5 || window == 9) && window_timer == window_length {
        if proj_parried {
            proj_parried = false
            was_parried = true
            set_state(!free ? PS_PRATLAND : PS_PRATFALL)
        } else if free && !has_hit && window == 9 {
            set_state(PS_PRATFALL)
        }
    }
    break;
    
    case AT_DSTRONG:
    if window == 2 && window_timer == 5 {
        sound_play(asset_get("sfx_ori_stomp_spin"))
    }
    break;
    
    case AT_USTRONG:
    if window == 2 && window_timer == window_length && !hitpause {
        sound_play(sound_get("claw_swipe2"))
        sound_play(sound_get("bar_swing_med2"))
    }
    if window == 3 && window_timer == 4 && !hitpause {
        //sound_play(asset_get("sfx_shovel_dig"))
    }
    break;
    
    case AT_TAUNT:
    if window == 1 && window_timer == 6 && !hitpause {
        var randvar = random_func(0, 6, true)
        switch randvar {
            case 0: sound_play(sound_get("sfx_garama"), false, noone, 2) break;
            case 1: sound_play(sound_get("sfx_dialogue1"), false, noone, 2) break;
            case 2: sound_play(sound_get("sfx_dialogue2"), false, noone, 2) break;
            case 3: sound_play(sound_get("sfx_dialogue3"), false, noone, 2) break;
            case 4: sound_play(sound_get("sfx_dialogue4"), false, noone, 2) break;
            case 5: sound_play(sound_get("sfx_dialogue5"), false, noone, 2) break;
        }
    }
    break;
}
/*
silk_cancel_id = noone
if has_hit_player && hit_player_obj.hornet_silked_id != noone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
    if attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_NSPECIAL {
        if hit_player_obj.state_timer <= 6 {
            can_special = true
            silk_cancel_id = hit_player_obj.id
        }
    }
}
*/

if voice_mode {
    switch attack {
        case AT_DATTACK:
        if window == 1 && window_timer == 2 && !hitpause play_voice(sound_get("sfx_shaw"))
        break;
    }
}

#define play_voice(sfx)
var randvar = random_func(0, 2, true)
if randvar == 1 {
    sound_play(sfx)
}

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