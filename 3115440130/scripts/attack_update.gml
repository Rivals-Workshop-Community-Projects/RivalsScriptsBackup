// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_NAIR {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("bar_swing_med2"))
    }
}

if attack == AT_BAIR {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("bar_swing_med1"))
    }
}

if attack == AT_FTILT {
    if window == 1 && window_timer == window_length {
        fault_timer = 0
        num_faults = 0
        sound_play(asset_get("sfx_kragg_spike"))
    }
    if window >= 2 && !hitpause {
        fault_timer++
        if fault_timer mod 5 == 1 && num_faults < 3 {
            create_fault(x + (66 + 32*num_faults)*spr_dir, y, true, true)
            num_faults++
        }
    }
}

if attack == AT_DSTRONG {
    /*
    if window == 1 && strong_charge > 0 && strong_charge mod 16 == 4 {
        var fault_dist = 3 + floor(strong_charge/16)
        create_shard_off_ledge(x + fault_dist*32, y)
        create_shard_off_ledge(x - fault_dist*32, y)
    }
    */
    
    
    if window == 2 && window_timer == window_length {
        fault_timer = 0
        num_faults = 0
        sound_play(asset_get("sfx_kragg_spike"))
        sound_play(asset_get("sfx_zetter_downb"))
        create_fault(x + 16, y, true, false)
        create_fault(x + 32, y, true, false)
        create_fault(x - 16, y, true, false)
        create_fault(x - 32, y, true, false)
    }
    
    
    
    if window >= 3 && !hitpause {
        var fault_dist = 3 + floor(strong_charge/16)
        //print(fault_dist)
        fault_timer++
        if fault_timer mod 5 == 1 && num_faults < fault_dist {
            create_fault(x + (40 + 32*num_faults)*spr_dir, y, true, true)
            create_fault(x - (40 + 32*num_faults)*spr_dir, y, true, true)
            num_faults++
        }
    }
    
}

if attack == AT_FSTRONG {
    /*
    if window == 2 && !hitpause {
        if right_down == -spr_dir || left_down == spr_dir {
            spr_dir *= -1
        } 
    }
    */
    if window == 2 && window_timer == window_length {
        sound_play(sound_get("bar_swing_heavy"))
    }
}

if attack == AT_USTRONG {
    if window == 4 && window_timer == 6 && !hitpause && has_hit {
        if right_down == -spr_dir || left_down == spr_dir {
            spr_dir *= -1
        } 
    }
    /*
    if window == 4 && window_timer > 6 {
        hsp -= 2*spr_dir
    }
    */
    if window == 4 && window_timer == window_length {
        sound_play(sound_get("bar_swing_med2"))
    }
}

if attack == AT_NSPECIAL {
    move_cooldown[AT_NSPECIAL] = 50
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_swipe_medium1"))
        if free {
            vsp -= 6
            hsp -= 2*spr_dir
            create_hitbox(AT_NSPECIAL, 1, x, y - 20)
        } else {
            var y_dist = y + 4
            var x_dist = x + 24*spr_dir
            var block_check = position_meeting(x_dist, y_dist, asset_get("par_block"))
            var plat_check = position_meeting(x_dist, y_dist, asset_get("par_jumpthrough"))
            
            if block_check || plat_check {
                
                create_hitbox(AT_NSPECIAL, 2, x, y)
                
                var fx = spawn_hit_fx(x, y, vfx_rock_shatter)
                    fx.depth = -10
                var rock = instance_create(x_dist, y, "obj_article2")
                    rock.spr_dir = spr_dir
            } else {
                create_hitbox(AT_NSPECIAL, 1, x_dist, y)
            }
            
        }
    }
}

if attack == AT_FSPECIAL {
    can_fast_fall = false
    can_move = true
    if window > 1 can_wall_jump = true
    if window > 1 && window < 5 can_move = false 
    
    if window == 1 && window_timer == window_length && !hitpause {
        holo_num = 0
        fspec_hit = false
        fspec_empowered = false
        sound_play(asset_get("sfx_ori_stomp_spin"))
        
        if !free {
            //spawn_base_dust(x, y, "dash_start", spr_dir)
            spawn_hit_fx(x, y, vfx_fspec_launch)
        }
        
        var on_fault = false
        with obj_article1 if player_id == other.id {
            for (var i = 0; i < array_length(segment_array); i++) {
                if segment_array[i] != undefined && segment_array[i] != 0 {
                    var seg_x = surface_x + i*32
                    var seg_y = surface_y
                    if abs(seg_x - other.x) <= 32 && abs(seg_y - other.y) <= 2 {
                        on_fault = true
                        segment_array[i].timer = 0
                        segment_array[i].state = 5
                        break;
                    }
                }
            }
        }
        
        if on_fault {
            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 18);
            set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 4);
            set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 0);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
            set_hitbox_value(AT_FSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 4);
            
            set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 1);
            sound_play(asset_get("sfx_forsburn_consume_full"))
            //super_armor = true
            //soft_armor = 12
            fspec_empowered = true
        }
    }
    
    if window > 2 {
        super_armor = false
        soft_armor = 0
    }
    
    if (window == 2 || window == 3) && fspec_empowered {
        if window_timer mod 3 == 1 {
            holo_col_1 = get_slot_colour(0)
            holo_col_2 = get_slot_colour(1)
            var col = merge_color(holo_col_1, holo_col_2, clamp(holo_num*0.3, 0, 1))
            array_push(fspec_holograms, [x, y, 12, sprite_index, image_index, col])
            holo_num++
        }
    }
    
    if (window == 2 && window_timer >= 6) || (window == 3) {
        /*
        if has_hit || fspec_empowered {
            can_attack = true
            can_special = true
        }
        */
        
        if (shield_down || shield_pressed || special_pressed) {
            window = 6
            window_timer = 0
            hsp *= 0.9
            vsp -= 2
            move_cooldown[AT_FSPECIAL] = 30
            destroy_hitboxes()
            sound_play(asset_get("sfx_burnend"))
            sound_stop(asset_get("sfx_swipe_heavy2"))
        }
    }
    
    if window == 6 {
        if window_timer >= 4 && has_hit || fspec_empowered {
            //iasa_script()
            can_attack = true
            can_special = true
            can_jump = true
        }
        if window_timer == window_length {
            if !has_hit && !fspec_empowered && !fspec_hit {
                set_state(PS_PRATFALL)
            }
        }
    }
    
    if window >= 4 {
        can_move = true
    }
    
    if window == 5 && window_timer == window_length && !has_hit && free && !fspec_empowered {
        set_state(PS_PRATFALL)
    }
}

if attack == AT_USPECIAL {
    move_cooldown[AT_USPECIAL] = 1000000
    if window == 1 {
        if !free uspec_grounded = true
        
        hsp *= 0.9
        vsp *= 0.9
        if window_timer == 1 {
            sound_play(asset_get("sfx_kragg_roll_start"))
        }
        if window_timer == window_length {
            spawn_shards_ellipse(24, 50, 25, spr_dir*60, x + 5*spr_dir, y - 10 - char_height/2, 18, 0)
            
            if !free {
                create_fault(x - 48, y, false, false)
                create_fault(x - 16, y, false, false)
                create_fault(x + 16, y, false, false)
                create_fault(x + 48, y, false, false)
            }
        }
    }
    if window >= 2 {
        can_wall_jump = true
    }
    if window == 3 && window_timer <= 6 {
        hsp *= 0.85
        vsp *= 0.85
    }
    if window == 3 && window_timer > 6 && !free {
        set_state(PS_LAND)
    }
    
    if window == 3 && window_timer == window_length && !uspec_grounded {
        set_state(PS_PRATFALL)
    }
}

if attack == AT_DSPECIAL {
    if window == 1 && window_timer == 1 {
        holo_num = 0
        vsp += free ? -4 : -8
        vsp = clamp(vsp, -10, 8)
        if !free {
            spawn_base_dust(x, y, "jump", spr_dir)
        }
        sound_play(asset_get("sfx_ori_ustrong_charge"))
    }
    
    if window == 1 && window_timer == 4 {
        var faults_count = 0
        with obj_article1 if player_id == other.id {
            //var offset = floor((other.x - (x - surface_offset_x))/32)
            
            for (var i = 0; i < array_length(segment_array); i++) {
                if segment_array[i] != undefined && segment_array[i] != 0 {
                    segment_array[i].state = 1
                    //segment_array[i].timer = -floor(abs(offset - floor(i))/2)
                    segment_array[i].timer = -abs(floor(round((surface_x - other.x + i*32)/32)/2))
                    faults_count++
                }
            }
        }
        if faults_count >= dspec_fault_threshold_large {
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
            dspec_explosion_size = 2
            do_dspec_explode = true
            sound_play(asset_get("sfx_forsburn_consume_full"))
            
        } else if faults_count >= dspec_fault_threshold_small {
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
            dspec_explosion_size = 1
            do_dspec_explode = true
            sound_play(asset_get("sfx_mol_flare_shoot"))
        } else {
            do_dspec_explode = false
        }
        
    }
    if window == 1 || window == 2 {
        vsp *= 0.9
        hsp *= 0.9
        //can_move = false
    }
    
    if window == 4 && window_timer >= 20 {
        iasa_script()
    }
    
    if window == 2 {
        if do_dspec_explode {
            if dspec_explosion_size == 2 {
                super_armor = true
            } else if dspec_explosion_size == 1 {
                soft_armor = 12
            }
        }
    }
    
    
    //dive
    if window == 3 || window == 4 {
        
        if do_dspec_explode && !hitpause {
            if window_timer mod 3 == 1 {
                if dspec_explosion_size == 1 {
                    var _alpha = 6
                    holo_col_1 = get_slot_colour(0)
                    holo_col_2 = get_slot_colour(0)
                }
                if dspec_explosion_size == 2 {
                    var _alpha = 10
                    holo_col_1 = get_slot_colour(0)
                    holo_col_2 = get_slot_colour(1)
                }
                var col = merge_color(holo_col_1, holo_col_2, clamp(holo_num*0.3, 0, 1))
                array_push(fspec_holograms, [x, y, _alpha, sprite_index, image_index, col])
                holo_num++
            }
        }
        /*
        if state_timer mod 2 == 0 {
            var fx = spawn_hit_fx(x, y - 80, vfx_dspec_rock)
                fx.vsp = -8
        }
        */
        if !free && !hitpause { //land
            window = 5
            window_timer = 0
            super_armor = false
            soft_armor = 0
            sound_play(asset_get("sfx_kragg_rock_land"))
            sound_play(asset_get("sfx_kragg_rock_shatter"))
            spawn_shards_ellipse(10, 40, 4, 0, x, y, 20, 0)
            destroy_hitboxes()
            
            if do_dspec_explode {
                dspec_explosion_timer = 0
                dspec_explosion_coords = [x,y]
                if dspec_explosion_size == 1 {
                    sound_play(asset_get("sfx_mol_norm_explode"))
                    create_hitbox(AT_DSPECIAL, 6, get_hitbox_value(attack, 2, HG_HITBOX_X), get_hitbox_value(attack, 2, HG_HITBOX_Y))
                    create_hitbox(AT_DSPECIAL, 5, get_hitbox_value(attack, 5, HG_HITBOX_X), get_hitbox_value(attack, 5, HG_HITBOX_Y))
                    shake_camera(6, 3)
                } else if dspec_explosion_size == 2 {
                    sound_play(asset_get("sfx_mol_huge_explode"), false, noone, 1, 1.5)
                    create_hitbox(AT_DSPECIAL, 3, get_hitbox_value(attack, 3, HG_HITBOX_X), get_hitbox_value(attack, 3, HG_HITBOX_Y))
                    create_hitbox(AT_DSPECIAL, 4, get_hitbox_value(attack, 4, HG_HITBOX_X), get_hitbox_value(attack, 4, HG_HITBOX_Y))
                    shake_camera(8, 4)
                }
            } else {
                create_hitbox(AT_DSPECIAL, 2, get_hitbox_value(attack, 2, HG_HITBOX_X), get_hitbox_value(attack, 2, HG_HITBOX_Y))
                shake_camera(4, 2)
            }
            spawn_base_dust(x - 20, y, "dash_start", 1)
            spawn_base_dust(x + 20, y, "dash_start", -1)
        }
    }
}

if attack == AT_JAB {
    if window == 1 && window_timer == window_length {
        sound_play(asset_get("sfx_dust_knuckle"), false, noone, 0.6)
    }
    if window == 4 && window_timer == window_length {
        sound_play(asset_get("sfx_dust_knuckle"), false, noone, 0.6)
    }
}

if attack == AT_FAIR {
    if window == 1 && window_timer == window_length {
        sound_play(asset_get("sfx_dust_knuckle"), false, noone, 0.6)
    }
}

if attack == AT_DAIR {
    if (window == 1 || window == 2) && window_timer == window_length {
        sound_play(asset_get("sfx_dust_knuckle"), false, noone, 0.6)
    }
}

if attack == AT_TAUNT {
    if window == 1 && window_timer == 4 {
        sound_play(asset_get("sfx_swipe_medium1"))
    }
    if window == 1 && window_timer == window_length {
        sound_play(asset_get("sfx_syl_uspecial_travel_start"))
        sound_play(asset_get("sfx_syl_dspecial_growth"))
        //sound_play(sound_get("roar"))
        shake_camera(8, 4)
    }
}

#define create_shard_off_ledge(_x, _y)

var spawnx = floor(_x/32)*32 + 16
var spawny = _y

var plat = position_meeting(spawnx, spawny, asset_get("par_jumpthrough"))
var block = position_meeting(spawnx, spawny, asset_get("par_block"))

//check for solid below
var ground_lowest_id = undefined
var ground_lowest_y = spawny
var ground_increment = 16
for (var j = 0; j < 15; j++) {
    var cur_y = y + j*ground_increment
    if position_meeting(spawnx, cur_y, asset_get("par_block")) {
        ground_lowest_id = instance_position(spawnx, cur_y, asset_get("par_block"))
        ground_lowest_y = cur_y
        break;
    }
}

if !(plat || block) && ground_lowest_id != undefined {
    spawny = ground_lowest_y
} else if ground_lowest_id == undefined && !(plat || block) {
    return;
}

spawn_shards_ellipse(4, 10, 2, 0, spawnx, spawny, 8, 0)

return;

#define create_fault(_x, _y, goes_off_ledge, has_hitbox)

var spawnx = floor(_x/32)*32 + 16
//var spawnx = _x
var spawny = _y

if goes_off_ledge {
    var plat = position_meeting(spawnx, spawny, asset_get("par_jumpthrough"))
    var block = position_meeting(spawnx, spawny, asset_get("par_block"))
    
    //check for solid below
    var ground_lowest_id = undefined
    var ground_lowest_y = spawny
    var ground_increment = 16
    for (var j = 0; j < 15; j++) {
        var cur_y = y + j*ground_increment
        if position_meeting(spawnx, cur_y, asset_get("par_block")) {
            ground_lowest_id = instance_position(spawnx, cur_y, asset_get("par_block"))
            ground_lowest_y = cur_y
            break;
        }
    }
    
    if !(plat || block) && ground_lowest_id != undefined {
        spawny = ground_lowest_y
    } else if ground_lowest_id == undefined && !(plat || block) {
        return;
    }
}

var fault = instance_create(spawnx, spawny, "obj_article1");
if instance_exists(fault) {
    fault.age = timer
}

if has_hitbox == 1 {
    var fx = spawn_hit_fx(spawnx, spawny, vfx_fault)
        fx.depth = -10
    create_hitbox(AT_EXTRA_1, 1, spawnx, spawny - 16)
    sound_play(asset_get("sfx_flareo_rod"))
} else if has_hitbox == 2 {
    var fx = spawn_hit_fx(spawnx + 16, spawny, vfx_eruption)
        fx.depth = -10
    create_hitbox(AT_EXTRA_1, 2, spawnx + 16, spawny - 70)
    sound_play(asset_get("sfx_flareo_rod"))
    sound_play(asset_get("sfx_boss_fireball_land"))
    //sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 1, 1.5)
}
return;

#define spawn_shards_ellipse(num_shards, ellipse_b, ellipse_h, ellipse_angle, ellipse_x, ellipse_y, shard_spd, shard_spd_bias)

//var num_shards = 12
for (var i = 0; i < num_shards; i++) {
    var rand_b = random_func(i, ellipse_b, true) - (ellipse_b/2)
    var rand_h = random_func(i + 50, ellipse_h, true) - (ellipse_h/2)
    var rand_spd = random_func(i + 100, 3*floor(shard_spd/4), true) + floor(shard_spd/4)
    
    var rand_angle = point_direction(0, 0, rand_b, rand_h)
    var rand_dist = point_distance(0, 0, rand_b, rand_h)
    
    var modified_angle = rand_angle + ellipse_angle
    var modified_x = ellipse_x + rand_dist*dcos(modified_angle)
    var modified_y = ellipse_y - rand_dist*dsin(modified_angle)
    
    //var shard_spd = 5
    var shard_hsp = rand_spd/2*dcos(modified_angle)
    var shard_vsp = -rand_spd/2*dsin(modified_angle)
    
    var shard = spawn_hit_fx(modified_x, modified_y, vfx_airdodge_shard)
        shard.depth = -10
        shard.hsp = shard_hsp
        shard.vsp = shard_vsp
        shard.spr_dir = ((i mod 2) - 0.5) * 2
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
if newdust != noone {
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
}
return newdust;

#define get_nearest_fault()
var cur_dist = 10000000
var cur_id = noone
with obj_article1 if player_id == other.id {
    var obj_dist = point_distance(x, y, other.x, other.y)
    if obj_dist < cur_dist {
        cur_dist = obj_dist
        cur_id = id
    }
}
return {
    ID: cur_id,
    dist: cur_dist
};

#define get_slot_colour(slot)
var p_col = get_player_color(player)
var col_r = get_color_profile_slot_r(p_col, slot)
var col_g = get_color_profile_slot_g(p_col, slot)
var col_b = get_color_profile_slot_b(p_col, slot)
var col_final = make_color_rgb(col_r, col_g, col_b);
return col_final