//updating stuff

//Base stuff
if (state_timer == 1){
    generic_timer = 0;
    generic_timer2 = 0;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    attacking_now = window;
}
else{
    attacking_now = 0;
}

if (attacking_now == 0){
    grabbed_player = noone;
}

if (attack != AT_NSPECIAL || attacking_now == 0){
    footstooled_player = noone;
}

if (state == PS_PRATLAND){
    hsp = 0;
    vsp = 0;
}
//jumping

if (free == true){
    ground_timer = 0;
    if (state != PS_FIRST_JUMP || state_timer > 1){
        free_vsp = vsp;
        free_hsp = hsp;
    }
} else{
    summersault = 0;
    if (hitstop == false){
        ground_timer ++
        if (state == PS_FIRST_JUMP || state == PS_JUMPSQUAT || state == PS_LAND){
            if (right_down - left_down != 0){
                spr_dir = right_down - left_down;
            }
        }
    }
}

if (free == false || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

//

if (is_ai != true || jump_charged < 6){
    if (state == PS_LAND && jump_down && hitstop == false){
        charge_jump_counter++
        if (jump_charged < 8){
            jump_charged += 0.5;
        }
        if (charge_jump_counter == 600){
            sound_play(asset_get("sfx_frog_fspecial_charge_full"));
        }
        if (charge_jump_counter >= 600){
            if (floor(charge_jump_counter / 4) == ceil(charge_jump_counter / 4)){
                spawn_base_dust(x, y, "land");
                sound_play(sound_get("boing"), false, noone, 4, 1 + random_func(1, 1, false));
            }
            image_index = charge_jump_counter;
            draw_x = random_func(1, 9, false) - 4;
            draw_y = random_func(2, 9, false) - 4;
            shake_camera(2, 2);
        }
        if (floor(state_timer / 4) == ceil(state_timer / 4) && jump_charged == 8){
            strong_flashing = true;
        }
        if (floor(charge_jump_counter / 10) == ceil(charge_jump_counter / 10)){
            spawn_base_dust(x, y, "land");
        }
        state_timer -= 0.15;
        hsp = right_down - left_down;
        move_cooldown[AT_DSPECIAL] = 2;
    }
}

if (state == PS_FIRST_JUMP && state_timer == 1){
    if (charge_jump_counter <= 600){
        vsp -= jump_charged;
        sound_play(sound_get("boing"), false, noone, 24, 0.8);
    } else{
        vsp = -200;
        create_deathbox(x, y - 800, 10, 100, player, true, 1, 4, 1);
    }
    hsp = (free_hsp * sign(free_hsp)) * (right_down - left_down);
    jump_charged = 0;
    charge_jump_counter = 0;
    pancaked ++
}

if (state != PS_FIRST_JUMP && state != PS_JUMPSQUAT && state != PS_LAND && state != PS_WAVELAND && state != PS_IDLE_AIR){
    if (jump_charged > 0){
        jump_charged -= 0.25;
    }
}

//free stuff

if (state == PS_IDLE_AIR){
    if (jump_charged > 0){
        jump_charged /= 2;
    }
}

//wave land

if (state == PS_WAVELAND && state_timer == 2){
    sound_play(waveland_sound);
    hsp = (right_down - left_down) * 10;
    free_hsp = 0;
    invincible = true;
    invince_time = 6;
}

if (hooped > 0){
    if (hooped == hooped_max){
        spawn_base_dust(x, y, "doublejump");
    }
    hooped -= 1;
}

//djump

if (state == PS_DOUBLE_JUMP && state_timer <= 1){
    if (right_down - left_down != 0){
        spr_dir = right_down - left_down;
    }
}

//taunt

if (state_cat == SC_AIR_NEUTRAL && taunt_pressed && summersault == 0){
    set_attack(AT_TAUNT);
    window = 1;
    window_timer = 0;
}

//respawn
if (state == PS_RESPAWN){
    move_cooldown[AT_TAUNT] = 2;
}

if (prev_state == PS_RESPAWN && state_timer = 1){
    vsp = jump_speed * -1;
    respawn_taunt = 0;
    spawn_base_dust(x, y, "jump");
    if (spr_dir != -1){
        var plat_effect = spawn_hit_fx(x, y, vfx_rightvictoryplat);
    } else{
        var plat_effect = spawn_hit_fx(x, y, vfx_leftvictoryplat);
    }
    plat_effect.vsp = 6;
    plat_effect.grav = -0.6;
    plat_effect.uses_shader = 0;
    plat_effect.image_xscale = spr_dir;
    sound_play(sound_get("boing"), false, noone, 4, 1 + random_func(1, 1, false));
    sound_play(sound_get("rope_pull"), false, noone, 5, 2);
    prev_state = PS_IDLE_AIR;
}

//ustrong

if (attack == AT_USTRONG && attacking_now == 1 && window_timer > 3 || attack == AT_USTRONG && attacking_now == 2){
    if (ustrong_mus_tracker == 0){
        sound_play(ustrong_music_index, false, noone, 1.5);
        ustrong_mus_tracker = 1;
        ustrong_mus_counter += 1;
    }
    suppress_stage_music(0.5, 0.004);
} else if (ustrong_mus_tracker == 1){
    sound_stop(ustrong_music_index);
    ustrong_mus_tracker = 0;
}

//fspecial

if (fspecial_sound_tracker == 1){
    if (attacking_now != 2 && attacking_now != 3 || attack != AT_FSPECIAL){
        sound_stop(sound_get("scramble_loop"));
        fspecial_sound_tracker = 0;
    }
}

if (attack != AT_FSPECIAL || attacking_now == 0){
    fspecial_charge = 0;
}

//hudstuff
if (move_cooldown[AT_USPECIAL] = 0){
    if (hoop_recharge_y > 0 && hoop_recharge_vsp > -4){
        hoop_recharge_vsp -= 0.75;
    }
    if (hoop_recharge_y < 0 && hoop_recharge_vsp < 2){
        hoop_recharge_vsp += 0.5;
    }
    if (hoop_recharge_y == 0){
        hoop_recharge_vsp = 0;
    }
} else
    if (hoop_recharge_y < 64 && hoop_recharge_vsp < 4){
        hoop_recharge_vsp += 0.2;
    } else
    if (hoop_recharge_y >= 64){
        hoop_recharge_vsp = 0;
        hoop_recharge_y = 64;
    }
    
hoop_recharge_y += hoop_recharge_vsp;

//intro

if (sprite_index == sprite_get("intro")){
    if (get_gameplay_time() == 14){
        sound_play(sound_get("whizz"));
    }
    if (get_gameplay_time() == 20){
        sound_play(sound_get("drumroll_start"));
    }
    if (get_gameplay_time() == 24){
        sound_play(sound_get("drumroll_loop"), true);
    }
    if (get_gameplay_time() == 44){
        sound_stop(sound_get("drumroll_loop"));
        sound_stop(sound_get("drumroll_start"));
        sound_play(sound_get("drumroll_end"));
    }
    if (get_gameplay_time() < 52){
        hud_offset = 1000;
    }
    if (get_gameplay_time() == 52){
        sound_play(sound_get("organ_intro"), false, 1, 4);
        sound_play(sound_get("organ_intro"), false, -1, 4);
    }
    if (get_gameplay_time() == 80){
        sound_play(sfx_laugh, false, noone, 1);
    }
}

//


if (pancaked == 230 && image_index >= 6 && sprite_index == sprite_get("jump")){
    pancaked = 10000;
}

if (pancaked == 10000){
    if (sprite_index != sprite_get("jump")){
        sound_play(sound_get("cartoon_splat"), false, noone)
        pancake = spawn_hit_fx(x - 20, y - 82, vfx_pancake);
        pancake.grav = 0.3;
        pancake.vsp = -7;
        pancake.hsp = random_func(1, 3, false) - 1;
        pancaked += 1;
    }
}

if (variable_instance_exists(self, "steve_armor_active")){
    if (steve_armor_active == true && steve_armor_time == 1){
        vsp = -6;
        sound_play(sound_get("armoured_up"), false, noone, 2)
    }
}

//written by supersonic, modified by bar-kun
#define spawn_base_dust
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}
