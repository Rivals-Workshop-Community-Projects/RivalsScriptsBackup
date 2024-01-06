// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_USPECIAL {
    if window == 1 && window_timer == 4 sound_play(asset_get("sfx_ell_utilt_fire"))
    if window == 1 && window_timer == window_length {
        reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
        reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE);
        if uspec_touch_ground {
            if num_wings > 0 {
                with obj_article_platform if player_id == other.id {
                    die = true
                }
            }
            var wing = instance_create(x, y - 10, "obj_article_platform")
                wing.spr_dir = spr_dir
                wing.fake_hsp = hsp
                wing.hsp = round(hsp)
            sound_play(asset_get("mfx_star"))
            uspec_touch_ground = false
        } else {
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -6);
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
        }
    }
    
    if window == 3 && !free {
        set_state(was_parried ? PS_PRATLAND : PS_LAND)
        hsp *= 0.5
    }
}

if attack == AT_DSPECIAL {
    move_cooldown[AT_DSPECIAL] = 80
    if window == 2 && window_timer == window_length && !hitpause {
        if !free {
            sound_play(sound_get("glass_breaking"))
            sound_play(asset_get("sfx_oly_nspecial_flashbreak"))
            spawn_hit_fx(x + 36*spr_dir, y + 10, vfx_dspec)
            spawn_hit_fx(x + 36*spr_dir, y, HFX_GEN_OMNI)
            create_hitbox(AT_DSPECIAL, 2, x, y)
        } else {
            create_hitbox(AT_DSPECIAL, 1, x + 30*spr_dir, y)
            vsp = -4
        }
        var obj = get_nearest_fuse_object(true)
        if !free && obj.id != noone && obj.id.recall_cooldown == 0 with obj.id {
            recall_active = !recall_active
            if !recall_active {
                recall_cooldown = 30
            }
        }
    }
}
/*
if attack == AT_DSPECIAL {
    can_fast_fall = false
    if window == 1 && window_timer == window_length {
        var wing = wing_check(x, y)
        if wing != noone {
            wing.fake_hsp = spr_dir*8
            wing.fake_vsp = 0
        }
        
        holo_num = 0
        holo_col_1 = $95ffc9
        holo_col_2 = $43ac00
    }
    
    if window == 2 {
        can_move = window_timer > 6
        if holo_num < 3 && window_timer mod 5 == 1 {
            var col = merge_color(holo_col_1, holo_col_2, holo_num/6)
            array_push(dspec_holograms, [x, y, 10, sprite_index, image_index, col])
            holo_num++
        }
        
        if window_timer == window_length {
            if free {
                set_state(PS_IDLE_AIR)
            }
        }
        
        if !free {
            window = 3
            window_timer = 0
        }
    }
}
*/

if attack == AT_USTRONG {
    if window == 4 {
        can_move = window_timer >= 12
    } else {
        can_move = false
    }
    
    if (window == 1 || window == 2) && !hitpause {
        //check for platform above
        var plat_lowest_id = undefined
        var plat_lowest_y = 0
        for (var i = 0; i < instance_number(asset_get("par_jumpthrough")); i++) {
            var plat = instance_find(asset_get("par_jumpthrough"), i)
            var plat_x = get_instance_x(plat)
            var plat_y = get_instance_y(plat)
            var plat_above = plat_y < (y - char_height) && position_meeting(x, plat_y, plat);
            if plat_above && plat_y > plat_lowest_y {
                plat_lowest_id = plat
                plat_lowest_y = plat_y
            }
        }
        
        //assign ascend platform id
        if ascend_plat != plat_lowest_id && plat_lowest_id != undefined {
            sound_play(sound_get("Toreroof_Start_00"))
        }
        ascend_plat = plat_lowest_id;
        if ascend_plat != undefined && instance_exists(ascend_plat) { //has ascend plat
            ascend_y = get_instance_y(ascend_plat)
            if window == 2 {
                hsp = 0
                if window_timer == window_length {
                    sound_play(sound_get("Fol_Pl_Toreroof_Start_00"))
                    sound_play(asset_get("sfx_ori_ustrong_launch"))
                    spawn_hit_fx(x, y, vfx_ascend_ground)
                }
            }
        }
    }
    
    if window == 2 && window_timer == window_length && !hitpause {
        spawn_base_dust(x, y, "jump", spr_dir)
        if ("is_ascend_plat" in ascend_plat) {
            ascend_plat.is_ascend_plat = 20
            ascend_plat.recall_active = false
        }
    }
    
    if window == 3 {
        var ascend_end = false
        if ascend_plat != undefined && instance_exists(ascend_plat) { //has ascend plat
            if y <= ascend_y {
                ascend_end = true
            }
        } else { //no ascend plat
            if window_timer >= 3 {
                ascend_end = true
            }
        }
        if ascend_end {
            window = 4
            window_timer = 0
            vsp = -4
            ascend_plat = undefined
            destroy_hitboxes()
        }
    }
    
    if window == 4 {
        vsp = clamp(vsp, -4, 1000000)
        if !free {
            set_state(has_hit ? PS_LAND : was_parried ? PS_PRATLAND : PS_LANDING_LAG)
        }
    }
}

if attack == AT_DSTRONG {
    if window == 2 && window_timer == window_length && !hitpause {
        sound_play(sound_get("explosion"))
        var fx = spawn_hit_fx(x + 20*spr_dir, y - 20, vfx_stock_explosion_large_red)
            //fx.depth = -10
    }
}

if attack == AT_FSPECIAL {
    can_move = false
    can_wall_jump = true
    if window == 1 {
        shieldsurf_sfx_playing = false
        has_bomb_hit = false
    }
    
    if window == 2 {
        if !free {
            if !shieldsurf_sfx_playing {
                sound_play(sound_get("shield_surf"))
                shieldsurf_sfx_playing = true
                spawn_base_dust(x, y, "dash_start", spr_dir)
            }
            
            if window_timer mod 6 == 0 {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
        }
        
        if has_hit {
            window = 3
            window_timer = 0
            
            destroy_hitboxes()
            //bomb jump
            if has_hit && my_hitboxID.hbox_num == 4 {
                old_vsp = -12
                old_hsp *= 1.2
                has_bomb_hit = true
            } else {
                old_vsp = -6
                old_hsp *= 0.75
            }
        } else if !free && fuse_item_shield == 3 {
            has_bomb_hit = true
            sound_play(sound_get("explosion"))
            spawn_hit_fx(x, y, vfx_stock_explosion_large)
            window = 3
            window_timer = 0
            vsp = -12
            hsp *= 1.2
            fuse_item_shield = 0
            fuse_item_timer = 0
            destroy_hitboxes()
        }
        
        //wing glide
        if fuse_item_shield == 1 {
            vsp = clamp(vsp, -10000, 3)
        }
        
        if abs(hsp) <= 2 && !hitpause && !free {
            set_state(was_parried ? PS_PRATFALL : PS_FIRST_JUMP)
        }
        
        if window_timer >= 30 {
            if !was_parried can_jump = true
        }
    }
    
    
    if has_bomb_hit {
        can_move = true
    }
    
    if window == 3 {
        if window_timer >= 6 && !was_parried iasa_script()
    }
}

if attack == AT_FSTRONG {
    if window == 1 {
        var obj = get_nearest_fuse_object(false)
        if window_timer == 2 && !hitpause && obj.id != noone {
            sound_play(sound_get("magnesis_hit"))
        }
        //print(standing_on())
        if obj.id != noone {
            if obj.id.state != 9 {
                obj.id.state = 9 //fuse state
                obj.id.state_timer = 0
            }
            if window_timer >= 6 {
                fuse_draw_alpha = 1.2
                fuse_reticle_x = obj.id.x
                fuse_reticle_y = obj.id.y
                fuse_start_x = x - 10*spr_dir
                fuse_start_y = y - 20
            }
        } else {
            fuse_draw_alpha = 0
        }
    } else if window == 2 {
        //sound_stop(sound_get("ScraBuild_Cling_00_short"))
        var obj = get_nearest_fuse_object(false)
        if obj.id != noone && obj.id.state != 0 {
            obj.id.state = 0
            obj.id.state_timer = 0
        }
    }
    /*
    if window == 3 {
        if has_hit && !hitpause && fuse_item_trident == 2 {
            fuse_item_trident = 0
            fuse_item_timer = 0
        }
    }
    */
}

if attack == AT_NSPECIAL {
    move_cooldown[AT_NSPECIAL] = 30
    if window == 1 {
        if window_timer == window_length && !hitpause {
            var new_dir = 50
            var new_spd = 10
            
            if !joy_pad_idle {
                var jdir = darctan2(dsin(joy_dir), spr_dir*dcos(joy_dir))
                var newy = dsin(new_dir) + 0.3*dsin(jdir)
                var newx = dcos(new_dir) + 0.3*dcos(jdir)
                new_dir = darctan2(newy, newx)
                new_spd = 8 + 2*point_distance(0, 0, newx, newy)
            }
            
            var proj = create_hitbox(AT_NSPECIAL, 1, x + 40*spr_dir, y - 40)
                proj.hsp = spr_dir*new_spd*dcos(new_dir)
                proj.vsp = -new_spd*dsin(new_dir)
            
            sound_play(sound_get("se_item_item_throw"))
        }
    }
}

if attack == AT_DTILT {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_zetter_downb"))
        spawn_base_dust(x + 50*spr_dir, y, "land", -spr_dir)
        spawn_base_dust(x, y, "dash", spr_dir)
    }
}

if attack == AT_FTILT {
    if window == 1 && window_timer == window_length - 4 && !hitpause {
        sound_play(sound_get("magnesis_hit"))
    }
    if window <= 2 {
        var obj = get_nearest_fuse_object(false)
        if obj.id != noone {
            set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 0);
            if obj.id.state != 9 {
                obj.id.state = 9 //fuse state
                obj.id.state_timer = 0
            }
            if window == 2 {
                fuse_draw_alpha = 1.2
                fuse_reticle_x = obj.id.x
                fuse_reticle_y = obj.id.y
                fuse_start_x = x + 40*spr_dir
                fuse_start_y = y - 20
            }
            ftilt_draw_vfx = 0
        } else {
            fuse_draw_alpha = 0
            if window == 2 && window_timer == 1 {
                ftilt_draw_vfx = 4
            }
        }
    }
    if window == 2 {
        if window_timer >= 12 && prev_x == x && prev_y == y {
            //window = 3
            //window_timer = 0
            destroy_hitboxes()
        } else if get_nearest_fuse_object(false).id == noone && !has_hit {
            ftilt_draw_vfx = 4
        }
        prev_x = x
        prev_y = y
        
        if has_hit && !hitpause {
            window = 4
            window_timer = 0
            destroy_hitboxes()
        } else if (!attack_down || was_parried) && window_timer >= 6 {
            window = 4
            window_timer = 0
            destroy_hitboxes()
        }
    }
    
    if window == 4 {
        destroy_hitboxes()
    }
    /*
    if window == 5 {
        if has_hit && !hitpause && fuse_item_shield == 2 {
            fuse_item_shield = 0
            fuse_item_timer = 0
        }
    }
    */
    
    if window == 2 {
        //print(standing_on())
        var obj = get_nearest_fuse_object(false)
        if obj.id != noone && obj.id.state != 9 {
            obj.id.state = 9 //fuse state
            obj.id.state_timer = 0
        }
    } else if window > 2 {
        var obj = get_nearest_fuse_object(false)
        if obj.id != noone && obj.id.state != 0 {
            obj.id.state = 0
            obj.id.state_timer = 0
        }
    }
    /*
    if window >= 5 && !hitpause && has_hit {
        if fuse_item_shield != 0 {
            //fuse_item_shield = 0
        }
    }
    */
}

if attack == AT_JAB {
    if window == 6 {
        can_jump = true
    }
    if window == 7 {
        if window_timer == 1 && !hitpause {
            sound_play(sound_get("bow_draw"))
        }
        if window_timer == window_length {
            sound_stop(sound_get("bow_draw"))
            sound_play(sound_get("bow_release"))
        }
    }
}

if attack == AT_DAIR {
    move_cooldown[AT_DAIR] = 30
    if window == 1 {
        if window_timer == 1 && !hitpause {
            sound_play(sound_get("bow_draw"))
        }
        if window_timer == window_length {
            sound_stop(sound_get("bow_draw"))
            sound_play(sound_get("bow_release"))
            var arrow = create_hitbox(AT_JAB, 3, x + 10*spr_dir, y - 20)
                arrow.hsp = 8*spr_dir
                arrow.vsp = 10
        }
    }
}

if attack == AT_UTILT {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_swipe_medium1"))
    }
}

if attack == AT_NAIR {
    if has_hit && hitpause {
        if hitstop_full - hitstop <= 1 {
            old_vsp = -4
        }
    }
    if (window == 3 || window == 4) && fuse_item_shield == 1 {
        vsp = clamp(vsp, -10000, 5)
    }
    //bomb jump
    if has_hit && instance_exists(my_hitboxID) && (my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 8) {
        fuse_item_shield = 0
        fuse_item_timer = 0
        old_vsp = -12
    } else if fuse_item_shield == 3 {
        if !free {
            fuse_item_shield = 0
            fuse_item_timer = 0
            vsp = -12
            window = 3
            window_timer = 0
            sound_play(sound_get("explosion"))
            spawn_hit_fx(x, y, vfx_stock_explosion_large)
            destroy_hitboxes()
        }
    } else if !free {
        set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG)
    }
    if (window == 4 && !attack_down) || (window == 3 && has_hit && !hitpause && !attack_down) {
        window = 5
        window_timer = 0
        destroy_hitboxes()
    }
}

if attack == AT_TAUNT {
    if window == 1 && window_timer == 2 {
        sound_play(asset_get("sfx_forsburn_cape_swipe"))
        spawn_base_dust(x, y, "dash_start", spr_dir)
        spawn_base_dust(x, y, "dash_start", -spr_dir)
    }
}

if (attack == AT_TAUNT_2) {
    if (window == 2) && (taunt_pressed || attack_pressed || special_pressed || shield_pressed) && (window_timer >= 30) {
        window = 3;
        window_timer = 0;
        sound_stop(sound_get("excuse_me_start"));
    }
    if window == 2 && window_timer == window_length {
        sound_stop(sound_get("excuse_me_start"));
    }
}
#define get_nearest_fuse_object(include_standing)
var obj_dist = 1000000000000
var obj_id = noone
var on_wing = wing_check(x, y)
var fuse_type = ""
with obj_article_platform if player_id == other.id && (id != on_wing || include_standing) {
    var cur_dist = point_distance(x, y, other.x, other.y)
    if cur_dist < obj_dist {
        obj_dist = cur_dist
        obj_id = id
    }
}
with pHitBox if player_id == other.id {
    if (attack == AT_NSPECIAL && hbox_num == 1)
    || (attack == AT_JAB && hbox_num == 3) {
        var cur_dist = point_distance(x, y, other.x, other.y)
        if cur_dist < obj_dist {
            obj_dist = cur_dist
            obj_id = id
        }
    }
}
return {id: obj_id, dist: obj_dist};

#define wing_check(_x, _y)
var wingID = noone
with obj_article_platform if player_id == other.id {
    if position_meeting(_x + 8, _y, id) || position_meeting(_x - 8, _y, id) {
        wingID = id
    }
}
return wingID;

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
if newdust != noone {
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
}
return newdust;

#define standing_on()
var ret = noone
if !free {
    var plat = position_meeting(x, y, asset_get('par_jumpthrough'))
    var block = position_meeting(x, y, asset_get('par_block'))
    if block {
        ret = instance_position(x, y, asset_get('par_block'))
    } else if plat {
        ret = instance_position(x, y, asset_get('par_jumpthrough'))
    }
}
return ret;