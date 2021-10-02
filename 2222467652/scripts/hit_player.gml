// Called when one of your hitboxes hits a player.
//
// hit_player  = Which player was hit.
// my_hitboxID = The hitbox we hit them with.
// orig_knock  = Knockback given.

//experimental combo system implemented in v1.4
if (hit_player_obj.birdluigifire_timer >= 1){
    hit_player_obj.birdluigifire_timer += my_hitboxID.damage * 6;
}

if (my_hitboxID.attack == AT_DAIR){
    hsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_HSPEED);
    vsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_VSPEED);
    if (left_down){
        hsp -= 4;
    }
    if (right_down){
        hsp += 4;
    }
    if (has_rune("E")){
        take_damage(hit_player_obj.player, -1, 7 - my_hitboxID.damage);
        if (left_down){
            hsp -= 3;
        }
        if (right_down){
            hsp += 3;
        }
    }
    old_hsp = hsp;
    old_vsp = vsp;
    with(hit_player_obj){
        repeat (3){
            if (vsp > other.vsp){
                vsp -= 1;
            }
            if (hsp > other.hsp){
                hsp -= 1;
            }
            if (vsp < other.vsp){
                vsp += 1;
            }
            if (hsp < other.hsp){
                hsp += 1;
            }
            if (old_vsp > other.old_vsp){
                old_vsp -= 1;
            }
            if (old_hsp > other.old_hsp){
                old_hsp -= 1;
            }
            if (old_vsp < other.old_vsp){
                old_vsp += 1;
            }
            if (old_hsp < other.old_hsp){
                old_hsp += 1;
            }
        }
    }
    if (my_hitboxID.hbox_num == 2 && get_player_damage(hit_player_obj.player) >= 100 && !up_down && hit_player_obj.free){
        hit_player_obj.vsp *= -1;
        hit_player_obj.old_vsp *= -1;
    }
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num != 2){
    dstrong_drag_player = hit_player_obj;
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2 && !hit_player_obj.super_armor){
    dstrong_drag_player = noone;
}

if (my_hitboxID.attack == AT_NSPECIAL_2){
    if (hit_player_obj.birdluigifire && !luigi_fireball.fireball_onfire){
        luigi_fireball.fireball_onfire = true;
        luigi_fireball.fireball_weakfire = true;
        sound_play(asset_get("sfx_burnapplied"));
        luigi_fireball.fireball_onfire_id = id;
        luigi_fireball.fireball_firetimer = 20;
    }
    if (luigi_fireball != noone && instance_exists(luigi_fireball)){
        luigi_fireball.bounces -= 1;
        if (has_rune("C")){
            hit_player_obj.hsp = luigi_fireball.hsp;
            hit_player_obj.vsp = luigi_fireball.vsp;
            hit_player_obj.old_hsp = luigi_fireball.hsp;
            hit_player_obj.old_vsp = luigi_fireball.vsp;
        }
        if (luigi_fireball.fireball_onfire){
            hit_player_obj.birdluigifire = true;
            if (luigi_fireball.fireball_weakfire){
                if (hit_player_obj.birdluigifire_timer < 100){
                    hit_player_obj.birdluigifire_timer = 100;
                }
            } else {
                if (hit_player_obj.birdluigifire_timer < 315){
                    hit_player_obj.birdluigifire_timer = 315;
                }
            }
            hit_player_obj.birdluigifire_id = id;
            hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
        }
    }
}

if (my_hitboxID.attack == AT_DSPECIAL_2){
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 480){
        hit_player_obj.birdluigifire_timer = 480;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}

/*
//old rune D
if (has_rune("D")){
    if (hit_player_obj.orig_knock * -0.01 < hatdeathdrawvsp){
        hatdeathdrawvsp = hit_player_obj.orig_knock * -0.01;
    }
    if (hatdeathdrawheight > 0){
        hatdeathdrawheight = 0;
    }
}
*/

if (my_hitboxID.attack == AT_FTILT){
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 125){
        hit_player_obj.birdluigifire_timer = 125;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}

if (my_hitboxID.attack == AT_UTILT){
    utilt_hat_has_hit = true;
}

if (my_hitboxID.attack == AT_FSPECIAL){
    take_damage(hit_player_obj.player, -1, round(fspecial_charge * 0.06));
    hit_player_obj.orig_knock += fspecial_charge * 0.06;
    hitstop += round(fspecial_charge * 0.05);
    hit_player_obj.hitstop += round(fspecial_charge * 0.05);
    window = 4;
    window_timer = 0;
    hsp *= -0.8;
    old_hsp *= -0.8;
    /*
    if (fspecial_charge * 1.75 >= 64) || (fspecial_charge > 5 && get_player_damage(hit_player_obj.player) >= 100){
        sound_play(sound_get("headsmash2"));
        sound_play(sound_get("sfx_fspecial_timefreeze"));
        fspecial_slow_motion = true;
    }
    if (fspecial_charge * 1.75 >= 64){
        hitstop *= 3;
        hit_player_obj.hitstop *= 3;
    }
    */
}

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num != 3 && misfire_active){
    take_damage( hit_player_obj.player, -1, round(my_hitboxID.damage * 0.2) );
    hit_player_obj.hitstop *= 1.5;
    hitstop *= 1.4;
    hit_player_obj.orig_knock *= 1.2;
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 100){
        hit_player_obj.birdluigifire_timer = 100;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}

if (my_hitboxID.attack == AT_DSTRONG){
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 170){
        hit_player_obj.birdluigifire_timer = 170;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}

/*
if (get_stage_data(SD_ID) == 16499){
    if (phone_cheats[cheat_green_fire]){
        if (!hit_player_obj.birdluigifire){ 
            sound_play(asset_get("sfx_burnapplied"));
        }
        hit_player_obj.birdluigifire = true;
        if (hit_player_obj.birdluigifire_timer < 125){
            hit_player_obj.birdluigifire_timer = 125;
        }
        hit_player_obj.birdluigifire_id = id;
        hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
    }
} */

if (my_hitboxID.attack == AT_FTHROW) && (my_hitboxID.hbox_num == 1){
    window = 5;
    window_timer = 0;
    hitpause = true;
    hitstop = 30;
    hit_player_obj.x = x + 40 * spr_dir;
    hit_player_obj.y = y;
    hit_player_obj.hitpause = true;
    hit_player_obj.hitstop = 60;
    if (luigi_fireball != noone && instance_exists(luigi_fireball) && luigi_fireball.fireballfloat){
        luigi_fireball.hsp = 0;
    }
}

if (my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == 50) && (my_hitboxID.hbox_num == 2){
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 125){
        hit_player_obj.birdluigifire_timer = 125;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}

if (my_hitboxID.attack == AT_UTHROW && my_hitboxID.hbox_num == 1){
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 155){
        hit_player_obj.birdluigifire_timer = 155;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}

if (my_hitboxID.attack == AT_FSTRONG_2 && my_hitboxID.hbox_num == 2 && misfire_charged){
    misfire_charged = false;
    sound_play(sound_get("stat_down"));
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 125){
        hit_player_obj.birdluigifire_timer = 125;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
    take_damage( hit_player_obj.player, -1, round(my_hitboxID.damage * 0.2) );
    hit_player_obj.hitstop *= 1.5;
    hitstop *= 1.4;
    hit_player_obj.orig_knock *= 1.25;
}

if (my_hitboxID.attack == AT_BAIR){
    vsp *= 0.95;
}

if (my_hitboxID.attack == 50 && my_hitboxID.hbox_num == 1 && fs_target_id == noone){
    fs_target_id = hit_player_obj.id;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 && !hit_player_obj.birdluigi_grab_immune){
    with (my_hitboxID){
        if !("birdluigi_dspecial_grabbed_id" in self) || (birdluigi_dspecial_grabbed_id == noone){
            if !("egg_grab_id" in self){
                length *= 2;
                with (other){
                    other.birdluigi_dspecial_grabbed_id = hit_player_obj;
                    sound_play(sound_get("se_luigi_plunger_hit"));
                }
            }
        }
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2){
    with (my_hitboxID){
        if ("birdluigi_dspecial_grabbed_id" in self){
            if (birdluigi_dspecial_grabbed_id == other.hit_player_obj){
                destroyed = true;
            }
        }
    }
}

if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 1){
    if (hit_player_obj.should_make_shockwave){
        sound_play(sound_get("bat"));
    }
}