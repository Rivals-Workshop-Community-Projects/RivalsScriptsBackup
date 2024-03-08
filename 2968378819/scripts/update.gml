//
stock_number = get_player_stocks(player)
if (state == PS_RESPAWN){
    i_died = true;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_RESPAWN){
    i_died = false;
}

if state == PS_WAVELAND || (has_rune("O") && afterimage_timer){
    if state_timer <= uptilt_buff_window || (has_rune("O") && afterimage_timer){
        uptilt_buffed = true;
    }
    else{
        uptilt_buffed = false;
    }
}
if (state != PS_WAVELAND && state != PS_ATTACK_GROUND){
    uptilt_buffed = false;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) &&(!free || state == PS_WALL_JUMP || state == PS_HITSTUN){
    fspecial_used = has_rune("N")? -1:0;
}
move_cooldown[AT_FSPECIAL] = fspecial_used;

if has_rune("I"){
    if down_down{
        upspecial_charge_timer = clamp(upspecial_charge_timer + 1, 0, 60);
    }
    else{
        upspecial_charge_timer = clamp(upspecial_charge_timer - 5, 0, 60)
    }
    if upspecial_charge_timer == 60{
        if upspecial_charged == false{
            sound_play(asset_get("mfx_star"));
            upspecial_charged = true;
        }
    }
    else if upspecial_charge_timer == 0{
        upspecial_charged = false;
    }
    if upspecial_charged == true{
        outline_color = [get_color_profile_slot_r(get_player_color(player), 5) / 2, get_color_profile_slot_g(get_player_color(player), 5) / 2, get_color_profile_slot_b(get_player_color(player), 5) / 2];
    }
    else{
        outline_color = [0, 0, 0];
    }
}
if has_rune("J"){
    taunt_charge = clamp(taunt_charge - 1, 0, 60);
    if taunt_charge{
        uptilt_buffed = true;
        afterimage_timer = taunt_charge;
    }
}


// Afterimage
trail_hue = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 5), get_color_profile_slot_g(get_player_color(player), 5), get_color_profile_slot_b(get_player_color(player), 5));
var afterimage = [sprite_index, afterimage_timer? 1:0, 1/15, 0, 0, trail_hue, x, y, image_index, prev_spr_dir, 1];
array_push(particles, afterimage);
prev_spr_dir = spr_dir;
if array_length(particles) > 0{
    for(var e = 0; e < array_length(particles); e++){
        particles[@e][@1] -= particles[@e][@2];
        particles[@e][@6] += particles[@e][@3];
        particles[@e][@7] += particles[@e][@4];
        particles[@e][@5] = trail_hue;
        if particles[@e][@1] <= 0{
            var tpart = particles;
            particles = [];
            for (var h = 0; h < array_length(tpart); h++){
                if h != e{
                    array_push(particles, tpart[h]);
                }
            }
        }
    }
}
afterimage_timer--;
init_shader();

prev_spr_dir = spr_dir;

var combo = false;
with oPlayer{
    if monk_comboing{
        if state == PS_TUMBLE || bounced || (monk_combo_hspcheck / hsp < -0.95 && abs(hsp) > 1){
            monk_bluecombo = true;
        }
        if state_cat != SC_HITSTUN && state != PS_TUMBLE{
            monk_comboing = false;
            monk_bluecombo = false;
        }
        else{
            combo = true;
        }
    }
    monk_combo_hspcheck = hsp;
    monk_combo_statecheck = state;
    //if state == PS_TUMBLE print_debug("Tumble")
    //if bounced print_debug("Groundbounce")
    //if (monk_combo_hspcheck / hsp < -0.95 && abs(hsp) > 1) print_debug("Wallbounce")
}
if combo == false{
    combo_counter = 0;
    combo_type = "RED";
}

if (get_player_color(player) == 19 || get_player_name(player) == "TANIA") && state == PS_PARRY{
    if parry_success{
        sound_stop(asset_get("sfx_parry_success"));
        music_timer = 50;
        sound_play(asset_get("sfx_parry_success"), false, false, 0.75);
    }
    parry_success = false;
}

if music_timer{
    suppress_stage_music(1 - (music_timer / 100), 1);
    music_timer--;
}