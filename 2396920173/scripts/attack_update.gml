// attack_update

if !(special_pressed && joy_pad_idle) && attack != 49 {
    fs_force_fs = false;
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_UTILT {
    if window == 1 && window_timer == 1 {
       piece = "B";
    }
}

if attack == AT_DAIR {
    if window == 1 && window_timer == 1 {
       piece = "R";
    }
}

if attack == AT_DATTACK {
    if has_hit {
        can_jump = true;
    }
}

if attack == AT_DSTRONG {
    if window == 1 && window_timer == 1 {
       destroy_piece();
    }
    if window == 5 && window_timer == get_window_value(AT_DSTRONG, window, AG_WINDOW_LENGTH) {
        spawn_piece(x + 13*spr_dir, y, "R")
    }
}

if attack == AT_FSTRONG {
    if window == 1 && window_timer == 1 {
       destroy_piece();
    }
    if window == 3 && window_timer == get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH) {
        var p = spawn_piece(x + 106*spr_dir, y, "P")
    }
    if window == 4 && window_timer == 1 {
        var hitbox = create_hitbox(AT_FTHROW, 1, x + 106*spr_dir, y);
            hitbox.owner = piece_id;
    }
}

if attack == AT_USTRONG {
    if window == 2 && window_timer == get_window_value(AT_USTRONG, window, AG_WINDOW_LENGTH) {
        destroy_piece();
        var _p = spawn_piece(x, y - 60, "P")
            if has_rune("E") {
                _p.vsp = -(strong_charge/3 + 18);
            } else {
                _p.vsp = -(strong_charge/6 + 12);
            }
            
        var hitbox = create_hitbox(AT_FTHROW, 1, x, y - 60);
            hitbox.owner = _p;
            hitbox.active_max = 60
            hitbox.is_ustrong = true;
            hitbox.damage = 10;
            hitbox.kbg = 0.7;
    }
}

if attack == AT_USPECIAL {
    can_move = false;
    if window != 4 {
        hsp *= 0.95;
        vsp *= 0.95;
    } else {
        hsp *= 0.8;
        vsp *= 0.8;
    }
    
    if window == 1 && window_timer == 1 {
        pawn_grounded = false;
        input_dir = 0;
        uspec_dir = 0;
        prev_uspec_dir = 0;
        set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -char_height/2);
        set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, char_height);
        reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
        reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
    }
    
    if window == 1 || window == 2 {
        input_dir = joy_dir;
        if joy_dir == 0 {
            input_dir += 1;
        } else if joy_dir > 270 || (joy_dir >= 90 && joy_dir <= 180) {
            input_dir -= spr_dir;
        } else if joy_dir < 90 || (joy_dir > 180 && joy_dir <= 270) {
            input_dir += spr_dir;
        }
        //print_debug(string(input_dir))
        switch piece {
            case "P": uspec_dir = 0 break;
            case "N": case "R": uspec_dir = (round(input_dir/90)-1)*2 break;
            case "B": uspec_dir = (round(((input_dir+45) mod 360)/90))*2 - 3 break;
            case "K": case "Q": uspec_dir = round(input_dir/45) - 2 break;
        }
        if uspec_dir < 0 uspec_dir+= 8;
        if prev_uspec_dir != uspec_dir {
            sound_play(asset_get("mfx_input_back"))
        }
        prev_uspec_dir = uspec_dir;
        
        if piece == "P" && !free {
            //set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
            pawn_grounded = true;
        } else {
            //reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
        }
    }
    
    if window == 2 && !special_down {
        window++;
        window_timer = 0;
        var _angle = (uspec_dir+2)*45;
        var _angley = dsin(_angle);
        _angley += 0.6*sign(_angley)
        if sign(_angley == 0) {
            _angley += 0.6;
        }
        var _anglex = dcos(_angle)*0.5;
        
        var _angle_final = darctan2(_angley, _anglex)
        set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, _angle_final);
        if _angle_final < 0 {
            set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
        }
    }
    
    if window == 3 {
        outline_color = [255, 255, 255];
        init_shader();
        outline_color = [0, 0, 0];
        
        if window_timer == 1 && !hitpause {
            uspec_move_num++;
        }
        var launch_angle = uspec_dir*45;
        var launch_spd = 15;
        switch piece {
            case "P": launch_spd = 12 break;
            case "N": launch_spd = 10 break;
            case "B": launch_spd = 12 break;
            case "R": launch_spd = 15 break;
            case "K": launch_spd = 10 break;
            case "Q": launch_spd = 15 break;
        }
        
        if piece == "P" && pawn_grounded {
            launch_spd += 6
        }
        
        if window_timer <= 4 {
            if !hitpause {
                hsp = -launch_spd*dsin(launch_angle);
                vsp = -launch_spd*dcos(launch_angle);
            }
            if piece_id != undefined && !hitpause && !piece_id.hitpause && window_timer == 1 && !piece_id.perform_attack {
                piece_id.hsp = -launch_spd*dsin(launch_angle)*1.2;
                piece_id.vsp = -launch_spd*dcos(launch_angle)*1.2;
                piece_id.has_hit = false;
            }
        }
        
        if get_gameplay_time() mod 3 == 0 {
            for (var i = array_length(uspec_afterimages) - 1; i >= 0; i--) {
                if i == 0 {
                    uspec_afterimages[i] = [x,y,20];
                } else {
                    uspec_afterimages[i] = uspec_afterimages[i - 1];
                }
            }
            if piece_id != undefined {
                piece_id.spawn_afterimage = true;
            }
        }
    }
    /*
    if piece == "N" && ((window == 3 && window_timer == get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)) || (window == 4 && window_timer < 6)) {
        if uspec_move_num == 1 && special_down {
            window = 2;
            window_timer = 0;
        }
    }
    */
    
    if window == 4 {
        outline_color = [0, 0, 0];
        init_shader();
        
        if window_timer == get_window_value(AT_USPECIAL, window, AG_WINDOW_LENGTH) {
            if !free || has_rune("C") { //USPECIAL never puts you into pratfall.
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
            }
            if !(piece == "N" && uspec_move_num <= 1) {
                move_cooldown[AT_USPECIAL] = 10000;
            } else {
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
            }
        }
    }
}

//fspecial variants

//Knight
if attack == AT_UTHROW {
    move_cooldown[AT_UTHROW] = 20;
    if has_rune("L") { //All FSPECIAl/DSPECIAL attacks have been enhanced.
        if window == 3 && (window_timer == 1 || window_timer == 3) {
            var hbox1 = create_hitbox(AT_UTHROW, 1, x, y - 30)
                hbox1.hsp = spr_dir*12;
        }
    }
    
    if window == 2 && window_timer > 6 {
        if special_pressed && !down_down {
            window = 3;
            window_timer = 0;
            hsp -= 12*spr_dir;
            vsp -= 2;
        }
    }
    
    if window == 3 {
        can_move = false;
    }
}

//Pawn
if attack == AT_DTHROW {
    if window == 3 {
        piece = "Q";
        if !queen_active {
            queen_timer = queen_timer_max;
        }
        queen_active = true;
    }
    
    if has_rune("L") { //All FSPECIAl/DSPECIAL attacks have been enhanced.
        if window_timer mod 2 == 1 {
            create_hitbox(AT_DTHROW, 1, x, 500);
        }
    }
}

if !has_hit {
    can_increment = true;
}

if piece == "P" || attack == AT_FSTRONG || has_rune("N") { //All piece type attacks can fill up the Pawn meter.
    if has_hit && hitstop == hitstop_full - 1 && can_increment {
        if pawn_meter < 7 {
            pawn_meter++;
            pawn_move_timer = 0;
        }
        can_increment = false;
    }
}

//Queen
if attack == AT_FSPECIAL_2 {
    if has_rune("L") { //All FSPECIAl/DSPECIAL attacks have been enhanced.
        var targetplayer = undefined;
        with oPlayer {
            if id != other.id {
                targetplayer = id;
            }
        }
        
        if targetplayer != undefined {
            laser_angle = darctan2(y - targetplayer.y - 60, spr_dir*(targetplayer.x - x))
        }
    }
    if window == 2 {
        can_move = false;
        if has_rune("L") var num_hitboxes = 50 //All FSPECIAl/DSPECIAL attacks have been enhanced.
        else var num_hitboxes = 15;
        var dist = 30;
        for (var i = 0; i < num_hitboxes; i++) {
            var startx = x+(28 + dist*i*dcos(laser_angle))*spr_dir;
            var starty = y-90 - dist*i*dsin(laser_angle);
            create_hitbox(AT_FSPECIAL_2, 1, floor(startx), floor(starty))
        }
    } else if window == 3 {
        outline_color = [0,0,0]
        init_shader()
        pawn_meter = pawn_meter_default;
    }
    if window == 6 {
        piece = "P"
        queen_active = false;
        outline_color = [0,0,0]
        init_shader()
        queen_timer = 0;
    }
}

//Rook
if attack == AT_NSPECIAL_2 {
    if window == 1 {
        if window_timer == get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH) {
            rook_cannon = [x, y - 30, 0, 0]
        } else {
            rook_cannon = undefined;
        }
    }
    if window != 1 && window != 4 {
        rook_cannon[0] = x
        rook_cannon[1] = y - 30
    }
    if window == 2 {
        if window_timer > 6 && special_pressed && !down_down {
            window = 3;
            window_timer = 0;
        }
        
        if left_down && rook_cannon[2] < 90 {
            rook_cannon[2] += 2;
            if window_timer mod 5 == 0 {
                sound_play(asset_get("sfx_propeller_dagger_loop"))
            }
        } else if right_down && rook_cannon[2] > -90 {
            rook_cannon[2] -= 2;
            if window_timer mod 5 == 0 {
                sound_play(asset_get("sfx_propeller_dagger_loop"))
            }
        }
    }
    
    if window == 3 {
        rook_cannon[3] = ceil(window_timer/4);
        var proj_spd = 12;
        if window_timer == 5 {
            var offset = 30;
            var Rproj = create_hitbox(AT_NSPECIAL_2, 1, x - round(offset*dsin(rook_cannon[2])), y-30 - round(offset*dcos(rook_cannon[2])));
                Rproj.hsp = -proj_spd*dsin(rook_cannon[2])
                Rproj.vsp = -proj_spd*dcos(rook_cannon[2])
                Rproj.grav = 0.4;
                var dir = -sign(Rproj.hsp)
                if dir == 0 dir = spr_dir;
                Rproj.spr_dir = dir
        }
    }
    
    if window == 4 {
        rook_cannon[2] *= 0.6;
        rook_cannon[1] += 1;
        if window_timer == get_window_value(AT_NSPECIAL_2, window, AG_WINDOW_LENGTH) {
            rook_cannon = undefined
        }
    }
}

//Bishop
if attack == AT_DSPECIAL_2 {
    can_move = false;
    if window == 1 {
        if state_timer == 1 {
            set_num_hitboxes(AT_DSPECIAL_2, 1);
            vsp *= 0.5;
            hsp *= 0.5;
            //reset_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE);
            target_player = undefined;
            missile_angle = 0;
            draw_missile = false;
            sound_play(sound_get("rune_search_start"))
        }
        if has_rune("L") var incrementvar = 6; //All FSPECIAl/DSPECIAL attacks have been enhanced.
        else var incrementvar = 3;
        
        if state_timer < 60 {
            range_dist += incrementvar;
        } else if state_timer < 120 {
            range_dist -= incrementvar;
        } else {
            window = 4;
            window_timer = 0;
            sound_play(sound_get("rune_search_end"))
            sound_stop(sound_get("rune_search_start"))
        }
        if special_pressed && !down_down && state_timer > 6 && target_player != undefined {
            window = 2;
            window_timer = 0;
            draw_missile = true;
            missile_angle = point_direction(x, y - 30, target_player.x, target_player.y) + 90
            sound_stop(sound_get("rune_search_start"))
        }
    }
    
    if draw_missile {
        missile_timer++;
    } else {
        missile_timer = 0;
    }
    
    if window == 2 {
        range_dist = 0;
        if window_timer mod 8 == 0 {
            sound_play(sound_get("beep"))
        }
    }
    
    if target_player == undefined {
        with oPlayer {
            if id != other.id && distance_to_point(other.x, other.y - other.char_height/2) < other.range_dist {
            //if id != other.id && collision_circle(other.x, other.y - 30, other.range_dist, hurtboxID, false, false) {
                other.target_player = id;
                draw_reticle = true;
            }
        }
    }
    
    if window == 3 {
        with pHitBox if player_id == other.id && attack == AT_DSPECIAL_2 && hbox_num == 1 {
            if sign(other.hsp) != other.spr_dir {
                hit_flipper = 5;
            } else {
                hit_flipper = 0;
            }
        }
        fall_through = true;
        if has_hit {
            //set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 0);
            window = 4;
            window_timer = 0;
            hsp = 0;
            vsp = 0;
        } else if distance_to_point(target_player.x, target_player.y) < 5 && window_timer > 1 {
            //sound_play(asset_get("sfx_ell_fist_explode"));
            //spawn_hit_fx(x, y, 143);
            destroy_hitboxes();
            window = 4;
            window_timer = 0;
            prat_land_time = 40;
        }
        var spd = 12;
        if target_player != undefined {
            missile_angle = point_direction(x, y, target_player.x, target_player.y) + 90
            hsp = spd*dsin(missile_angle)
            vsp = spd*dcos(missile_angle)
        } else {
            vsp = -spd;
            missile_angle = 180;
        }
        
        if missile_timer mod 5 == 0 spawn_hit_fx(x, y - 30, proj_particle);
        
        if missile_timer > 40 {
            window = 4;
            window_timer = 0;
        }
    }
    
    if window == 4 {
        hsp *= 0.9;
        vsp *= 0.9;
        draw_missile = false;
        range_dist = 0;
        missile_timer = 0;
        missile_angle = 0;
        if target_player != undefined {
            target_player.draw_reticle = false;
        }
    }
}

if king_armour && !(/*attack == AT_JAB || attack == AT_NAIR ||*/ (has_rune("J") && (attack == AT_FSTRONG || attack == AT_DSTRONG))) { //Knight has 2 extra jumps, and King retains FSPECIAL super armour on FSTRONG and DSTRONG.
    king_armour = false;
    super_armor = false;
    soft_armor = 0;
    armour_cooldown = 120;
    if state_timer == 1 {
        //sound_play(asset_get("sfx_metal_hit_weak"))
    }
}

if attack == AT_NAIR {
    if has_rune("I") { //NAIR can be held down to extend the multihits lifetime.
        if attack_down && (window == 2 || window == 3 || window == 4) && window_timer == 8 {
            attack_end()
            window_timer = 4;
        }
    }
}

if attack == AT_TAUNT {
    if (window == 1 || window == 3) && window_timer == 1 && !hitpause {
        sound_play(asset_get("mfx_star"))
        spawn_hit_fx(x, y - 30, 144);
    }
    
    if window == 2 && window_timer mod 12 == 1 {
        sound_play(sound_get("move"), false, noone, 0.8)
    }
    move_cooldown[AT_TAUNT] = 30;
}

//final smash
if attack == 49 {
    super_armor = true;
    hurtboxID.sprite_index = get_attack_value(49, AG_HURTBOX_SPRITE);
    piece = 'P'
    fall_through = true;
    can_move = false;
    
    if window == 1 && window_timer mod 4 == 1 {
        create_hitbox(49, 10, x + ceil(window_timer/4)*10, y);
        create_hitbox(49, 10, x - ceil(window_timer/4)*10, y);
    }
    if window == 2 && window_timer mod 4 == 1 && window_timer < 19 && !hitpause {
        sound_play(asset_get("sfx_swipe_weak1"));
    }
    
    if window == 3 && !free {
        fs_force_fs = false;
        destroy_hitboxes();
        sound_play(asset_get("sfx_kragg_rock_shatter"))
        sound_play(asset_get("sfx_kragg_rock_pillar"))
        sound_play(asset_get("sfx_swipe_heavy2"))
        window++;
        window_timer = 0;
        shake_camera(10, 15)
    }
    
    if (window == 3 && window_timer < 20) {
        if left_down && !right_down x -= 3;
        if !left_down && right_down x += 3;
    }
    if window == 3 char_height = 150;
    if window == 8 user_event(0);
    
    if has_rune("M") visible = true; //When Pawn meter is full, press TAUNT to unleash a Megachessatron (only once per game).
}

#define destroy_piece
if piece_id != undefined && instance_exists(piece_id) {
    if piece_id.target_player != undefined && instance_exists(piece_id.target_player) {
        piece_id.target_player.draw_reticle = false;
    }
    piece_id.target_player = undefined;
    instance_destroy(piece_id);
    exit;
}

#define spawn_piece(x, y, piece)
destroy_piece();
var p = instance_create(x, y, "obj_article1")
    p.player_id = id
    p.piece = piece
    p.spr_dir = spr_dir
    p.hsp = hsp;
    p.vsp = vsp;
    if piece == "P" {
        p.sprite_index = sprite_get("idle")
    } else {
        p.sprite_index = sprite_get(piece + "idle")
    }
    p.mask_index = sprite_get(piece + "hurtbox")
piece_id = p;
switch piece {
    case "P": p.hp = hp_P; break;
    case "B": p.hp = hp_B; break;
    case "N": p.hp = hp_N; break;
    case "K": p.hp = hp_K; break;
    case "R": p.hp = hp_R; break;
    case "Q": p.hp = hp_Q; break;
}
return p;


