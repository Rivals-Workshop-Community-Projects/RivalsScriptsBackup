init_shader();
//form stats thing
walk_speed          = form = 1? 4.25: 3.25;
walk_accel          = form = 1? 0.3: 0.2;
initial_dash_speed  = form = 1? 9: 8;
dash_speed          = form = 1? 8: 7;
dash_turn_accel     = form = 1? 1.8: 1.5;
dash_stop_percent   = form = 1? 0.5: 0.35;
ground_friction     = form = 1? 0.6: (form = 4? (down_down? 0.4: 0.1): 0.5);

max_jump_hsp        = form = 2? 8: (form = 4? 5: 6);
air_max_speed       = form = 2? 8: (form = 4? 5: 4);
air_accel           = form = 2? 0.4: 0.3;
prat_fall_accel     = form = 2? 0.95: 0.85;
air_friction        = form = 2? 0.02: 0.04;
fast_fall           = form = 2? 16: 14;
gravity_speed       = form = 4? 0.4: 0.5;
max_fall            = form = 4? 8: 10;

//drive gauge
if form && gauge_val && !gauge_val_disable gauge_val--;
if gauge_val < 0 gauge_val = 0;
if !gauge_val && form && !form_revert form_revert = 1;

//mp gauge
if mp_recharge  && mp <= 1000{
    mp += 3;
    if mp >= 1000{
        mp = 1000;
        mp_recharge = 0;
    }
}
if mp_bg != mp{
    mp_bg += (mp-mp_bg)/abs(mp-mp_bg)*5;
    if abs(mp-mp_bg)<5 mp_bg = mp;
}

//hud fix
if abs(hud_offset) <= 1 && hud_offset != 0 hud_offset = 0;

//command deck
if deck_change && deck_antimer < 180 deck_antimer += 10;
else if deck_change{
    deck_change = 0;
}

//revert to base
if form_revert && form && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state_cat != SC_HITSTUN && state_cat != SC_AIR_COMMITTED{
    set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("0dspecial"));
    set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("0dspecial_air"));
    set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("0dspecial_hurt"));
    set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("0dspecial_air_hurt"));
    state = (free? PS_ATTACK_AIR: PS_ATTACK_GROUND);
    state_timer = 0;
    invincible = 0;
    attack = AT_DSPECIAL;
    window = 2;
    window_timer = 8;
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_GOTO, 3);
    form_sel = -1;
}

//fspecial collision change
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL && window >= 6 && !form mask_index = sprite_get("0fspecial_mask");
else if mask_index != def_coll mask_index = def_coll;

//special cooldowns
if form == 3 && free && move_cooldown[AT_DSPECIAL] && free move_cooldown[AT_DSPECIAL] = 2;
if form == 3 && free && move_cooldown[AT_FSPECIAL] && free move_cooldown[AT_FSPECIAL] = 2;

//particle update
for(var i = 0; i < array_length(particles); i++){
    particles[@i][@1] -= particles[@i][@2];
    particles[@i][@6] += particles[@i][@3];
    particles[@i][@7] += particles[@i][@4];
    if particles[i][1] <= 0{
        var tpart = particles;
        particles = [];
        for(var h = 0; h < array_length(tpart); h++){
            if h != i array_push(particles, tpart[h]);
        }
    }
}

//form particles
switch form{
    case 1:
    if get_gameplay_time()%3 == 0{
        var color = make_color_rgb(sora_alt[1][get_player_color(player)][1][0], sora_alt[1][get_player_color(player)][1][1], sora_alt[1][get_player_color(player)][1][2]);
        var particle = [sprite_get("1particle"), 20/12, 1/12, 2 - random_func_2(abs(floor((x - 3)%200)), 4, 0), -3 - random_func_2(abs(floor(x%200)), 3, 0), color, x, y - 40, 0, 1];
        array_push(particles, particle);
    }
    break;
    case 2:
    if get_gameplay_time()%3 == 0{
        var color = make_color_rgb(sora_alt[2][get_player_color(player)][1][0], sora_alt[2][get_player_color(player)][1][1], sora_alt[2][get_player_color(player)][1][2]);
        var particle = [sprite_get("2particle"), 20/12, 3/24, 2 - random_func_2(abs(floor((x - 3)%200)), 4, 0), -3 - random_func_2(abs(floor(x%200)), 3, 0), color, x - 34 + random_func_2(abs(floor(x%200)), 28, 1), y - 6, random_func_2(abs(floor(x%200)), 2, 1), -1];
        array_push(particles, particle);
    }
    if get_gameplay_time()%3 == 2{
        var color = make_color_rgb(sora_alt[2][get_player_color(player)][1][0], sora_alt[2][get_player_color(player)][1][1], sora_alt[2][get_player_color(player)][1][2]);
        var particle = [sprite_get("2particle"), 20/12, 3/24, 2 - random_func_2(abs(floor((x - 3)%200)), 4, 0), -3 - random_func_2(abs(floor(x%200)), 3, 0), color, x - 6 + random_func_2(abs(floor(x%200)), 28, 1), y - 6, random_func_2(abs(floor((x + 1)%200)), 2, 1), -1];
        array_push(particles, particle);
    }
    break;
    case 4:
    if fps_real < 100{
        final_partc_spawn = 40;
        final_partc_amount = 5;
    }
    if get_gameplay_time()%final_partc_spawn == 0{
        var partc = instance_create(x, y, "obj_article2");
        partc.particle_type = 4;
        partc.y_displ = random_func_2(floor(abs(x%200)), 50, 0);
        partc.timer = random_func_2(floor(abs(x%200)), 72, 1);
        partc.Ytimer = random_func_2(floor(abs((x + 1)%200)), 72, 1);
    }
    break;
}

//frostbite
with oPlayer if self != other && frostbite{
    if frostbite_anim < 8 frostbite_anim += 1/3;
    frostbite_timer--;
    if !frostbite_timer && !trigger_bite{
        frostbite = 0
        frostbite_timer = 600;
        trigger_bite = 0;
        bite_distance = 0;
        frost_angle = 0;
        frostbite_anim = 0;
    }
    if !trigger_bite frost_angle += 5;
    if trigger_bite{
        if frostbite_timer > 10 bite_distance = lerp(bite_distance, floor(char_height*2/3) + 30, 0.2);
        else bite_distance = ease_cubeIn(floor(char_height*2/3) + 30, floor(-char_height*2/3) - 20, 10 - frostbite_timer, 10);
        if frostbite_timer == 0{
            with other create_hitbox(AT_EXTRA_1, 1, floor(other.x), floor(other.y - char_height/2 - 10));
            frostbite = 0
            frostbite_timer = 600;
            trigger_bite = 0;
            bite_distance = 0;
            frost_angle = 0;
            frostbite_anim = 0;
        }
    }
}

//airdash
if form == 3{
    if (prv_state != PS_IDLE && prv_state != PS_WALK && prv_state != PS_DASH && prv_state != PS_SPAWN && prv_state != PS_RESPAWN) && (state == PS_IDLE || state == PS_WALK || state == PS_DASH || state == PS_SPAWN || state == PS_RESPAWN) blade_angle = 0;
    prv_state = state;
    if state == PS_IDLE || state == PS_WALK || state == PS_DASH || state == PS_SPAWN || state == PS_RESPAWN blade_angle -= (state == PS_DASH? 6 + 6*clamp(dsin(state_timer*2)*2, 0, 1): 5 + 5*clamp(dsin(state_timer*2)*2, 0, 1));
    has_airdodge = 0;
    if dash_alpha < 1 dash_alpha += 0.05;
    if dash_cool dash_cool--;
    if !free{
        master_airdodge = 1;
        if dash_restore dash_restore--;
        else if dashes < 3{
            var partc = instance_create(0, 0, "obj_article2");
            partc.particle_type = 5;
            dashes++;
            dash_restore = 60;
        }
        dash_cool = 0;
    }
    if shield_pressed && free{
        if joy_pad_idle && state != PS_ATTACK_AIR{
            has_airdodge = 1;
            if air_dodge_dir != 0 || !master_airdodge has_airdodge = 0;
            else master_airdodge = 0;
        }else if !joy_pad_idle && !dash_cool && dashes > 0 && (state_cat = SC_AIR_NEUTRAL || state == PS_WALL_JUMP || state == PS_AIR_DODGE){
            dash_restore = 60;
            dash_dir = floor(joy_dir/45);
            dashes--;
            dash_cool = 20;
            if sign(dcos(dash_dir*45)) != 0 spr_dir = sign(dcos(dash_dir*45));
            clear_button_buffer(PC_SHIELD_PRESSED);
            sound_stop(air_dodge_sound);
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("airdash" + string(dash_dir)));
            set_attack(AT_EXTRA_1);
        }
    }
}else if dash_alpha > 0 dash_alpha -= 0.05;

//peach float
if form == 4{
    if !free{
        float_time = 150;
        can_float = 1;
    }
    if (state == PS_IDLE_AIR || (state == PS_FIRST_JUMP && (vsp > 0 || down_down)) || (state == PS_DOUBLE_JUMP && down_down)) && jump_down && can_float && !is_floating{
        is_floating = 1;
        y -= 2;
        clear_button_buffer(PC_JUMP_PRESSED);
        set_state(PS_IDLE_AIR);
        sound_stop(jump_sound);
    }else if (!jump_down && float_time < 150) || ((state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && is_floating){
        can_float = 0;
        is_floating = 0;
    }
    if is_floating{
        float_time--;
        vsp = 0;
        can_fast_fall = 0;
        if float_time <= 0 && state != PS_ATTACK_AIR{
            can_float = 0;
            is_floating = 0;
        }
    }
}

//spin sound reset
if !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_EXTRA_2 && window == 1){
    sound_stop(spin_sfx);
    if instance_exists(flow_blade){
        flow_blade.state = 3;
        flow_blade.timer = 0;
        flow_blade = noone;
    }
}

//flowmotion manual trigger
var blade = instance_place(x, y, obj_article1);
if instance_exists(blade) && blade.player_id = self && blade.type == 3 && blade.state == 1 && shield_pressed && (state == PS_HITSTUN || state == PS_HITSTUN_LAND) && !hitstop{
    spr_angle = 0;
    draw_y = 0;
    blade.state = 5;
    blade.timer = 0;
    hsp = 0;
    vsp = 0;
    x = blade.x;
    y = blade.y + 20;
    set_attack(AT_EXTRA_2);
    for(var b = 1; b <= get_num_hitboxes(attack); b++){
        var fx = get_hitbox_value(attack, b, HG_VISUAL_EFFECT)
        if array_find_index(hfx, fx) >= 0{
            var fx_id = floor(array_find_index(hfx, fx)/4)*4 + random_func(abs(floor((get_gameplay_time()+b)%200)), 4, 1);
            set_hitbox_value(attack, b, HG_VISUAL_EFFECT, hfx[fx_id]);
        }
    }
    hurtboxID.sprite_index = sprite_get("4flowmotion_hurt");
    flow_blade = blade;
    spin_timer = 0;
    clear_button_buffer(PC_SPECIAL_PRESSED);
    clear_button_buffer(PC_ATTACK_PRESSED);
    spin_sfx = sound_play(sound_get("final_spin"), 1);
    sound_play(sound_get("OB_hitweak3"));
    sound_play(sound_get("OK_hitweak2"));
    with obj_article2 if player_id = other && type = 3{
        cooldown = 400;
        force_cd = 1;
        if state = 3 timer = 0;
    }
}


//form 4 float hud
if state == PS_IDLE || state == PS_WALK || state == PS_WALK_TURN float_hud++;
else float_hud = 20;
if form == 4 && (state == PS_IDLE || state == PS_WALK || state == PS_WALK_TURN) hud_offset = lerp(hud_offset, -floor(dsin(float_hud*4.5) * 3) + 7, (hud_offset > 12? 0.1: 1));

//debug
if get_match_setting(SET_PRACTICE){
    if !training_cue && training_alpha training_alpha -= 1;
    if up_down && gauge_val < 5000 && taunt_down{
        gauge_val += 100;
        training_cue = 0;
    }
    if down_down && gauge_val && taunt_down{
        gauge_val -= 100;
        training_cue = 0;
    }
    if shield_pressed && form < 4 && taunt_down{
        clear_button_buffer(PC_SHIELD_PRESSED);
        form++;
        training_cue = 0;
    }
    if jump_pressed && form && taunt_down{
        clear_button_buffer(PC_JUMP_PRESSED);
        form--;
        training_cue = 0;
    }
    if taunt_down && special_pressed{
        clear_button_buffer(PC_SPECIAL_PRESSED);
        gauge_val_disable *= -1;
        training_cue = 0;
        
    }
}