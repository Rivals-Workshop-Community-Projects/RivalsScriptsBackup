//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
window_length = get_window_value(attack,window,AG_WINDOW_LENGTH);

if !(attack == AT_FTILT || attack == AT_FSPECIAL) && free && has_touched_grass && !hitpause { //movement boost for all aerials
    if abs(right_down - left_down) {
        hsp = (right_down - left_down) * walk_speed * 1.25;
    }
}

//no more jab parry immunity code because dan actually fixed his game
if(attack == AT_JAB){
    if window == 2 {//clear buffer cause jab cancel is cringe otherwise
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
}

//min min
if (attack == AT_FTILT){
    if window == 1 && window_timer == 1 {
        clear_button_buffer(PC_JUMP_PRESSED);
    }
    if (has_touched_grass) {
        if abs(right_down - left_down) {
            hsp = (right_down - left_down) * walk_speed * 1.25;
        }
    } else {
        if free {
            hsp += (right_down - left_down) * 0.05;
        } else {
            hsp += (right_down - left_down) * 1;
        }
        hsp = clamp(hsp,walk_speed*-1,walk_speed);
    }
    can_wall_jump = true;
    //hsp = clamp(hsp,dash_speed*-1,dash_speed);
    if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && ((!free) || (free && djumps < max_djumps)) && fspec_jump_timer == 0 && fspec_jumpstart_timer == 0 {
        if free {
            djumps += 1;
            vsp = jump_speed*-1;
            fspec_jump_timer = 6;
            spawn_base_dust(x, y, "djump");
            sound_play(asset_get("sfx_jumpair"));
        }else{
            if window == 3 { //if post-throw do the jumpstart
                fspec_jumpstart = true;
                fspec_jumpstart_timer = 0;
            } else { //else just jump
                vsp = jump_speed*-1;
                fspec_jump_timer = 6;
                spawn_base_dust(x, y, "jump");
                sound_play(asset_get("sfx_jumpground"));
            }
        }
        clear_button_buffer(PC_JUMP_PRESSED);
    }
    if window == 3 {
        if window_timer >= 6 {
            if special_pressed && (up_down or up_pressed){
                 set_attack(AT_USPECIAL);
            } else if special_pressed && move_cooldown[AT_FSPECIAL] == 0 {
                axes_num -= 1;
                set_attack(AT_FSPECIAL);
            }/* else if (left_strong_pressed or right_strong_pressed) && move_cooldown[AT_FSTRONG] == 0 {
                axes_num -= 1;
                set_attack(AT_FSTRONG);
            }*/
        }
        if window_timer >= 12 {
            fspec_walk_timer += 1;
        }
        //post axe throw jump has startup & anim
        //idk if pre-throw will have one cause there isn't a jump anim with both axes + it might be bad for readability
        if fspec_jumpstart { 
            fspec_jumpstart_timer += 1;
        }
        if fspec_jumpstart_timer == 5 {
            fspec_jumpstart = false;
            fspec_jumpstart_timer = 0;
            vsp = jump_speed*-1;
            fspec_jump_timer = 6;
            spawn_base_dust(x, y, "jump");
            sound_play(asset_get("sfx_jumpground"));
        }
    }
     //same applies to landing
    if prev_free != free && !free {
        if window == 3{
            fspec_land_timer = 8;
        }
        sound_play(asset_get("sfx_land_med"));
        spawn_base_dust(x, y, "land");
    }
    if fspec_land_timer > 0 {
        fspec_land_timer -= 1;
    }
    //hurtbox
    if free {
        hurtboxID.sprite_index = sprite_get("ftilt_air_hurt");
    } else if fspec_jumpstart {
        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
    } else if fspec_land_timer > 0 {
        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
    } else if hsp != 0 {
        if window_timer >= 12 {
            hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
        } else {
            hurtboxID.sprite_index = sprite_get("ftilt_walking_hurt");
        }
    } else {
        hurtboxID.sprite_index = sprite_get("ftilt_hurt");
    }
}

if (attack == AT_FSPECIAL){
    if window == 1 && window_timer == 1 {
        clear_button_buffer(PC_JUMP_PRESSED);
    }
    can_wall_jump = true;
    /*
    if free { //no charge in the air
        set_attack_value(AT_FSPECIAL,AG_STRONG_CHARGE_WINDOW,10);
    } else {
        set_attack_value(AT_FSPECIAL,AG_STRONG_CHARGE_WINDOW,1);
    }
    
    //strong charge
    strong_down = special_down;
    if smash_charging {
        fspecial_charging = true;
    }
    */
    
    //movement if not charging
    if !(fspecial_charging && window < 4) {
        //schmove
        if (has_touched_grass) {
            if abs(right_down - left_down) {
                hsp = (right_down - left_down) * walk_speed * 1.25;
            }
        } else {
            if free {
                hsp += (right_down - left_down) * 0.05;
            } else {
                hsp += (right_down - left_down) * 1;
            }
            hsp = clamp(hsp,walk_speed*-1,walk_speed);
        }
        //hsp = clamp(hsp,dash_speed*-1,dash_speed);
        //jump
        if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && ((!free) || (free && djumps < max_djumps)) && fspec_jump_timer == 0 && fspec_jumpstart_timer == 0 {
            if free {
                djumps += 1;
                vsp = jump_speed*-1;
                fspec_jump_timer = 6;
                spawn_base_dust(x, y, "djump");
                sound_play(asset_get("sfx_jumpair"));
            }else{
                if window == 4 { //if post-throw do the jumpstart
                    fspec_jumpstart = true;
                    fspec_jumpstart_timer = 0;
                } else { //else just jump
                    vsp = jump_speed*-1;
                    fspec_jump_timer = 6;
                    spawn_base_dust(x, y, "jump");
                    sound_play(asset_get("sfx_jumpground"));
                }
            }
            clear_button_buffer(PC_JUMP_PRESSED);
        }
        //platdrop
        if (down_hard_pressed || (down_down && free)) {
            fall_through = true;
            if !free { //this cause otherwise it only works if the player is in the air
                y += 1;
            }
        }
    }
    if window == 4 && ((window_timer >= 6 && !fspecial_charging) or (window_timer >= 18 && fspecial_charging)) {
        if special_pressed && (up_down or up_pressed){
            set_attack(AT_USPECIAL);
        } else if attack_pressed && move_cooldown[AT_FTILT] == 0 {
            axes_num -= 1;
            set_attack(AT_FTILT);
        }/* else if (left_strong_pressed or right_strong_pressed) && move_cooldown[AT_FSTRONG] == 0 {
            axes_num -= 1;
            set_attack(AT_FSTRONG);
        }*/
    }
    if window == 4 && window_timer >= 20 {
        fspec_walk_timer += 1;
    }
    //post axe throw jump has startup & anim
    //idk if pre-throw will have one cause there isn't a jump anim with both axes + it might be bad for readability
    if window == 4 && fspec_jumpstart { 
        fspec_jumpstart_timer += 1;
    }
    if fspec_jumpstart_timer == 5 {
        fspec_jumpstart = false;
        fspec_jumpstart_timer = 0;
        vsp = jump_speed*-1;
        fspec_jump_timer = 6;
        spawn_base_dust(x, y, "jump");
        sound_play(asset_get("sfx_jumpground"));
    }
    //same applies to landing
    if prev_free != free && !free {
        if window == 4{
            fspec_land_timer = 8;
        }
        sound_play(asset_get("sfx_land_med"));
        spawn_base_dust(x, y, "land");
    }
    if fspec_land_timer > 0 {
        fspec_land_timer -= 1;
    }
    //hurtbox
    if fspecial_charging && hsp == 0 && !free {
        hurtboxID.sprite_index = sprite_get("fspecial_charged_hurt");
    } else if free {
        hurtboxID.sprite_index = sprite_get("fspecial_air_hurt");
    } else if fspec_jumpstart {
        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
    } else if fspec_land_timer > 0 {
        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
    } else if hsp != 0 {
        if window_timer >= 20 {
            hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
        } else {
            hurtboxID.sprite_index = sprite_get("fspecial_walking_hurt");
        }
    } else {
        hurtboxID.sprite_index = sprite_get("fspecial_hurt");
    }
}
//red throws
if (attack == AT_FSPECIAL_RED){
    if window == 1 && window_timer == 1 {
        clear_button_buffer(PC_JUMP_PRESSED);
    }
    can_wall_jump = true;
    /*
    if free { //no charge in the air
        set_attack_value(AT_FSPECIAL_RED,AG_STRONG_CHARGE_WINDOW,10);
    } else {
        set_attack_value(AT_FSPECIAL_RED,AG_STRONG_CHARGE_WINDOW,1);
    }
    
    strong_down = special_down;
    if smash_charging {
        fspecial_charging = true;
    }
    */
    
    if !(fspecial_charging && window < 4) {
        if (has_touched_grass) {
            if abs(right_down - left_down) {
                hsp = (right_down - left_down) * walk_speed * 1.25;
            }
        } else {
           if free {
                hsp += (right_down - left_down) * 0.05;
            } else {
                hsp += (right_down - left_down) * 1;
            }
            hsp = clamp(hsp,walk_speed*-1,walk_speed);
        }
        //hsp = clamp(hsp,dash_speed*-1,dash_speed);
        //jump
        if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && ((!free) || (free && djumps < max_djumps)) && fspec_jump_timer == 0 && fspec_jumpstart_timer == 0 {
            if free {
                djumps += 1;
                vsp = jump_speed*-1;
                fspec_jump_timer = 6;
                spawn_base_dust(x, y, "djump");
                sound_play(asset_get("sfx_jumpair"));
            }else{
                if window == 4 { //if post-throw do the jumpstart
                    fspec_jumpstart = true;
                    fspec_jumpstart_timer = 0;
                } else { //else just jump
                    vsp = jump_speed*-1;
                    fspec_jump_timer = 6;
                    spawn_base_dust(x, y, "jump");
                    sound_play(asset_get("sfx_jumpground"));
                }
            }
            clear_button_buffer(PC_JUMP_PRESSED);
        }
        //platdrop
        if (down_hard_pressed || (down_down && free)) {
            fall_through = true;
            if !free { //this cause otherwise it only works if the player is in the air
                y += 1;
            }
        }
    }
    if window == 4 && ((window_timer >= 8 && !fspecial_charging) or (window_timer >= 20 && fspecial_charging)) {
        if special_pressed && (up_down or up_pressed){
            set_attack(AT_USPECIAL);
        } else if attack_pressed && move_cooldown[AT_FTILT] == 0 {
            axes_num -= 1;
            set_attack(AT_FTILT);
        }/* else if (left_strong_pressed or right_strong_pressed) && move_cooldown[AT_FSTRONG] == 0 {
            axes_num -= 1;
            set_attack(AT_FSTRONG);
        }*/
    }
    if window == 4 && window_timer >= 20 {
        fspec_walk_timer += 1;
    }
    //post axe throw jump has startup & anim
    //idk if pre-throw will have one cause there isn't a jump anim with both axes + it might be bad for readability
    if window == 4 && fspec_jumpstart { 
        fspec_jumpstart_timer += 1;
    }
    if fspec_jumpstart_timer == 5 {
        fspec_jumpstart = false;
        fspec_jumpstart_timer = 0;
        vsp = jump_speed*-1;
        fspec_jump_timer = 6;
        spawn_base_dust(x, y, "jump");
        sound_play(asset_get("sfx_jumpground"));
    }
    //same applies to landing
    if prev_free != free && !free {
        if window == 4{
            fspec_land_timer = 8;
        }
        sound_play(asset_get("sfx_land_med"));
        spawn_base_dust(x, y, "land");
    }
    if fspec_land_timer > 0 {
        fspec_land_timer -= 1;
    }
    //hurtbox
    if fspecial_charging && hsp == 0 && !free {
        hurtboxID.sprite_index = sprite_get("throwred_charged_hurt");
    } else if free {
        hurtboxID.sprite_index = sprite_get("throwred_air_hurt");
    } else if fspec_jumpstart {
        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
    } else if fspec_land_timer > 0 {
        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
    } else if hsp != 0 {
        if window_timer >= 20 {
            hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
        } else {
            hurtboxID.sprite_index = sprite_get("throwred_walking_hurt");
        }
    } else {
        hurtboxID.sprite_index = sprite_get("throwred_hurt");
    }
}

//blue throws
if (attack == AT_FSPECIAL_BLUE){
    if window == 1 && window_timer == 1 {
        clear_button_buffer(PC_JUMP_PRESSED);
    }
    can_wall_jump = true;
    /*
    if free { //no charge in the air
        set_attack_value(AT_FSPECIAL_BLUE,AG_STRONG_CHARGE_WINDOW,10);
    } else {
        set_attack_value(AT_FSPECIAL_BLUE,AG_STRONG_CHARGE_WINDOW,1);
    }
    
    strong_down = special_down;
    if smash_charging {
        fspecial_charging = true;
    }
    */
    
    if !(fspecial_charging && window < 4) {
        if (has_touched_grass) {
            if abs(right_down - left_down) {
                hsp = (right_down - left_down) * walk_speed * 1.25;
            }
        } else {
            if free {
                hsp += (right_down - left_down) * 0.05;
            } else {
                hsp += (right_down - left_down) * 1;
            }
            hsp = clamp(hsp,walk_speed*-1,walk_speed);
        }
        //hsp = clamp(hsp,dash_speed*-1,dash_speed);
        //jump
        if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && ((!free) || (free && djumps < max_djumps)) && fspec_jump_timer == 0 && fspec_jumpstart_timer == 0 {
            if free {
                djumps += 1;
                vsp = jump_speed*-1;
                fspec_jump_timer = 6;
                spawn_base_dust(x, y, "djump");
                sound_play(asset_get("sfx_jumpair"));
            }else{
                if window == 4 { //if post-throw do the jumpstart
                    fspec_jumpstart = true;
                    fspec_jumpstart_timer = 0;
                } else { //else just jump
                    vsp = jump_speed*-1;
                    fspec_jump_timer = 6;
                    spawn_base_dust(x, y, "jump");
                    sound_play(asset_get("sfx_jumpground"));
                }
            }
            clear_button_buffer(PC_JUMP_PRESSED);
        }
        //platdrop
        if (down_hard_pressed || (down_down && free)) {
            fall_through = true;
            if !free { //this cause otherwise it only works if the player is in the air
                y += 1;
            }
        }
    }
    if window == 4 && ((window_timer >= 6 && !fspecial_charging) or (window_timer >= 18 && fspecial_charging)) {
        if special_pressed && (up_down or up_pressed){
            set_attack(AT_USPECIAL);
        } else if attack_pressed && move_cooldown[AT_FTILT] == 0 {
            axes_num -= 1;
            set_attack(AT_FTILT);
        }/* else if (left_strong_pressed or right_strong_pressed) && move_cooldown[AT_FSTRONG] == 0 {
            axes_num -= 1;
            set_attack(AT_FSTRONG);
        }*/
    }
    if window == 4 && window_timer >= 20 {
        fspec_walk_timer += 1;
    }
    //post axe throw jump has startup & anim
    //idk if pre-throw will have one cause there isn't a jump anim with both axes + it might be bad for readability
    if window == 4 && fspec_jumpstart { 
        fspec_jumpstart_timer += 1;
    }
    if fspec_jumpstart_timer == 5 {
        fspec_jumpstart = false;
        fspec_jumpstart_timer = 0;
        vsp = jump_speed*-1;
        fspec_jump_timer = 6;
        spawn_base_dust(x, y, "jump");
        sound_play(asset_get("sfx_jumpground"));
    }
    //same applies to landing
    if prev_free != free && !free {
        if window == 4{
            fspec_land_timer = 8;
        }
        sound_play(asset_get("sfx_land_med"));
        spawn_base_dust(x, y, "land");
    }
    if fspec_land_timer > 0 {
        fspec_land_timer -= 1;
    }
    //hurtbox
    if fspecial_charging && hsp == 0 && !free {
        hurtboxID.sprite_index = sprite_get("throwblue_charged_hurt");
    } else if free {
        hurtboxID.sprite_index = sprite_get("throwblue_air_hurt");
    } else if fspec_jumpstart {
        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
    } else if fspec_land_timer > 0 {
        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
    } else if hsp != 0 {
        if window_timer >= 20 {
            hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
        } else {
            hurtboxID.sprite_index = sprite_get("throwblue_walking_hurt");
        }
    } else {
        hurtboxID.sprite_index = sprite_get("throwblue_hurt");
    }
}

//green throws
if (attack == AT_FSPECIAL_GREEN){
    if window == 1 && window_timer == 1 {
        clear_button_buffer(PC_JUMP_PRESSED);
    }
    can_wall_jump = true;
    /*
    if free { //no charge in the air
        set_attack_value(AT_FSPECIAL_GREEN,AG_STRONG_CHARGE_WINDOW,10);
    } else {
        set_attack_value(AT_FSPECIAL_GREEN,AG_STRONG_CHARGE_WINDOW,1);
    }
    strong_down = special_down;
    if smash_charging {
        fspecial_charging = true;
    }
    */
    
    if !(fspecial_charging && window < 4) {
        if (has_touched_grass) {
            if abs(right_down - left_down) {
                hsp = (right_down - left_down) * walk_speed * 1.25;
            }
        } else {
            if free {
                hsp += (right_down - left_down) * 0.05;
            } else {
                hsp += (right_down - left_down) * 1;
            }
            hsp = clamp(hsp,walk_speed*-1,walk_speed);
        }
        //hsp = clamp(hsp,dash_speed*-1,dash_speed);
        if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && ((!free) || (free && djumps < max_djumps)) && fspec_jump_timer == 0 && fspec_jumpstart_timer == 0 {
            if free {
                djumps += 1;
                vsp = jump_speed*-1;
                fspec_jump_timer = 6;
                spawn_base_dust(x, y, "djump");
                sound_play(asset_get("sfx_jumpair"));
            }else{
                if window == 4 { //if post-throw do the jumpstart
                    fspec_jumpstart = true;
                    fspec_jumpstart_timer = 0;
                } else { //else just jump
                    vsp = jump_speed*-1;
                    fspec_jump_timer = 6;
                    spawn_base_dust(x, y, "jump");
                    sound_play(asset_get("sfx_jumpground"));
                }
            }
            clear_button_buffer(PC_JUMP_PRESSED);
        }
        //platdrop
        if (down_hard_pressed || (down_down && free)) {
            fall_through = true;
            if !free { //this cause otherwise it only works if the player is in the air
                y += 1;
            }
        }
    }
    if window == 4 && ((window_timer >= 6 && !fspecial_charging) or (window_timer >= 18 && fspecial_charging)) {
        if special_pressed && (up_down or up_pressed){
            set_attack(AT_USPECIAL);
        } else if attack_pressed && move_cooldown[AT_FTILT] == 0 {
            axes_num -= 1;
            set_attack(AT_FTILT);
        }/* else if (left_strong_pressed or right_strong_pressed) && move_cooldown[AT_FSTRONG] == 0 {
            axes_num -= 1;
            set_attack(AT_FSTRONG);
        }*/
    }
    if window == 4 && window_timer >= 20 {
        fspec_walk_timer += 1;
    }
    //post axe throw jump has startup & anim
    //idk if pre-throw will have one cause there isn't a jump anim with both axes + it might be bad for readability
    if window == 4 && fspec_jumpstart { 
        fspec_jumpstart_timer += 1;
    }
    if fspec_jumpstart_timer == 5 {
        fspec_jumpstart = false;
        fspec_jumpstart_timer = 0;
        vsp = jump_speed*-1;
        fspec_jump_timer = 6;
        spawn_base_dust(x, y, "jump");
        sound_play(asset_get("sfx_jumpground"));
    }
    //same applies to landing
    if prev_free != free && !free {
        if window == 4{
            fspec_land_timer = 8;
        }
        sound_play(asset_get("sfx_land_med"));
        spawn_base_dust(x, y, "land");
    }
    if fspec_land_timer > 0 {
        fspec_land_timer -= 1;
    }
    //hurtbox
    if fspecial_charging && hsp == 0 && !free {
        hurtboxID.sprite_index = sprite_get("throwgreen_charged_hurt");
    } else if free {
        hurtboxID.sprite_index = sprite_get("throwgreen_air_hurt");
    } else if fspec_jumpstart {
        hurtboxID.sprite_index = sprite_get("fspecial_jumpstart_hurt");
    } else if fspec_land_timer > 0 {
        hurtboxID.sprite_index = sprite_get("fspecial_land_hurt");
    } else if hsp != 0 {
        if window_timer >= 20 {
            hurtboxID.sprite_index = sprite_get("walk_axeless_hurt");
        } else {
            hurtboxID.sprite_index = sprite_get("throwgreen_walking_hurt");
        }
    } else {
        hurtboxID.sprite_index = sprite_get("throwgreen_hurt");
    }
}

/* old axe throw fstrong
if (attack == AT_FSTRONG){
    if window == 4 && window_timer >= 18 {
        if attack_pressed && move_cooldown[AT_FTILT] == 0 {
            axes_num -= 1;
            set_attack(AT_FTILT);
        } else if special_pressed && move_cooldown[AT_FSPECIAL] == 0 {
            axes_num -= 1;
            set_attack(AT_FSPECIAL);
        }
    }
}*/


//teleport
if (attack == AT_USPECIAL){
    if window == 1 && window_timer == 1 {
        if has_touched_grass {
            set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
        } else {
            set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
        }
        
    }
    if (window <= 3) {
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
    if (window == 2) {
        if (image_index >= 5 && image_index <= 7) {
            draw_indicator = false;
        }
        if (window_timer == window_length) {
            sound_play(asset_get("sfx_zetter_shine_charged"),false,noone,0.55,1.05);
            if has_touched_grass {
                if !joy_pad_idle {
                    var tel_dir = round((joy_dir/8)*8)
                } else {
                    var tel_dir = 90;
                }
                for(var dis=0;dis<251;dis++) {
                    if collision_line(x,y-2,x+lengthdir_x(dis,tel_dir),y-2+lengthdir_y(dis,tel_dir),asset_get("par_block"),true,true) or dis == 250 {
                        x += lengthdir_x(dis,tel_dir);
                        y += lengthdir_y(dis,tel_dir);
                        break;
                    }
                }
                //x += lengthdir_x(250,tel_dir);
                //y += lengthdir_y(250,tel_dir);
                pratphobia = true;
                has_touched_grass = false;
                move_cooldown[AT_DSPECIAL] = dspecial_base_cooldown + get_window_value(AT_USPECIAL,3,AG_WINDOW_LENGTH) + get_window_value(AT_USPECIAL,4,AG_WINDOW_LENGTH);
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE,0);
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
            } else {
                y -= 250;
                x += (right_down - left_down) * 60;
                pratphobia = false;
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE,7);
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
            }
        }
    }
}

//nspecial
if (attack == AT_NSPECIAL) {
    if window == 2 {
        hud_offset = 20;
        if special_down {
            window = 4;
            window_timer = 0;
        } else if window_timer == window_length {
            axe_type += 1;
            if axe_type > 3 {
                axe_type = 0;
            }
        }
    }
    if window == 4 {
        hud_offset = 60;
        if special_down {
            if window_timer == window_length-2 {
                window_timer = 4;
            }
            // neutral - red - blue - green
            if up_down {
                axe_type = 0;
            } else
            if right_down {
                axe_type = 1;
            } else
            if down_down {
                axe_type = 2;
            } else
            if left_down {
                axe_type = 3;
            }
            if(up_pressed || down_pressed || right_pressed || left_pressed) sound_play(asset_get("mfx_change_color"));
        } else if window_timer >= 4{
            window = 3;
            window_timer = 0;
        }
    }
}



//dspecial
if (attack == AT_DSPECIAL){
    if window == 1 {
        dspecial_failed = false;
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }
    vsp = clamp(vsp,-4,2);
    can_move = false;
    hsp = 0;
    if window == 2 {
        //print_debug("dspecial failed?: "+string(dspecial_failed));
        //print_debug("touch grass?: "+string(has_touched_grass));
        if special_pressed && !(dspecial_failed || has_touched_grass) { //button check
            if window_timer <= 22 {
                dspecial_failed = true;
                sound_play(asset_get("mfx_unstar"));
                sound_play(asset_get("sfx_boss_vortex_end"),false,noone,0.45,1.45);
            } else if window_timer > 22 && window_timer < 38 {
                has_touched_grass = true;
                sound_play(asset_get("mfx_star"));
                sound_play(asset_get("sfx_ori_taunt2"),false,noone,0.7,1.15);
            } else {
                dspecial_failed = true;
                sound_play(asset_get("mfx_unstar"));
                sound_play(asset_get("sfx_boss_vortex_end"),false,noone,0.45,1.45);
            }
        }
        if window_timer == window_length {
            if !has_touched_grass && !dspecial_failed { //if you don't press anything
                dspecial_failed = true;
                sound_play(asset_get("mfx_unstar"));
                sound_play(asset_get("sfx_boss_vortex_end"),false,noone,0.45,1.45);
            }
            if dspecial_failed {
                set_window_value(AT_DSPECIAL,3,AG_WINDOW_LENGTH, dspecial_og_endlag*3); //if you whiff you get more endlag
                move_cooldown[AT_DSPECIAL] = 180 + get_window_value(AT_DSPECIAL,3,AG_WINDOW_LENGTH);
            } else {
                set_window_value(AT_DSPECIAL,3,AG_WINDOW_LENGTH, dspecial_og_endlag);
            }
        }
    }
}

//certified bernard gamefeel code
//here is where you can layer sounds/effects/code for attacks without dedicated sections
switch(attack) {
    case AT_JAB:
        if (window == 1 || window == 4 || window == 7) && window_timer == window_length-1 {
            //sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.3,1.8);
        }
        if (window == 10) && window_timer == window_length-1 {
            //sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.7,1.65);
        }
        break;
    case AT_DATTACK:
        if window == 1 {
            if window_timer == 2 {
                //sound_play(asset_get("sfx_jumpground"),false,noone,1.35,0.75);
            }
            if window_timer == window_length-1 {
                //sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.85,1.65);
            }
        }
        break;
    case AT_FTILT:
        break;
    case AT_FSPECIAL:
        break;
    case 44: //red axe throw
        if window == 1 && window_timer == window_length-3 {
            sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.15,1.05);
            //sound_play(asset_get("sfx_ori_uptilt"),false,noone,1,1.65);
            sound_play(asset_get("sfx_zetter_shine_charged"),false,noone,0.55,1.05);
        }
        break;
    case 45: //blue axe throw
        if window == 1 && window_timer == window_length-6 {
            sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.15,1.05);
            //sound_play(asset_get("sfx_ori_uptilt"),false,noone,1,1.65);
            sound_play(asset_get("sfx_zetter_shine_charged"),false,noone,0.55,1.05);
        }
        break;
    case 46: //green axe throw
        if window == 1 && window_timer == window_length-6 {
            sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.15,1.05);
            //sound_play(asset_get("sfx_ori_uptilt"),false,noone,1,1.65);
            sound_play(asset_get("sfx_zetter_shine_charged"),false,noone,0.55,1.05);
        }
        break;
    case AT_DTILT:
        if window == 1 && window_timer == window_length-3 {
            //sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.75,1.55);
        }
        break;
    case AT_UTILT:
        break;
    case AT_NAIR:
        break;
    case AT_FAIR:
        break;
    case AT_DAIR:
        break;
    case AT_BAIR:
        break;
    case AT_UAIR:
        break;
    case AT_FSTRONG:
        break;
    case AT_DSTRONG:
        break;
    case AT_USTRONG:
        break;
    case AT_NSPECIAL:
        if window == 1 && window_timer == window_length-1 {
            sound_play(asset_get("sfx_shovel_brandish"),false,noone,0.35,1.05);
        }
    
        if window == 3 && window_timer == 2 {
            sound_play(asset_get("sfx_coin_collect"),false,noone,0.3,1.35);
            sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.8,1.65);
        }
        break;
    case AT_DSPECIAL:
        if window == 1 && window_timer == window_length-1 {
            sound_play(asset_get("sfx_abyss_hazard_start"),false,noone,0.35,1.65);
        }
        break;
    case AT_USPECIAL:
        if window == 1 && window_timer == window_length-1 {
            sound_play(asset_get("sfx_ori_bash_hit"),false,noone,0.65,1.4);
        }
        break;
    case AT_TAUNT:
        if window == 3 && window_timer == window_length {
            take_damage(player,-1,1);
            if has_touched_grass {
                has_touched_grass = false;
            }
        }
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