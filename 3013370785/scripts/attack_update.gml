// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch attack {
    case AT_USPECIAL:
    move_cooldown[AT_USPECIAL] = 1000000
    can_fast_fall = false
    if window == 1 {
        if window_timer == 1 { //init stuff
            trail_timer = 0
            trail_index = 0
            trail_arr = array_create(trail_segments, trail_init)
            reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
            reset_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO);
            reset_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH);
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO);
            reset_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX);
        }
        //check for solid above
        var ground_lowest_id = undefined
        var ground_lowest_y = 0
        var ground_increment = 16
        for (i = 1; i < floor(y/ground_increment); i++) {
            if position_meeting(x, y - i*ground_increment, asset_get("par_block")) {
                ground_lowest_id = instance_position(x, y - i*ground_increment, asset_get("par_block"))
                ground_lowest_y = y - i*ground_increment
                break;
            }
        }
        
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
        
        //assign ascend platform/ground id
        if ground_lowest_id != undefined && ground_lowest_y > plat_lowest_y {
            ascend_plat = ground_lowest_id;
        } else {
            ascend_plat = plat_lowest_id;
        }
        
        if ascend_plat == undefined || !instance_exists(ascend_plat) { //no ascend plat
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -9);
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
        } else { //has ascend plat
        
            ascend_y = get_instance_y(ascend_plat)
            
            var has_instance_above = true
            var cur_instance = undefined
            while (has_instance_above == true && ascend_y > 0) {
                var instance_above = instance_position(x, get_instance_y(ascend_plat) - 8, asset_get("par_block"))
                var y_increment = 0
                while instance_above == cur_instance { //make sure this isn't the same instance as previous
                    y_increment++
                    instance_above = instance_position(x, get_instance_y(ascend_plat) - 8*y_increment, asset_get("par_block"))
                }
                if instance_above != noone && instance_exists(instance_above) {
                    ascend_plat = instance_above
                    ascend_y = get_instance_y(ascend_plat)
                    cur_instance = instance_above
                } else {
                    ascend_y_increment = 0
                    var instance_meeting = position_meeting(x, get_instance_y(ascend_plat) - ascend_y_increment, ascend_plat)
                    while instance_meeting == true {
                        ascend_y_increment++
                        instance_meeting = position_meeting(x, get_instance_y(ascend_plat) - ascend_y_increment, ascend_plat)
                    }
                    
                    break;
                }
            }
            
            hsp = 0
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX);
        }
        
        if window_timer == 1 {
            sound_play(asset_get("sfx_ori_ustrong_charge"))
            sound_play(sound_get("Toreroof_Start_00"), false, noone, 0.7)
            if ascend_plat != undefined && instance_exists(ascend_plat) {
                sound_play(sound_get("Toreroof_Green_Start_00"), false, noone, 0.7)
            }
        }
        
        vsp *= 0.9
        vsp = clamp(vsp, -4, 4)
        
        
        if window_timer == window_length {
            //grounded vfx
            if !free {
                spawn_hit_fx(x, y, vfx_ascend_ground)
            }
            //sfx
            if ascend_plat != undefined && instance_exists(ascend_plat) {
                sound_stop(sound_get("Toreroof_Green_Start_00"))
                sound_play(sound_get("Fol_Pl_Toreroof_Start_00"), false, noone, 0.7)
            }
            sound_play(sound_get("Fol_Pl_Toreroof_Jump_01"), false, noone, 0.7)
        }
    }
    /*
    if ascend_draw_state == 0 && window == 1 {
        ascend_draw_state = 1
        ascend_draw_timer = 0
    }
    
    if ascend_draw_state == 1 && window == 2 {
        ascend_draw_state = 2
        ascend_draw_timer = 0
    }
    */
    
    if window == 2 || window == 3 {
        mask_index = asset_get("empty_sprite")
        can_move = false
        hsp = 0
        if ascend_plat != undefined && instance_exists(ascend_plat) { //plat exists
            set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 0);
            if position_meeting(x, y - 80, asset_get("par_block")) && !ascend_burrowing { //underneath solid
                ascend_burrowing = true
                //set_window(4)
                sound_play(sound_get("Fol_Pl_Toreroof_In_00"), false, noone, 0.7)
            }
            if y <= get_instance_y(ascend_plat) { //above plat
                set_window(4)
                vsp = 2
                y -= 10
                //ascend_draw_state = 3
                //ascend_draw_timer = 5
                //sound_play(asset_get("sfx_kragg_rock_pull"))
            }
        } else { //plat does not exist, activate paraglider stuff
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 5);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
            //ascend_draw_state = 3
        }
    }
    
    if window == 3 {
        can_move = false
        hsp = 0
        if ascend_plat != undefined && instance_exists(ascend_plat) { //plat exists
            //failsafe if stuck
            if state_timer >= 90 && !ascend_burrowing {
                reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS)
                ascend_plat = undefined
                window = 5
                window_timer = 0
            }
        } else if ascend_plat != undefined && !instance_exists(ascend_plat) { //plat does not exist, activate paraglider stuff
            reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS)
            window = 5
            window_timer = 0
            vsp = -10
            //ascend_draw_state = 3
        }
    }
    
    if ascend_burrowing {
        vsp = 0
        mask_index = asset_get("ex_guy_collision_mask")
        ascend_burrowing_timer++
        //print(y)
        //print(ascend_y)
        if ascend_burrowing_timer == 20 {
            set_window(4)
            y = ascend_y - ascend_y_increment + 1
            vsp = 0
            sound_play(sound_get("Fol_Pl_Toreroof_Out_00"), false, noone, 0.7)
        }
        if ascend_burrowing_timer == 26 {
            ascend_burrowing = false
            y -= 6
            vsp = 2
        }
    }
    
    if window == 3 && window_timer > 6 && (ascend_plat == undefined || !instance_exists(ascend_plat)) {
        set_window(get_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO))
        vsp = -4
    }
    
    if window >= 4 {
        if ascend_plat != undefined && instance_exists(ascend_plat) {
            //sound_play(sound_get("Fol_Pl_Toreroof_Out_Eff_00"), false, noone, 0.7)
            spawn_hit_fx(x, get_instance_y(ascend_plat) - ascend_y_increment + 1, vfx_reticle_dissipate)
        }
        ascend_plat = undefined
        
        destroy_hitboxes()
    }
    
    
    if window == 4 && window_timer >= 8 && !free {
        if was_parried {
            set_state(PS_PRATLAND)
        } else if ascend_burrowing_timer != 0 {
            set_state(PS_LANDING_LAG)
        } else {
            set_state(PS_LAND)
        }
    }
    
    if window >= 5 { //paraglider out
        if was_parried {
            set_state(PS_PRATFALL)
        }
        vsp = clamp(vsp, -100, 2)
        can_wall_jump = true
        can_shield = true
        /*
        if has_hit {
            can_jump = true
            can_attack = true
        }
        */
        if !free {
            set_state(PS_LAND)
        }
        
        if window == 7 && down_pressed {
            trail_timer = 0
            set_window(8)
        }
    }
    
    if window == 6 || window == 7 {
        can_move = false
        if left_down hsp -= 0.5
        if right_down hsp += 0.5
        hsp = clamp(hsp, -5, 5)
    }
    
    
    if window >= 5 && window <= 7 {
        char_height = lerp(char_height, default_height + 68, 0.2)
    } else {
        char_height = lerp(char_height, default_height, 0.2)
    }
    
    if window >= 6 && window < 8 { //draw trails
        var x_offset = -70*spr_dir
        var y_offset = -100
        trail_arr[trail_index] = [x + x_offset, y + y_offset, abs(hsp), abs(vsp)]
        trail_timer++
        trail_index = (trail_index + 1) mod trail_segments
    }
    break;
    
    case AT_FSPECIAL:
    can_move = false
    can_wall_jump = true
    from_fspec = true
    if window == 1 {
        if window_timer == 2 && !hitpause {
            sound_play(asset_get("sfx_forsburn_cape_swipe"))
            move_cooldown[AT_FSPECIAL] = 1000000
        }
    }
    if window == 2 {
        if window_timer > 120 || (window_timer >= (has_hit ? 6 : 20) && jump_pressed && fuse_item != 3 && !was_parried) { //not bomb
            set_window(4)
            stop_sounds = true
        } else if !free && fuse_item != 4 { //not rocket
            set_window(3)
            from_fspec = true
        }
        
        if has_hit {
            from_fspec = true
        }
        
        if has_hit && !hitpause && window_timer >= 6 && fuse_item != 3 { //not bomb
            can_attack = true
            can_special = true
        }
    }
    
    if window >= 2 /* && (/*!free || has_hit)*/ {
        //move_cooldown[AT_FSPECIAL] = 0
    }
    
    if window <= 3 && has_hit && hitpause {
        old_vsp = -5
        old_hsp = clamp(old_hsp, -5, 5)
    }
    
    if window == 3 {
        if window_timer == 1 && !hitpause {
            sound_play(asset_get("sfx_land"))
            spawn_base_dust(x, y, "land", spr_dir)
        }
        
        if state_timer mod 5 == 0 && !free && !hitpause {
            spawn_base_dust(x, y, "walk", spr_dir)
        }
        
        if jump_pressed && !fuse_attack_activated && !was_parried {
            set_window(4)
            fuse_item = 0
        } else if abs(hsp) <= 2 && !free && !hitpause && fuse_item != 3 { //not bomb
            set_window(4)
        }
        
        if !free && old_free {
            sound_play(sound_get("shield_surf"))
        } else if free {
            sound_stop(sound_get("shield_surf"))
        }
        
        if has_hit {
            from_fspec = true
        }
        
        if has_hit && !hitpause && fuse_item != 3 && !was_parried { //not bomb
            can_attack = true
            can_special = true
        }
    }
    
    if has_hit && !hitpause {
        //can_attack = true
        //can_special = true
    }
    
    if window == 4 && window_timer == window_length {
        clear_button_buffer(PC_JUMP_PRESSED)
        //spawn_base_dust(x, y, free ? "djump" : "jump", spr_dir)
        set_state(was_parried ? PS_PRATFALL : free ? PS_DOUBLE_JUMP : PS_FIRST_JUMP)
        sound_stop(sound_get("shield_surf"))
        if !was_parried {
            vsp = free ? -djump_speed : -jump_speed
            fspec_jump = true
            if free djumps++
        }
        
        fuse_item = 0
        
        
    }
    
    switch fuse_item {
        case 1: //homingcart
        if window == 3 && !hitpause {
            hsp = 6*spr_dir
        }
        
        if window >= 3 && has_hit && !free {
            old_vsp = -6
            old_hsp = 3*spr_dir
        }
        break;
        
        case 2: //hoverstone
        if has_hit || (window >= 2 && state_timer == 16) || (window >= 2 && position_meeting(x, y + 20, asset_get("par_block"))) {
            sound_play(asset_get("mfx_star"))
            if has_hit || position_meeting(x, y + 20, asset_get("par_block")) {
                y -= 20
                spawn_item(fuse_item, 0, 0, x + 40*spr_dir, y)
            } else {
                spawn_item(fuse_item, 0, 0, x + 40*spr_dir, y)
            }
            fuse_item = 0
        }
        break;
        
        case 3: //bomb
        if window >= 2 && (!free || has_hit) && !fuse_attack_activated {
            fuse_attack_activated = true
            fuse_attack_timer = 0
            if !free {
                vsp = -6
            }
            sound_play(sound_get("SpObj_TimerBomb_SwitchOn"), false, noone, 0.5)
            sound_play(sound_get("SpObj_TimerBomb_SignExplode_First"), false, noone, 0.5)
            //sound_play(sound_get("SpObj_TimerBomb_SignExplode_Second"), false, noone, 0.7)
            destroy_hitboxes()
            /*
            sound_play(sound_get("bomb_explosion"))
            spawn_hit_fx(x, y, vfx_bomb_explosion)
            create_hitbox(AT_FSPECIAL, 4, x, y)
            shake_camera(8, 3)
            var temp_vsp = -10
            old_vsp = temp_vsp
            vsp = temp_vsp
            fuse_item = 0
            */
        }
        
        if fuse_attack_activated {
            fuse_attack_timer++
            //if fuse_attack_timer == 6 || fuse_attack_timer == 12 sound_play(asset_get("sfx_mol_huge_countdown"))
            if fuse_attack_timer == 22 {
                sound_play(sound_get("SpObj_TimerBomb_Explode"), false, noone, 0.7)
                sound_stop(sound_get("SpObj_TimerBomb_SignExplode_First"))
                sound_stop(sound_get("SpObj_TimerBomb_SwitchOn"))
                spawn_hit_fx(x, y, vfx_bomb_explosion)
                create_hitbox(AT_FSPECIAL, 4, x, y)
                
                vsp = -12
                if left_down hsp -= 4
                if right_down hsp += 4
                fuse_item = 0
                set_window(2)
                window_timer = 60
            }
        }
        break;
        
        case 4: //rocket
        if window == 2 && window_timer == 1 && !hitpause {
            sound_play(sound_get("SpObjRocket_RadiateEnergyWait"), false, noone, 0.7)
        }
        if window == 2 && window_timer == 6 && !hitpause {
            fuse_attack_activated = true
            sound_play(sound_get("SpObjRocket_StopEnergy"), false, noone, 0.7)
            sound_play(sound_get("SpObjRocket_RadiateEnergyMoving"), true, noone, 0.2)
            sound_stop(sound_get("SpObjRocket_RadiateEnergyWait"))
        }
        
        if fuse_attack_activated {
            fuse_attack_timer++
            hsp = clamp(hsp + spr_dir*0.3, -7, 7)
            vsp = clamp(vsp - 0.8, -7, 7)
            if fuse_attack_timer == 45 {
                fuse_attack_activated = false
                fuse_attack_timer = 0
                fuse_item = 0
                spawn_hit_fx(x, y, 301)
                sound_play(sound_get("SpObj_Disappear_short"))
                sound_stop(sound_get("SpObjRocket_RadiateEnergyMoving"))
            }
        }
        
        if window >= 4 {
            fuse_attack_activated = false
            fuse_attack_timer = 0
            fuse_item = 0
            sound_stop(sound_get("SpObjRocket_RadiateEnergyMoving"))
            sound_stop(sound_get("SpObjRocket_RadiateEnergyWait"))
        }
        break;
    }
    //print(window)
    old_free = free
    break;
    
    case AT_FAIR:
    if window == 2 {
        if window_timer >= 4 soft_armor = 12
        var kb = 0.6 + clamp(window_timer/160, 0, 0.2)
        if !attack_down && !strong_down && !(left_stick_down && spr_dir == -1) && !(right_stick_down && spr_dir == 1) && window_timer >= 4 {
            set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, kb);
            set_window(3)
            soft_armor = 0
        }
    }
    break;
    
    case AT_NSPECIAL:
    move_cooldown[AT_NSPECIAL] = 20
    if window == 1 {
       
        can_move = false
        
        vsp = clamp(vsp, -4, 4)
        vsp *= 0.9
        hsp *= 0.9
        
        if window_timer == 1 && free {
            sound_play(sound_get("bullet_time"))
        }
        
    } else if window == 2 {
        can_shield = true
        can_move = false
        vsp = clamp(vsp, -4, 4)
        if shield_pressed {
            if !(free && !has_airdodge){
                stop_sounds = true
            }
        }
        vsp *= 0.9
        hsp *= 0.9
        
        from_nspec = true
        
        if window_timer == window_length {
            can_shield = false
            spawn_hit_fx(x, y, vfx_nspecial)
            var arrow = instance_create(x + 32*spr_dir, y - 32, "obj_article2")
                arrow.item = fuse_item
                arrow.hsp = 12*spr_dir
                arrow.vsp = -1
                arrow.spr_dir = spr_dir
                
            var arrow_hbox = create_hitbox(AT_NSPECIAL, 1, arrow.x, arrow.y)
                arrow_hbox.spr_dir = spr_dir
                arrow_hbox.owner_id = arrow.id
                
                arrow.hbox_id = arrow_hbox.id
            switch fuse_item {
                case 1: //homingcart
                arrow_hbox.damage = 5;
                break;
                
                case 2: //hoverstone
                arrow.hsp = 12*spr_dir
                arrow.vsp = 0
                arrow_hbox.damage = 5;
                break;
                
                case 3: //bomb
                arrow_hbox.kb_angle = 75
                arrow_hbox.kb_scale = 0
                break;
                
                case 4: //rocket
                sound_play(sound_get("SpObjRocket_StopEnergy"), false, noone, 0.7)
                sound_play(sound_get("SpObjRocket_RadiateEnergyMoving"), false, noone, 0.2)
                arrow.hsp = 20*spr_dir
                arrow.vsp = 0
                
                arrow_hbox.sound_effect = asset_get("sfx_blow_heavy2")
                arrow_hbox.hit_effect = 304
                
                
                arrow_hbox.kb_value = get_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK);
                arrow_hbox.kb_scale = get_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING);
                arrow_hbox.kb_angle = get_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE);
                arrow_hbox.damage = 6;
                arrow_hbox.hitpause = get_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE);
                arrow_hbox.hitpause_growth = get_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING);
                break;
            }
            
            fuse_item = 0
        }
    } else if window == 3 {
        sound_stop(sound_get("bullet_time"))
    }
    break;
    
    case AT_DATTACK:
    if window == 1 {
        if window_timer == 1 && !hitpause {
            sound_play(asset_get("sfx_forsburn_cape_swipe"))
        }
    }
    break;
    
    case AT_DTILT:
    if window == 1 {
        if window_timer == 1 && !hitpause {
            sound_play(asset_get("sfx_forsburn_cape_swipe"))
        }
    }
    break;
    
    case AT_FTILT:
    if window == 1 {
        if window_timer == 1 && !hitpause {
            sound_play(asset_get("sfx_forsburn_cape_swipe"))
        }
        if window_timer == window_length && !hitpause {
            sound_play(asset_get("sfx_land_light"))
        }
    }
    break;
    
    case AT_FSTRONG:
    if window == 2 {
        if state_timer mod 12 == 0 spawn_base_dust(x - 12*spr_dir, y, "dash", spr_dir)
    }
    if window == 3 {
        if window_timer == 3 && !hitpause sound_play(asset_get("sfx_ori_charged_flame_release"))
        if window_timer == 1 spawn_base_dust(x + 8*spr_dir, y, "dash_start", spr_dir)
    }
    break;
    
    case AT_DSPECIAL:
    
    if window == 2 && window_timer >= 6 && !special_down /*&& !down_down*/ {
        set_window(3)
    }
    
    if window == 1 && window_timer == 1 {
        sound_play(sound_get("ScraBuild_Start_00"), false, noone, 0.7)
    }
    
    if window == 1 && window_timer == window_length {
        sound_play(sfx_ultrahand, true, noone, 0.5)
    }
    
    if window <= 3 {
        item_draw = true
    } else {
        item_draw = false
    }
    
    if window == 1 {
        ultrahand_draw = true
    } else if window == 5 && window_timer == window_length {
        ultrahand_draw = false
    }
    
    //hold
    if window == 2 {
        //shield cancel
        if shield_pressed /*|| (special_pressed && down_down)*/{
            window = 6
            window_timer = 0
            clear_button_buffer(PC_SHIELD_PRESSED)
            clear_button_buffer(PC_SPECIAL_PRESSED)
            sound_play(sound_get("ScraBuild_Cancel_00"), false, noone, 0.7)
            sound_stop(sfx_ultrahand)
        }
        
        //switch items
        /*
        if left_pressed {
            fuse_item--
            if fuse_item == 2 || fuse_item == 6 fuse_item--
        }
        if right_pressed {
            fuse_item++
            if fuse_item == 2 || fuse_item == 6 fuse_item++
        }
        */
        
        if fuse_item <= 0 fuse_item = 4
        if fuse_item >= 5 fuse_item = 1
    }
    
    //slow fall
    if window <= 4 {
        vsp = clamp(vsp, -1000, 4)
        can_move = false
    }
    
    if window <= 2 {
        //moving spawn position
        //item_cur_y_offset += 2*(down_down - up_down)
        //x += 2*(right_down - left_down)
        
        //spawn location
        item_cur_x = x - 140*spr_dir
        item_cur_y = y - 50 + item_cur_y_offset
        //lerping smoothing
        item_draw_x = lerp(item_draw_x, item_cur_x, 0.1)
        item_draw_y = lerp(item_draw_y, item_cur_y, 0.1)
    }
    if window == 3 { //throw lerping
        //spawn location
        item_cur_x = x - 10*spr_dir
        item_cur_y = y - 150
        //lerping smoothing
        item_draw_x = lerp(item_draw_x, item_cur_x, 0.1)
        item_draw_y = lerp(item_draw_y, item_cur_y, 0.1)
    }
    
    if window == 3 && window_timer == window_length { //release
        item_spawn_x = x + 50*spr_dir
        item_spawn_y = y - 100
        var item_throw_mod_x = 1
        var item_throw_mod_y = 1
        if up_down && !down_down {
            item_spawn_y -= 40
            item_throw_mod_y = 1.5
        }
        if down_down && !up_down {
            item_spawn_y += 40
            item_throw_mod_y = 0.5
        }
        if left_down && !right_down {
            item_spawn_x -= 40*spr_dir
            item_throw_mod_x = spr_dir < 0 ? 1.5 : 0.5
        }
        if right_down && !left_down {
            item_spawn_x += 40*spr_dir
            item_throw_mod_x = spr_dir < 0 ? 0.5 : 1.5
        }
        
        switch fuse_item {
            case 1: //cart
            spawn_obj = spawn_item(fuse_item, 3*item_throw_mod_x, -4*item_throw_mod_y, item_spawn_x, item_spawn_y)
            break;
            
            case 2: //hoverstone
            spawn_obj = spawn_item(fuse_item, 7*item_throw_mod_x, -7*item_throw_mod_y, item_spawn_x, item_spawn_y)
            break;
            
            case 3: //bomb
            spawn_obj = spawn_item(fuse_item, 5*item_throw_mod_x, -4*item_throw_mod_y, item_spawn_x, item_spawn_y)
            break;
            
            case 4: //rocket
            spawn_obj = spawn_item(fuse_item, 5*item_throw_mod_x, -4*item_throw_mod_y, item_spawn_x, item_spawn_y)
            break;
        }
        //fuse_item = 0;
        sound_stop(sound_get("ScraBuild_Rope_Base_lp_00"))
        sound_play(sound_get("ScraBuild_Cancel_00"), false, noone, 0.9)
    }
    
    if window >= 4 && window < 6 && instance_exists(spawn_obj) {
        item_draw_x = spawn_obj.x
        item_draw_y = spawn_obj.y
        ultrahand_draw_alpha -= 0.1
    }
    
    if window == 6 {
        ultrahand_draw = false
        ultrahand_draw_alpha -= 0.2
    }
    
    switch fuse_item {
        case 1: item_spr = sprite_get("item_homingcart") break;
        case 2: item_spr = sprite_get("item_hoverstone") break;
        case 3: item_spr = sprite_get("item_bomb") break;
        case 4: item_spr = sprite_get("item_rocket") break;
    }
    break;
    
    case AT_DSPECIAL_2: //recall
    if window == 1 && window_timer == window_length {
        sound_stop(sound_get("rune_search_start"))
        sound_play(sound_get("rune_search_end"))
        
        var recall_item = item_exists() || fuse_arrow_exists()
        if recall_item != undefined {
            if recall_item.recall_cooldown == 0 {
                recall_item.recall_active = !recall_item.recall_active
                if !recall_item.recall_active {
                    recall_item.recall_cooldown = 90
                }
            }
        }
    }
    break;
    
    case AT_NSPECIAL_2: //get_item
    if window == 1 && window_timer == window_length && !hitpause {
        get_item_timer = 1
        sound_stop(sound_get("rune_search_start"))
        sound_play(sound_get("rune_search_end"))
        sound_play(asset_get("mfx_star"))
        
        fuse_item = random_func(0, 4, true)+1
        while fuse_item == fuse_item_old {
            fuse_item -= 1 //decided to keep this in for rng manipulation tech :)
            if fuse_item <= 0 fuse_item = 4
        }
        
        fuse_item_old = fuse_item
        
        switch fuse_item {
            case 1: sound_play(sound_get("SpObj_Chaser_SearchEnemy_02_01"), false, noone, 0.7) break;
            case 2: sound_play(sound_get("SpObj_FloatingStone_OnWindEffect"), false, noone, 0.7) break;
            case 3: sound_play(sound_get("SpObj_TimerBomb_SwitchOn"), false, noone, 0.7) break;
            case 4: sound_play(sound_get("SpObjRocket_StopEnergy"), false, noone, 0.7) break;
        }
    }
    break;
    
    case AT_DAIR:
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_swipe_medium1"))
    }
    break;
    
    case AT_USTRONG:
    move_cooldown[AT_USTRONG] = 20
    if window == 1 && window_timer == 1 {
        sound_play(sfx_ustrong)
    }
    if window == 2 {
        ustrong_distance_y += 4
        if left_down ustrong_distance_x -= 1.5*spr_dir
        if right_down ustrong_distance_x += 1.5*spr_dir
    }
    ustrong_reticle_x = x + (15 + ustrong_distance_x)*spr_dir
    ustrong_reticle_y = y - 100 - ustrong_distance_y
    
    if window == 3 && window_timer == window_length && !hitpause {
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, (ustrong_reticle_x - x)*spr_dir);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, ustrong_reticle_y - y);
        sound_stop(sfx_ustrong)
        sound_play(sound_get("magnesis_hit"))
        spawn_hit_fx(ustrong_reticle_x, ustrong_reticle_y, 305)
        ustrong_draw_alpha = 2
    }
    
    //ustrong lerping
    with oPlayer if id != other.id && totk_ustrong_lerp_id == other.id {
        x = lerp(x, other.ustrong_reticle_x, 0.2)
        y = lerp(y, char_height/2 + other.ustrong_reticle_y, 0.2)
    }
    with oPlayer if id != other.id && totk_ustrong_grabbed_id == other.id {
        if other.window == 4 {
            x = lerp(x, other.ustrong_reticle_x, 0.1)
            y = lerp(y, char_height/2 + other.ustrong_reticle_y, 0.1)
            fall_through = true
            if !free y += 4
        } else if other.window == 5 && other.window_timer == other.window_length {
            take_damage(player, other.player, 8)
            hitpause = false
            var dir = point_direction(other.ustrong_reticle_x, other.ustrong_reticle_y, other.x, other.y)
            vsp = -8*dsin(dir)
            hsp = 8*dcos(dir)
            can_tech = false
            fall_through = true
            hitstop = 0
            if !free y += 6
            free = true
        }
    }
    
    if window >= 4 && !ustrong_grabbing {
        if ustrong_draw_alpha > 0 ustrong_draw_alpha -= 0.15
    }
    
    if window == 5 || window == 6 {
        if ustrong_draw_alpha > 0 ustrong_draw_alpha -= 0.15
    }
    
    if window >= 3 && window < 7 && window != 6 {
        char_height = lerp(char_height, default_height + 68, 0.2)
    }
    break;
    
    case AT_DSTRONG:
    if window == 1 && window_timer == 1 && !hitpause {
        //sound_play(sound_get("Assassin_Junior_MagicA00"))
        sound_play(sound_get("Assassin_Junior_MagicC00"))
    }
    if window == 3 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_zetter_downb"))
        sound_play(asset_get("sfx_ori_energyhit_weak"))
    }
    var earthwake_mult = 50
    if window == 2 {
        if !hitpause && state_timer mod 12 == 6 {
            dstrong_earthwake_dist++
            /*
            var pos_l = x - dstrong_earthwake_dist*earthwake_mult
            var pos_r = x + dstrong_earthwake_dist*earthwake_mult
            if position_meeting(pos_l, y + 2, asset_get("par_block")) || position_meeting(pos_l, y + 2, asset_get("par_jumpthrough")) {
                spawn_hit_fx(pos_l - 13*spr_dir, y, 14)
            }
            if position_meeting(pos_r, y + 2, asset_get("par_block")) || position_meeting(pos_r, y + 2, asset_get("par_jumpthrough")) {
                spawn_hit_fx(pos_r - 13*spr_dir, y, 14)
            }
            */
            var pos = x + spr_dir*dstrong_earthwake_dist*earthwake_mult
            if position_meeting(pos, y + 2, asset_get("par_block")) || position_meeting(pos, y + 2, asset_get("par_jumpthrough")) {
                spawn_hit_fx(pos - 13*spr_dir, y, 14)
            }
        }
    }
    
    if window == 3 && window_timer == window_length && !hitpause {
        if dstrong_earthwake_dist > 1 {
            for (var i = dstrong_earthwake_dist; i > 0; i--) {
                /*
                var pos_l = x - i*earthwake_mult
                var pos_r = x + i*earthwake_mult
                if position_meeting(pos_l, y + 2, asset_get("par_block")) || position_meeting(pos_l, y + 2, asset_get("par_jumpthrough")) {
                    spawn_base_dust(x + 20 - i*earthwake_mult, y, "dash", 1)
                    create_hitbox(AT_DSTRONG, 2, pos_l, y - 7)
                }
                if position_meeting(pos_r, y + 2, asset_get("par_block")) || position_meeting(pos_r, y + 2, asset_get("par_jumpthrough")) {
                    spawn_base_dust(x - 20 + i*earthwake_mult, y, "dash", -1)
                    create_hitbox(AT_DSTRONG, 2, pos_r, y - 7)
                }
                */
                var pos = x + i*spr_dir*earthwake_mult
                if position_meeting(pos, y + 2, asset_get("par_block")) || position_meeting(pos, y + 2, asset_get("par_jumpthrough")) {
                    spawn_base_dust(x + spr_dir*(20 + i*earthwake_mult), y, "dash", -spr_dir)
                    spawn_hit_fx(x + spr_dir*i*earthwake_mult, y, vfx_ascend_ground)
                    create_hitbox(AT_DSTRONG, 2, pos, y - 30)
                    shake_camera(8, 3)
                    break;
                }
            }
        }
    }
    break;
    
    case AT_TAUNT:
    if window == 1 && window_timer == 1 {
        //sound_play(asset_get("sfx_forsburn_cape_swipe"))
    }
    if window == 1 && window_timer == window_length - 6 {
        sound_play(sound_get("Weapon_Sword_Metal_Equip01"))
    }
    if state_timer > 8 && state_timer < 50 {
        char_height = lerp(char_height, default_height + 80, 0.2)
    }
    break;
}

#define spawn_item(i, h, v, spawnx, spawny)
if i <= 2 {
    var obj = instance_create(spawnx, spawny, "obj_article_platform")
} else {
    var obj = instance_create(spawnx, spawny, "obj_article1")
}
obj.item = i
obj.hsp = h*spr_dir
obj.real_hsp = h*spr_dir
obj.vsp = v
obj.real_vsp = v
obj.spr_dir = spr_dir

return obj

#define set_window(w)
window = w;
window_timer = 0;
return;

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

#define item_exists()
var returnid = undefined
with obj_article1 if player_id == other.id && ("totk_item" in self) && totk_item == true returnid = id
with obj_article_platform if player_id == other.id && ("totk_item" in self) && totk_item == true returnid = id
return returnid;

#define fuse_arrow_exists()
var returnid = undefined
with obj_article2 if player_id == other.id && item != 0 && !destroy && !hbox_has_hit returnid = id
return returnid;