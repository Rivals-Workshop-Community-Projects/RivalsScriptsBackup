//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if attack == AT_JAB {
    move_cooldown[AT_JAB] = 30;
}
switch(attack){
    
   case AT_FSPECIAL:
        
        if window == 1 && window_timer == 1 && dest_1 == noone {
            var make = true
            with (obj_article1) {
                if (player_id == other) {
                    make = false
                }
            }
            if (make) {
                instance_create(x + 96 * spr_dir, y, "obj_article1");
            }
        }
        
        break;
        
    
    
    
    
    case AT_USPECIAL:
        
        can_move = 0;
        fall_through = 1;
        
        
        
        // just move upward
        
        if dest_1 == noone{
            if (window == 2){
                vsp = -12;
            }
        }
        
        
        
        // target a destination
        
        else switch(window){
            
            case 1:
                var mid_x = lerp(dest_1.x, dest_2.x, 0.5);
                var mid_y = lerp(dest_1.y, dest_2.y, 0.5);
                
                var dest_1_direction = point_direction(mid_x, mid_y, dest_1.x, dest_1.y);
                var dest_2_direction = point_direction(mid_x, mid_y, dest_2.x, dest_2.y);
                
                if !joy_pad_idle{
                    if abs(angle_difference(joy_dir, dest_1_direction)) < abs(angle_difference(joy_dir, dest_2_direction)){
                        uspecial_target = dest_1;
                    }
                    else{
                        uspecial_target = dest_2;
                    }
                }
                else if (window_timer == 1){
                    uspecial_target = dest_1;
                }
                
                if window_timer != phone_window_end break;
            
            case 2:
                var spd = 25;
                var ang = point_direction(x, y, uspecial_target.x, uspecial_target.y);
                hsp = lengthdir_x(spd, ang);
                vsp = lengthdir_y(spd, ang);
                
                if place_meeting(x, y, uspecial_target){
                    hsp = 0.1;
                    vsp = -short_hop_speed;
                    attack_end();
                    set_state(PS_IDLE_AIR);
                    free = 1;
                    if (should_get_dj == 1){
                            djumps = 0;
                        should_get_dj = 0;
                    }
                }
                
                else if (window_timer == phone_window_end && window == 2){
                    hsp = clamp(hsp, -6, 6);
                    vsp = clamp(vsp, -6, 6);
                    attack_end();
                    set_state(PS_IDLE_AIR);
                    free = 1;
                }
                break;
            
        }
        
        break;
    
    
    
    case AT_DSPECIAL:
        
        if dest_1 != noone && window == 1 && window_timer == phone_window_end{
            for (var i = 0; i <= 1; i += 0.1){
                var hbox_x = round(lerp(dest_1.x, dest_2.x, i));
                var hbox_y = round(lerp(dest_1.y, dest_2.y, i));
                create_hitbox(AT_DSPECIAL, 1, hbox_x, hbox_y);
            }
            sound_play (sound_get( "Connection_terminated" ))
            create_hitbox(AT_DSPECIAL, 2, 
                round(lerp(dest_1.x, dest_2.x, dest_1.car_time / dest_1.car_time_max)),
                round(lerp(dest_1.y, dest_2.y, dest_1.car_time / dest_1.car_time_max))
                );
        }
        
        if dest_1 != noone && window == 2 && window_timer == phone_window_end{
            dest_1.should_die = 1;
            dest_2.should_die = 1;
        }
        
        break;
    
    
    
    case AT_DTILT:
    
        if (window == 3 && window_timer == phone_window_end){
            dtilt_end = 1;
        }
        
        break;
    
    
    
    case AT_TAUNT:
        
        set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9 * taunt_down);
        
        break;
    
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 120;
}

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL){
    vsp = min(vsp, 1);
    hsp = min(hsp, 1);
    can_fast_fall = false;   
}

if (attack == AT_NSPECIAL && djumps == 1 && should_get_dj == 1) {
    djumps = 0;
    should_get_dj = 0;
}

if (attack == AT_BAIR){
    if (window == 2){
    can_fast_fall = false;
    can_move = false;
}
}

if (attack == AT_DATTACK && has_hit && window == 3){
    can_jump = true;
}

if has_rune("H"){
    if (attack == AT_DATTACK){
    can_jump = true;
    }
}



///all this is for aerial strongs/aerial crouch
if attack == AT_EXTRA_1 && window == 2 && !down_down {
    window = 3;
    window_timer = 1;
}
if attack == AT_EXTRA_1 {
    vsp = 0;
    can_jump = true;
    can_move = false;
    if attack_down {
        set_attack( AT_DTILT );
    } else if strong_down {
        set_attack( AT_DSTRONG);
    } else if special_down {
        set_attack(AT_DSPECIAL);
    } else if shield_down{
        free = false;
        set_state(PS_PARRY);
    }
}

if attack == AT_DSTRONG || attack == AT_DTILT && window == 1 || attack == AT_DTILT && window == 2{
    vsp = 0;
}

if has_rune("N"){
    
    set_window_value(AT_FSTRONG, 1, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 3, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 4, AG_WINDOW_INVINCIBILITY, 1);
    
    set_window_value(AT_FSTRONG, 1, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 3, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 4, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_FSTRONG, 6, AG_WINDOW_INVINCIBILITY, 1);
    
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_DSTRONG, 2, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_DSTRONG, 3, AG_WINDOW_INVINCIBILITY, 1);
    set_window_value(AT_DSTRONG, 4, AG_WINDOW_INVINCIBILITY, 1);
}

if has_rune("O"){
    set_hitbox_value(AT_JAB, 1, HG_ANGLE, 320);
}

if (attack == 49) {
    can_fast_fall = false;
    can_move = false;
    if (window == 1 && window_timer == 3){
        sound_play(sound_get("PARRY"))

    }

    if (window == 3 && window_timer == 1 && has_hit_player) {
        create_deathbox(
            has_hit_id.x, // x
            has_hit_id.y, // y
            100, // w
            200, // h
            has_hit_id.player, // player
            true, // free
            1, // shape
            3, // lifespan
            2 // bg_type
        );

    }
    if (window == 3 && window_timer == 1 && has_hit_player){
    sound_play(sound_get("baby"))


    } 
    if window == 3 && window_timer < 20 && has_hit_player{
        shake_camera( 50, 1)
    }

if window == 3 && window_timer == 15 && has_hit_player{
     sound_play(sound_get("arrival"))
    }

if window < 3{
    vsp = 0;
    hsp = 0;
}
if window == 3{
    vsp = 1.4
}
}