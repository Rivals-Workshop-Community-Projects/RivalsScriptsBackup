// attack_update
if attack == AT_FSTRONG && window == 2 && window_timer == 0 && !has_hit sound_play(asset_get("sfx_swipe_heavy1"));
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_UAIR && free == 0) {
    can_jump = true;
}
if was_parried && attack == AT_JAB && state == 6 {
    was_parried = false;
    canBeStunned = false;
    can_be_parried = false;
    jab_parried = 1;
    
}
//Neutral B in any attack
if (nb_next == 1 || (special_down == 1 && move_cooldown[AT_NSPECIAL]  == 0 && attack != AT_NSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_FSPECIAL && attack != AT_FSPECIAL_2 && attack != AT_TAUNT && nspecial_done == 0)) {
    if attack == AT_DSTRONG { //Dstrong Nspecial Force
        set_attack(AT_NSPECIAL);
        exit;
    }
    nspecial_done = 1;
    //Neutral B assist (wait until a good window) 
    nb_do = 1;
    w_hspeed = get_window_value(attack, window, AG_WINDOW_HSPEED);
    w_vspeed = get_window_value(attack, window, AG_WINDOW_VSPEED);
    if ((w_hspeed != 0 || w_vspeed != 0) || (hsp == 0 && vsp == 0)) {
        nb_do = 0;
        nb_next = 1;
    } else nb_next = 0;
    if nb_do == 1 {
        nb_do = 0;
        nb_next = 0;
        
        move_cooldown[AT_NSPECIAL] = nspec_cool;
        //if flight < flight_max flight++;
        sound_play(sound_get("sfx_switch"));
        nspec_vfx_timer = nspec_vfx_time_max;
        nspec_vfx_spr = sprite_index;
        nspec_vfx_index = image_index;
        nspec_vfx_x = x;
        nspec_vfx_y = y;
        hsp = -hsp;
        vsp = -vsp;
        if instance_exists(disk) {
            disk.hsp = -disk.hsp;
            disk.vsp = -disk.vsp;
        }
    }
    /*
    shade_timer = shade_timer_max;
    //shade_anim = sprite_index;
    shade_anim = get_attack_value(attack, AG_HURTBOX_SPRITE);
    shade_frame = image_number;
    shade_x = x;
    shade_y = y;
    */
    
}

if (attack == AT_NSPECIAL && window == 1 && window_timer == 1 && nspecial_done == 0) {
    nspecial_done = 1;
    
    sound_play(sound_get("sfx_switch"));
    move_cooldown[AT_NSPECIAL] = nspec_cool;
    nspec_vfx_timer = nspec_vfx_time_max;
    nspec_vfx_spr = sprite_index;
    nspec_vfx_index = image_index;
    nspec_vfx_x = x;
    nspec_vfx_y = y;
    if flight < flight_max {
        hsp = -hsp;
        vsp = -vsp;
        //flight++;
        if instance_exists(disk) {
            disk.hsp = -disk.hsp;
            disk.vsp = -disk.vsp;
        }
    }
    else {
        window = 2;
        hsp = -hsp*.7;
        vsp = -vsp*.7;
        if instance_exists(disk) {
            disk.hsp = -disk.hsp*.7;
            disk.vsp = -disk.vsp*.7;
        }
    }
    can_wall_jump = true;
}

//Nair reversal
if (attack == AT_NAIR && window == 1 && window_timer == 1) att_down = 1;
if (attack == AT_NAIR && window == 2 && window_timer == 3) spr_dir = -spr_dir;
if attack == AT_NAIR && attack_down == 0 att_down = 0;
if attack == AT_NAIR && window == 4 && window_timer == 7 && att_down set_attack(AT_NAIR);

if attack == AT_DSTRONG && (window == 1 || window == 2) {
    can_jump = 1;
    if abs(hsp) < dstrong_speed_max {
        if !free hsp -= spr_dir*.4;
        else hsp -= spr_dir*.2;
    } 
    set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, abs(hsp/1.4));
    set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, abs(hsp/1.4));
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, floor(20-((abs(hsp*.4)))));
    //set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, floor(20-((abs(hsp*.4)))));
    
    if abs(hsp) > dstrong_speed && window == 1 {
        window_timer = 0;
        window = 2;
    }
    if abs(hsp) < dstrong_speed && window == 2 {
        window_timer = 0;
        window = 1;
    }
    /*else {
        if window == 1 {
            outline_color = [0,0,0];
            dspec_sound_done = 0;
        }
    }*/
    if window == 2 {
        
        if window_timer == get_window_value(AT_DSTRONG, window, AG_WINDOW_LENGTH) window_timer = 0;
        var _playa = instance_place(x,y,oPlayer);
        if _playa != noone && _playa != id && !_playa.invincible && _playa.state != PS_ROLL_BACKWARD && _playa.state != PS_ROLL_FORWARD {
            sound_play(asset_get("sfx_swipe_medium1"));
            window_timer = 0;
            window = 3;
        }
        if !dspec_sound_done {
            sound_play(turbo_sound);
            dspec_sound_done = 1;
        }
        //outline_color = [color_get_red(energy_clr[player_color]),color_get_green(energy_clr[player_color]),color_get_blue(energy_clr[player_color])];
    } //else outline_color = [0,0,0];
    dstr_winl = get_window_value(AT_DSTRONG, window, AG_WINDOW_LENGTH);
    if window_timer == floor((dstr_winl-1)/4) || window_timer == 3*floor((dstr_winl-1)/4) {
        sound_play(rocket_low_sfx);
    }
    if !down_strong_down && !down_down {
        window_timer = 0;
        if window == 2 window = 3;
        else window = 4;
    }
}
/*if attack == AT_DSTRONG && window == 1 {
    can_jump = 1;
    if abs(hsp) < 15 {
        if !free hsp -= spr_dir*.4;
        else hsp -= spr_dir*.2;
    }
    set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, abs(hsp/1.4));
    set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, abs(hsp/1.4));
    set_window_value(attack, 1, AG_WINDOW_LENGTH, floor(20-((abs(hsp*.4)))));
    
    if abs(hsp) > 8 && state_timer > 7 {
        create_hitbox(AT_DSTRONG, 1, x,y);
        if !dspec_sound_done {
            sound_play(turbo_sound);
            dspec_sound_done = 1;
        }
        outline_color = [color_get_red(energy_clr[player_color]),color_get_green(energy_clr[player_color]),color_get_blue(energy_clr[player_color])];
    } else {
        outline_color = [0,0,0];
        dspec_sound_done = 0;
    }
    dstr_winl = get_window_value(attack, 1, AG_WINDOW_LENGTH);
    if window_timer == floor((dstr_winl-1)/4) || window_timer == 3*floor((dstr_winl-1)/4) {
        sound_play(rocket_low_sfx);
    }
    if !down_strong_down && !down_down window = 2;
}*/

if attack == AT_USPECIAL && window == 1 && speen != 0 {
    move_cooldown[AT_USPECIAL] = 60;
    can_shield = true;
}
if attack == AT_USPECIAL && window > 1 && speen != 0 {
    can_shield = false;
    if !free {
        //set_state(PS_PRATFALL);
        //set_state(PS_LANDING_LAG);
        //state_timer = -get_attack_value(AT_USPECIAL,AG_LANDING_LAG);
        //state_timer = -100;
    }
}
if (attack == AT_USPECIAL && window == 2 && window_timer == 1 && uspecial_done == 0) {//&& special_pressed == 1 && up_down == 1 && down_down == 0) {
    uspecial_done = 1;
    var ehx = x;
    var why = y-64;
    var haych = hsp;
    var vee = vsp;
    x = disk.x;
    y = disk.y+64;
    hsp = disk.hsp;
    vsp = disk.vsp;
    disk.x = ehx;
    disk.y = why;
    disk.hsp = haych;
    disk.vsp = vee;
    sound_play(tele_sfx);
    disk_sfx_bool = 1;
    //flight = flight_max;
    can_wall_jump = true;
    if has_rune("J") djumps = 0;
    //if flight < flight_max flight++;
    //else window = 3;
}
if has_rune("J") && attack == AT_USPECIAL && window == 2 can_jump = true;
if has_rune("E") && attack == AT_DATTACK && window == 2 can_jump = true;
if has_rune("D") && attack == AT_DSTRONG && window == 2 soft_armor = 15;
if (attack == AT_USPECIAL && speen == 0) { //Throw Star Up
    set_attack(AT_FSPECIAL);
    move_cooldown[AT_USPECIAL] = 0;
   
}

if (attack == AT_FSPECIAL) {
    if window == 1 && window_timer == 12 {
        sound_play(asset_get("mfx_star"));
        with asset_get("obj_article2") {
            if player_id == other.id && state == 1 {
                state = 4;
            }
        }
    }
    if (window == 1 && window_timer == 12 && !instance_exists(disk)) {
        //move_cooldown[AT_FSPECIAL] = 30;
        var tempa_x = 32;
        var tempa_y = -16;
        var initspeed = 10;
        disk = instance_create(x+tempa_x*spr_dir,y+(tempa_y),"obj_article2");
        //if !joy_pad_idle set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, joy_dir+180*(spr_dir == -1));
        //else set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
        /*disk.hsp = initspeed*spr_dir*((right_down || left_down));
        if (right_down || left_down) {
            disk.vsp = (initspeed/4*down_down)+(-initspeed/4*up_down);
        } else disk.vsp = (initspeed*down_down)+(-initspeed*up_down);*/
    }
}


if (attack == AT_DSPECIAL) {
    if (window == 2 && window_timer == 1) {
        var temp_x = 0;
        var reflect = instance_create(x+(temp_x*spr_dir),y,"obj_article1");
        reflect.spr_dir = spr_dir;
        reflect.player = player;
        
        move_cooldown[AT_DSPECIAL] = 120;
    }
   can_fast_fall = false;
}
if attack == AT_DATTACK && !was_parried {
    if window == 1 && window_timer == 1 sound_play(turbo_sound);
    if window == 2 {
        //if has_hit can_jump = true;
        if has_hit can_ustrong = true;
        //if window_timer == 1 && flight < flight_max flight++;
    } else can_ustrong = false;
    //if window == 3 && has_hit can_jump = true;
} 
if attack == AT_DAIR && window == 3 can_wall_jump = true;
if attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG can_fast_fall = false;
//if attack == AT_FSTRONG && window == 2 && window_timer == 0 sound_play(asset_get("sfx_swipe_heavy1"));
if attack == AT_USTRONG && !free && !was_parried && window > 2 {
    state_timer = -20;
    set_state(PS_LANDING_LAG);
}
//if attack == AT_USTRONG && window == 2 && window_timer == 1 && flight < flight_max flight++;

/*if has_hit == 1 && !hitpause && has_hit_last != has_hit && flight > 0 {
    flight--;
}*/
if !hitpause has_hit_last = has_hit;
/*if window == 1 && window_timer == 1 {
    if (flight >= flight_max && ( attack == AT_DAIR || attack == AT_UAIR || attack == AT_NSPECIAL || attack == AT_DATTACK || attack == AT_USTRONG)) {
        
        attack_end();
        set_state(PS_IDLE_AIR);
    }
}*/
/*if window == 2 && window_timer == 1 {
    if (flight < flight_max && (attack == AT_DAIR || attack == AT_UAIR)) {
        flight++;
    }
}*/

if attack == AT_TAUNT {
    if window == 1 && window_timer == 1 && player_color != 3 {
        if random_func(0,400,true) == 1 {
            set_attack_value(AT_TAUNT, AG_SPRITE, taunt2_spr);
            set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, taunt2_sfx);
            //sprite_index = taunt_spr;
        } else {
            set_attack_value(AT_TAUNT, AG_SPRITE, taunt_spr);
            set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, taunt_sfx);
            //sprite_index = taunt2_spr;
        }
    }
    if window == 1 && window_timer == get_window_value(AT_TAUNT,1,AG_WINDOW_LENGTH)-1 && !taunt_down {
        window_timer = 0;
        window = 3;
    }
    if window == 2 && window_timer == get_window_value(AT_TAUNT,2,AG_WINDOW_LENGTH)-1 {
        if taunt_down window_timer = 0;
        else {
            window_timer = 0;
            window = 3;
        }
    }
    if window == 3 {
        if window_timer == 1 {
            confetti_count = 0;
            taunt_item_thrown = 0;
        }
        if confetti_count  < confetti_count_max { //&& random_func_2(get_gameplay_time() % 200,2,true) {
            var confetti = instance_create(x+confetti_x_off*spr_dir,y+confetti_y_off,"obj_article3");
            confetti.type = 1;
            confetti.vsp = confetti_vsp;
            confetti.hsp = random_func_2((get_gameplay_time()+confetti_count) % 200, confetti_hsp*200,false)/100-confetti_hsp;
            confetti_count++;
            var confetti = instance_create(x+confetti_x_off*spr_dir,y+confetti_y_off,"obj_article3");
            confetti.type = 1;
            confetti.vsp = confetti_vsp;
            confetti.hsp = random_func_2((get_gameplay_time()+confetti_count) % 200, confetti_hsp*200,false)/100-confetti_hsp;
            confetti_count++;
        } else if !taunt_item_thrown {
            sound_play(asset_get("sfx_holy_textbox"));
            var confetti = instance_create(x+confetti_x_off*spr_dir,y+confetti_y_off,"obj_article3");
            confetti.type = 2+random_func_2((x*get_gameplay_time()) % 200, sprite_get_number(sprite_get("items")), true);
            //confetti.type = state_timer;
            //print_debug(string((state_timer % item_type_max) + 2));
            confetti.vsp = confetti_vsp*1.5;
            confetti.hsp = 1.5*random_func_2((get_gameplay_time()+confetti_count) % 200, confetti_hsp*200,false)/100-confetti_hsp;
            taunt_item_thrown = 1;
            
        }
    }
}