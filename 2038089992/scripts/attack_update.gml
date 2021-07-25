// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Fstrong

if (attack == AT_FSTRONG) {
    meterConversion = false;

    puddleId = instance_position(x, y, obj_article1);
    if (puddleId) {
        with obj_article1 {
            if (id == other.puddleId && player_id == other.id) {
                if (other.playSoundVar == true) {
                    sound_play(asset_get("sfx_orca_absorb"));
                    other.playSoundVar = false;
                }
                size -= 1;
                other.meter_water += 4;
                if (other.meter_water + other.meter_steam >= other.meter_capacity) {
                    other.meter_water = other.meter_capacity - other.meter_steam;
                }
            }
        }
    } else if (meter_water < fstrongWater) {
        if (window != 2) {
            dryFstrong = true;
        }
    } else {
        dryFstrong = false;
    }

    if (window == 1) && (strong_charge >= 4) && meter_steam > 0 { //charging window
        //move left and right during charging
        if (left_down) && (hsp >= -strongMaxHsp) {
            hsp -= strongAccelHsp;
        } else if (right_down) && (hsp <= strongMaxHsp){
            hsp += strongAccelHsp;
        }
    }

    //steam charging hitbox
    if (window == 1) && (meter_steam > 0) {
        if (strong_charge mod 10 == 4) {
            //create_hitbox(AT_FSTRONG, 3, x, y);
        }

        if (strong_charge mod 5 == 1) {
            meter_steam -= 3;
            if meter_steam < 0 meter_steam = 0;
        }
    }

    if (strong_charge == 4) {
        //sound_play(sound_get("steam_sfx2"));
    }

    //deduct water meter
    if (window == 2) && (window_timer == 1) {
        destroy_hitboxes();
        if (meter_water >= fstrongWater) {
            meter_water -= fstrongWater;
        }
    }

    if (window != 1) || (meter_steam == 0) {
        sound_stop(sound_get("steam_sfx2"));
    }

    //waterless Fstrong
    if (dryFstrong == true) {
        set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 0);
        set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 0);

        if (meter_steam >= fstrongSteam) && (window == 2) && (window_timer >= 3) && (window_timer < 12) {
            meter_steam -= fstrongSteam;
            set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
            set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 0);

            //steam sprite randomiser
            fstrongSteamSprite = randomise_steam_sprite(1);

            //hsp randomiser
            var steamHsp = (1 - random_func(1, 2, false));

            //vsp randomiser
            var steamVsp = (1 - random_func(2, 2, false))/2;

            set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_SPRITE, fstrongSteamSprite);
            set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_HSPEED, 4 + steamHsp);
            set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_VSPEED, steamVsp);

            create_hitbox(AT_FSTRONG, 5, x + (20 * spr_dir), y - 20);
        } else {
            set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_overheat"));
            set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 2);
        }
    } else {
        reset_hitbox_value(AT_FSTRONG, 1, HG_WINDOW);
        reset_hitbox_value(AT_FSTRONG, 2, HG_WINDOW);
        reset_hitbox_value(AT_FSTRONG, 4, HG_WINDOW);
        reset_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX);
    }
}

//Dstrong

if (attack == AT_DSTRONG) {
    meterConversion = false;

    puddleId = instance_position(x, y, obj_article1);
    if (puddleId) {
        with obj_article1 {
            if (id == other.puddleId && player_id == other.id) {
                if (other.playSoundVar == true) {
                    sound_play(asset_get("sfx_orca_absorb"));
                    other.playSoundVar = false;
                }
                size -= 1;
                other.meter_water += 4;
                if (other.meter_water + other.meter_steam >= other.meter_capacity) {
                    other.meter_water = other.meter_capacity - other.meter_steam;
                }
            }
        }
    } else if (meter_water < dstrongWater) {
        if (window != 2) {
            dryDstrong = true;
        }
    } else {
        dryDstrong = false;
    }

    if (window == 1) && (strong_charge >= 4) && meter_steam > 0 { //charging window
        //move left and right during charging
        if (left_down) && (hsp >= -strongMaxHsp) {
            hsp -= strongAccelHsp;
        } else if (right_down) && (hsp <= strongMaxHsp){
            hsp += strongAccelHsp;
        }
    }

    //steam charging hitbox
    if (window == 1) && (meter_steam > 0) {
        if (strong_charge mod 10 == 4) {
            //create_hitbox(AT_DSTRONG, 3, x, y);
        }

        if (strong_charge mod 5 == 1) {
            meter_steam -= 1;
        }
    }

    if (strong_charge == 4) {
        //sound_play(sound_get("steam_sfx2"));
    }

    //deduct water meter
    if (window == 2) && (window_timer == 1) {
        destroy_hitboxes();
        if (meter_water >= dstrongWater) {
            meter_water -= dstrongWater;
        }
    }

    if (window != 1) || (meter_steam == 0) {
        sound_stop(sound_get("steam_sfx2"));
    }

    //waterless Dstrong
    if (dryDstrong == true) {
        set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 0);
        set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 0);

        if (meter_steam >= dstrongSteam) && (window == 2) && (window_timer >= 3) && (window_timer < 9) {
            meter_steam -= dstrongSteam;
            set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
            set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 0);

            //steam sprite randomiser
            dstrongSteamSprite1 = randomise_steam_sprite(1);
            dstrongSteamSprite2 = randomise_steam_sprite(2);

            //hsp randomiser
            var steamHsp1 = (1 - random_func(1, 2, false));
            var steamHsp2 = (1 - random_func(2, 2, false));

            //vsp randomiser
            var steamVsp1 = (1 - random_func(3, 2, false))/2;
            var steamVsp2 = (1 - random_func(4, 2, false))/2;

            set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_SPRITE, dstrongSteamSprite1);
            set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_HSPEED, 1 + steamHsp1);
            set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_VSPEED, -3.5 + steamVsp1);

            create_hitbox(AT_DSTRONG, 5, x + (20 * spr_dir), y - 5);

            set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_SPRITE, dstrongSteamSprite2);
            set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_HSPEED, -(1 + steamHsp2));
            set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_VSPEED, -3.5 + steamVsp2);

            create_hitbox(AT_DSTRONG, 5, x - (20 * spr_dir), y - 5);
        } else {
            set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_overheat"));
            set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 2);
        }
    } else {
        reset_hitbox_value(AT_DSTRONG, 1, HG_WINDOW);
        reset_hitbox_value(AT_DSTRONG, 2, HG_WINDOW);
        reset_hitbox_value(AT_DSTRONG, 4, HG_WINDOW);
        reset_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX);
    }
}


//Ustrong

if (attack == AT_USTRONG) {
    meterConversion = false;

    puddleId = instance_position(x, y, obj_article1);
    if (puddleId) {
        with obj_article1 {
            if (id == other.puddleId && player_id == other.id) {
                if (other.playSoundVar == true) {
                    sound_play(asset_get("sfx_orca_absorb"));
                    other.playSoundVar = false;
                }
                size -= 1;
                other.meter_water += 4;
                if (other.meter_water + other.meter_steam >= other.meter_capacity) {
                    other.meter_water = other.meter_capacity - other.meter_steam;
                }
            }
        }
    } else if (meter_water < ustrongWater) {
        if (window != 2) {
            dryUstrong = true;
        }
    } else {
        dryUstrong = false;
    }

    if (window == 1) && (strong_charge >= 12) && meter_steam > 0 { //charging window
        //move left and right during charging
        if (left_down) && (hsp >= -strongMaxHsp) {
            hsp -= strongAccelHsp;
        } else if (right_down) && (hsp <= strongMaxHsp){
            hsp += strongAccelHsp;
        }
    }

    //steam charging hitbox
    if (window == 1) && (meter_steam > 0) && (strong_charge >= 4) && meter_steam > 0 {
        if (strong_charge mod 10 == 4) {
            //create_hitbox(AT_USTRONG, 3, x, y);
        }

        if (strong_charge mod 5 == 1) {
            meter_steam -= 1;
        }
    }

    if (strong_charge == 4) {
        //sound_play(sound_get("steam_sfx2"));
    }

    //deduct water meter
    if (window == 2) && (window_timer == 1) {
        destroy_hitboxes();
        if (meter_water >= ustrongWater) {
            meter_water -= ustrongWater;
        }
    }

    if (window != 1) || (meter_steam == 0) {
        sound_stop(sound_get("steam_sfx2"));
    }

    if (window != 1) || (meter_steam == 0) {
        sound_stop(sound_get("steam_sfx2"));
    }

    //waterless Ustrong
    if (dryUstrong == true) {
        set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 0);
        set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 0);

        if (meter_steam >= ustrongSteam) && (window == 2) && (window_timer >= 1) && (window_timer < 12) {
            meter_steam -= ustrongSteam;
            set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
            set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 0);

            //steam sprite randomiser
            ustrongSteamSprite1 = randomise_steam_sprite(1);
            ustrongSteamSprite2 = randomise_steam_sprite(2);

            //hsp randomiser
            var steamHsp1 = (1 - random_func(1, 2, false));
            var steamHsp2 = (1 - random_func(2, 2, false));

            //vsp randomiser
            var steamVsp1 = (1 - random_func(3, 2, false));
            var steamVsp2 = (1 - random_func(4, 2, false));

            set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, ustrongSteamSprite1);
            set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_HSPEED, -1 + steamHsp1);
            set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_VSPEED, -4 + steamVsp1);

            create_hitbox(AT_USTRONG, 5, x + (13 * spr_dir), y - 35);

            set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, ustrongSteamSprite2);
            set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_HSPEED, -(-1 + steamHsp2));
            set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_VSPEED, -4 + steamVsp2);

            create_hitbox(AT_USTRONG, 5, x - (18 * spr_dir), y - 35);
        } else {
            set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_overheat"));
            set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
        }
    } else {
        reset_hitbox_value(AT_USTRONG, 1, HG_WINDOW);
        reset_hitbox_value(AT_USTRONG, 2, HG_WINDOW);
        reset_hitbox_value(AT_USTRONG, 4, HG_WINDOW);
        reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);
    }
}



//Dattack

if (attack == AT_DATTACK) {
    if has_hit {
        can_jump = true;
    }
    if (window == 1) && (window_timer == 1) {
        sound_play(sound_get("steam_sfx3"), true);
    }
    if (window == 2) && (meter_steam > 0) {
        if (attack_down) { //loop window
            if (window_timer == 10) {
                window_timer = 0;
            }
            if (spr_dir == 1) {
                if (hsp < 15) {
                    hsp += 0.8;
                }
            } else {
                if (hsp > -15) {
                    hsp -= 0.8;
                }
            }


            if (state_timer mod 1 == 0) {
                meter_steam -= dattackSteam;
            }

        } else {
            window = 3;
            window_timer = 0;
        }
    }
    if (window == 3) {
        sound_stop(sound_get("steam_sfx3"));
        hsp += 0.2;
    }
}

//Dspecial
if (attack == AT_DSPECIAL) {
    if (window == 1) {
        window_count = 0;
    }

    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -y - 20);
    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, y - 10);
    
    if window == 2 && window_timer == 1 {
        move_cooldown[AT_DSPECIAL] = clamp(move_cooldown[AT_DSPECIAL] + 180, 0, 360);
    }
    
    if (window == 2) {
        if window_timer == 1 {
            //cooldown
        }
        if (window_timer == 10) {
            window_count += 1;
        }
        var dspecProjCounter = 0;
        with pHitBox {
            if attack == AT_DSPECIAL && hbox_num == 1 && player_id == other.player {
                dspecProjCounter += 1;
                
            }
        }
        if ((!special_down) || (window_count >= dspecProjCount)) || (dspecProjCounter >= 2) {
            window = 3;
            window_timer = 0;
        }
    }
}

//Uspecial

if (attack == AT_USPECIAL) {
    can_wall_jump = true;
    if window == 1 {
        screenshake_timer = 0;
    }
    if (window == 2) && (window_timer == 1) {
        spawn_hit_fx(x - (20 * spr_dir), y, uspecSteamFx);
    }
    can_move = false;
    
    if window == 3 && window_timer > 4 {
        if shield_pressed {
            set_state(PS_PRATFALL);
        }
    }

    //looping window
    if (window == 4) && (window_timer == get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)) {
        window_timer = 0;
    }
    
    //landing screenshake
    if window == 7 {
        screenshake_timer++;
        if screenshake_timer < 6 {
            shake_camera(10, 5);
        }
    }

    if window == 7 && window_timer == 1 {
        destroy_hitboxes();
        if (canSubmerge) && (!hitpause) {
            spawn_hit_fx(x, y, uspecLandWaterFx);
            spawn_hit_fx(x, y - 20, uspecWaterTeleportFx);
            sound_play(asset_get("sfx_waterhit_heavy2"));
            create_hitbox(AT_USPECIAL, 5, 0, -35);
        } else {
            spawn_hit_fx(x, y, uspecLandSmokeFx);
        }

    }

    //runes
    if runeF { //USPEC can be canceled into pratfall.
        if special_pressed && free && window != 1 {
            set_state(PS_PRATFALL);
        }
    }

    if runeI { //USPEC has super armour while moving.
        if (window == 2) || (window == 3) || (window == 4) || (window == 6) {
            super_armor = true;
        } else {
            super_armor = false;
        }
    }


    //dive state after puddle attack
    if (window == 6 && window_timer == 10) {
        window = 3;
        window_timer = 0;
    }

    //used puddles become most recent
    if (window == 8) || (window == 9) || (window == 10) {
        with obj_article1 {
            if (player == other.player) && (id == other.targetPuddleID) {
                recentNum = get_gameplay_time();
            }
        }
    }

    if (targetPuddleSize >= 3) { //teleport/submerge can succeed
        //landing in a puddle and make a splash hitbox
        if (window == 7) && (canSubmerge) && (window_timer == 1) {
            with obj_article1 {
                if (player == other.player) && (id == other.submergePuddleID) {
                    dissolve = true;
                    with other {
                        meter_water += 18;
                        if (meter_water > meter_capacity) {
                            meter_water = meter_capacity;
                        }
                        if (meter_water + meter_steam >= meter_capacity) {
                            meter_steam = meter_capacity - meter_water;
                        }
                    }
                }
            }
        }
        if (!free && canSubmerge && window != 5 && window != 6 && window != 7) { //submerge code
            if (window == 8) && (window_timer == get_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH)) {
                window = 9;
                window_timer = 0;
            }
            if (window == 9) && (window_timer == get_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH)) {
                if (special_down) {
                    window_timer = 0;
                } else {
                    window = 10;
                    window_timer = 0;
                }
            }
            if jump_down && window != 1 {
                window = 1;
                window_timer = 0;
            }
        } else if (window == 9) || (window == 8) {
            window = 10;
            window_timer = 0;
        } else if (y > room_height + 100) && (window == 3 || window == 4) { //near bottom blastzone
            destroy_hitboxes();
            meter_water += uspecialWater;
            if (meter_water > meter_capacity) {
                meter_water = meter_capacity;
            }
            if (meter_water + meter_steam >= meter_capacity) {
                meter_steam = meter_capacity - meter_water;
            }

            x = targetPuddleX;
            y = targetPuddleY;

            spawn_hit_fx(x, y - 30, uspecWaterTeleportFx);

            if (special_down) {
                window = 6;
                vsp = -12;
                sound_play(asset_get("sfx_waterhit_heavy2"));
            } else {
                window = 5;
            }
            window_timer = 0;

            //reduce puddle size
            with obj_article1 {
                if (player == other.player) && (id == other.targetPuddleID) {
                    dissolve = true;
                }
            }
        }
    } else if (window == 9) || (window == 8) {
        window = 10;
        window_timer = 0;
    }

    if ((window == 2) || (window == 3) || (window == 4)) && (!free) {
        window = 7;
        window_timer = 0;
    }

    if (window == 8) || (window == 9) {
        with obj_article1 {
            if (player == other.player) && (id == other.submergePuddleID) {
                var xDiff = x - other.x;
                other.hsp = xDiff/5;
            }
        }
    }
    
    //blastzone stuff
    
    var blastzone_width = get_stage_data(SD_SIDE_BLASTZONE)
    var stage_x = get_stage_data(SD_X_POS)
    var blastzone_left = stage_x - blastzone_width
    var blastzone_right = (room_width - stage_x) + blastzone_width
    
    if (x > blastzone_right - 5) {
        x = blastzone_right - 5;
    }
    if (x < blastzone_left + 5) {
        x = blastzone_left + 5;
    }

    //submerged water replenish code
    if (window == 9) {
        meterConversion = false;
        meter_water += uspecialWater2;
        if (meter_water + meter_steam >= meter_capacity) {
            if (meter_steam > 0){
                meter_steam -= uspecialWater2;
                venting = true;
            } else {
                meter_water = meter_capacity - meter_steam;
                venting = false;
            }
        } else {
            venting = false;
        }

        if (meter_water + meter_steam < meter_capacity) {
            if (window_timer == 1) {
                with obj_article1 {
                    if (player == other.player) && (id == other.submergePuddleID) {
                        size -= 1;
                    }
                }
            }
        }
    } else {
        venting = false;
    }
} else {
    venting = false;
}


//Ftilt

if (attack == AT_FTILT) {
    if (window == 2) {
        meterConversion = false;
    }
    if (window == 1) && (window_timer == 4) && (((!attack_down) && (!right_stick_down) && (!left_stick_down)) || (meter_steam == 0)) {
        window = 4;
        window_timer = 0;
    } else if ((attack_down) || (right_stick_down) || (left_stick_down)) && (window == 2) && (meter_steam >= 1) {
        if (window_timer == get_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH)) {
            window_timer = 0;
        }

        if (state_timer mod ftiltSteamRate == 0) {
            meter_steam -= 1;
        }
    }

    if (state_timer == 7) && (window == 2) {
        sound_play(sound_get("steam_sfx2"), true);
    }

    if ((meter_steam == 0) || !(attack_down || right_stick_down || left_stick_down)) {
        if (state_timer > 10) {
            set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 0);
            sound_stop(sound_get("steam_sfx2"));
        }
    } else {
        reset_hitbox_value(AT_FTILT, 1, HG_WINDOW);
    }
}



//Nspecial

if (attack == AT_NSPECIAL) {
    if (window == 1) {
        reset_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW);
        reset_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW);
        reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX);
    } 
    /*
    else if (meter_water < nspecialWater) || (special_down && !special_pressed && state_timer > 8) {
        set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 0);
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("empty_shoot_sfx1"));

        if (meter_steam > 0 && special_down) { //steam attack activate
            set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
            //held special
            if (special_down) && (window == 2) && (window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)) {
                window_timer = 0;

                //steam sprite randomiser
                nspecSteamSprite = randomise_steam_sprite(1);

                set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, nspecSteamSprite);
            }
        } else { //empty attack
            set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 0);
            reset_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW);
        }
    }
    */
}



//Fspecial

if (attack == AT_FSPECIAL) {
    if (window == 1) {
        fspecialBlastCounter = 0;
    }

    if (free) {
        if state_timer > 40 {
            can_jump = true;
        }
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
    } else if (window == 4) && (window_timer >= 2) {
        reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX);
        reset_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX);
    }

    if (window > 2) {
        fspecTimer += 1;
    }

    if (window == 4) && (free) {
        window_timer = 0;
    }

    var blastPosition = (10 * spr_dir) + x + (fspecialBlastCounter * 100 * spr_dir);
    if (window == 4) && (window_timer == 1) && (!free) && (!instance_position(blastPosition, y, asset_get("par_block"))) && (!instance_position(blastPosition, y, asset_get("par_jumpthrough"))) {
        window = 5;
        window_timer = 0;
    }

    if (window == 4) && (window_timer == 9) && (special_down) && (meter_steam > 0) && (!free) && (meter_steam >= fspecialSteam) {
        window_timer = 0;
    }

    //steam blast hitbox
    if (window == 4) && (window_timer == 2) && (special_down) && (meter_steam > 0) && (!free) && (meter_steam >= fspecialSteam) {
        create_hitbox(AT_FSPECIAL, 3, blastPosition, y - 30);

        sound_play(asset_get("sfx_ell_steam_release"))

        meter_steam -= fspecialSteam;
        fspecialBlastCounter += 1;
        window_timer = 3;
    }
}



//Bair

if (attack == AT_BAIR) {
    if (window == 1) {
        bair_hit_increment = 0;
        bair_hit_timer = false;
    }
    if (bair_hit_timer == true) {
        bair_hit_increment += 1;
    }
    if (window == 4) {
        meterConversion = false;
        if (window_timer == 3) && (!hitpause) {
            meter_water -= bairWater;
            hsp += 7 * spr_dir;
        }
    }
    if (window == 3) && (window_timer == get_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH)) && (!attack_down && !(spr_dir == 1 && left_stick_down) && !(spr_dir == -1 && right_stick_down) || meter_water < bairWater) {
        window = 5;
        window_timer = 0;
    } else if ((window == 3) && (window_timer >= 3) && (attack_down) && (meter_water >= bairWater)) || ((bair_hit_increment >= 2) && (meter_water >= bairWater)) {
        window = 4;
        window_timer = 0;
        bair_hit_increment = 0;
        bair_hit_timer = false;
        destroy_hitboxes();
    } else if (window == 4 && window_timer <= 10) {
        can_move = false;
        bair_hit_increment = 0;
        bair_hit_timer = false;
    }
}

//Fair

if (attack == AT_FAIR) {
    if (window == 1) {
        fair_hit_increment = 0;
        fair_hit_timer = false;
    }
    if (fair_hit_timer == true) {
        fair_hit_increment += 1;
    }
    if (window == 4) {
        meterConversion = false;
        if (window_timer == 3) && (!hitpause) {
            meter_water -= fairWater;
            vsp -= 2;
            hsp -= 6 * spr_dir;
        }
    }
    if (window == 3) && (window_timer == get_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH)) && ((!attack_down && !(spr_dir == 1 && right_stick_down) && !(spr_dir == -1 && left_stick_down)) || meter_water < fairWater) {
        window = 5;
        window_timer = 0;
    } else if ((window == 3 || (window == 2 && window_timer >= 3)) && (attack_down) && (meter_water >= fairWater)) || ((fair_hit_increment >= 2) && (meter_water >= fairWater)) {
        window = 4;
        window_timer = 0;
        fair_hit_increment = 0;
        fair_hit_timer = false;
        destroy_hitboxes();
    } else if (window == 4 && window_timer <= 6) {
        can_move = false;
        fair_hit_increment = 0;
        fair_hit_timer = false;
    }
}

//Uair

if (attack == AT_UAIR) {
    if (window == 1) {
        uair_hit_increment = 0;
        uair_hit_timer = false;
    }
    if (uair_hit_timer == true) {
        uair_hit_increment += 1;
    }
    if (window == 4) {
        meterConversion = false;
        if (window_timer == 6) && (!hitpause) {
            meter_water -= uairWater;
            vsp += 5;
        }
    }
    if (window == 3) && (window_timer == get_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH)) && ((!attack_down && !up_stick_down) || meter_water < uairWater) {
        window = 5;
        window_timer = 0;
    } else if ((window == 3) && (window_timer >= 1) && (attack_down) && (meter_water >= uairWater)) || ((uair_hit_increment >= 2) && (meter_water >= uairWater)) {
        window = 4;
        window_timer = 0;
        uair_hit_timer = false;
        uair_hit_increment = 0;
        destroy_hitboxes();
    }

}

//Taunt
if (attack == AT_TAUNT) {
    if (taunt_down) {
        if (window == 2) && (window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH)) {
            window_timer = 0;
        }
    } else if (window == 2) && (state_timer >= 60) {
        window = 3;
        window_timer = 0;
    }

    if (window == 2) || (window == 1 && window_timer >= 18) {
        if (left_down) && (!right_down) && (hsp > -2) {
            hsp -= 0.6;
        }

        if (right_down) && (!left_down) && (hsp < 2) {
            hsp += 0.6;
        }

        if (char_height > 20) {
            char_height -= 2;
        }
    } else {
        if (char_height < 40) {
            char_height += 2;
        }
    }

    if window == 2 && window_timer == 0 {
        var slapSfx = undefined;
        switch (random_func(0, 4, true)) {
            case 0:
            slapSfx = sound_get("fish_slap_sfx1");
            break;

            case 1:
            slapSfx = sound_get("fish_slap_sfx2");
            break;

            case 2:
            slapSfx = sound_get("fish_slap_sfx3");
            break;

            case 3:
            slapSfx = sound_get("fish_slap_sfx4");
            break;

            case 4:
            slapSfx = sound_get("fish_slap_sfx5");
            break;
        }

        set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, slapSfx);
    }
}

//limit break
if (attack == AT_TAUNT_2) {
    if (taunt2Mode == "limit") {
        if (window != 3) {
            limitBreakCharge += 1;
        }

        if (window == 1 && window_timer == 2) {
            sound_play(sound_get("limit_start_sfx"));
        } else if (window == 2 && window_timer == 1) {
            sound_play(sound_get("limit_loop_sfx"));
        }

        if (window == 2) && (taunt_down) {
            window_timer = 1;
        }

        if (limitBreakCharge >= 100) && (window == 2) {
            limitBreakCharge = 100;
            window = 3;
            window_timer = 0;
            sound_play(sound_get("limit_end_sfx"));
            limitBreak = true;
            godmodeanimtimer = godmodemaxtimer;
        }

        if (window == 3) {
            sound_stop(sound_get("limit_loop_sfx"));
        }
    } else if (taunt2Mode == "runes") {
        if (window == 2 && window_timer == 1) {
            sound_play(sound_get("limit_end_sfx"));
        }
    } else if (taunt2Mode == "limitend") {
        limitBreak = false;
        meter_water = 0;
        meter_steam = 0;
    }
}

//arcade taunt
if attack == AT_FTHROW {
    if window == 1 {
        arc_gametimer = 0;
        if window_timer == 1 sound_play(asset_get("sfx_orca_absorb"))
        if window_timer == 20 sound_play(asset_get("sfx_waterwarp"))
        if window_timer == 21 sound_play(asset_get("sfx_waterhit_heavy2"))
    }
    if window == 2 {
        arc_draw_sk = true;
        arc_draw_line = true;
        
        arc_gametimer++;
        
        if arc_gametimer > 10 && taunt_pressed {
            window++;
            window_timer = 0;
        }
        
        arc_state_timer++;
        
        switch arc_state {
            case 0: //idle
            if arc_state_timer == 20 {
                arc_state_timer = 0;
                arc_state++;
            }
            break;
            
            case 1: //cast
            if arc_state_timer == 1 {
                sound_play(asset_get("sfx_fishing_rod_cast"))
            }
            if arc_state_timer == 60 {
                arc_state_timer = 0;
                arc_state++;
            }
            break;
            
            case 2: //wait
            var randvar = random_func(floor(x) mod 24, 120, true)
            if randvar == 69 {
                arc_state_timer = 0;
                arc_state++;
            } else if attack_pressed || special_pressed || shield_pressed || up_pressed || jump_pressed {
                arc_state_timer = 0;
                arc_state = 4;
                arc_loot_value = 0;
            }
            break;
            
            case 3: //caught
            if arc_state_timer == 1 {
                sound_play(asset_get("sfx_fishing_rod_catch"))
            }
            
            if arc_state_timer < 18 {
                arc_loot_value = 1;
            } else if arc_state_timer < 120 {
                arc_loot_value = 2;
            } else {
                arc_loot_value = 0;
            }
            
            if attack_pressed || special_pressed || shield_pressed || up_pressed || jump_pressed || arc_state_timer > 120 {
                arc_state_timer = 0;
                arc_state++;
            }
            break;
            
            case 4: //reel
            if arc_state_timer == 1 {
                sound_play(asset_get("sfx_fishing_rod_reel"))
            }
            if arc_state_timer == 60 {
                arc_state_timer = 0;
                arc_state++;
            }
            break;
            
            case 5: //score
            if arc_state_timer == 80 {
                arc_state_timer = 0;
                arc_state = 0;
                arc_loot_value = 0;
            }
            
            if arc_state_timer == 1 {
                switch arc_loot_value {
                    case 0:
                    
                    break;
                    
                    case 1: //good
                    sound_play(asset_get("sfx_fish_collect"))
                    arc_score += 3;
                    break;
                    
                    case 2: //meh
                    arc_score += 1;
                    break;
                }
            }
            break;
        }
    }
    if window == 3 {
        arc_gametimer = 0;
        arc_draw_sk = false;
        arc_draw_line = false;
        arc_line_spd = 1; //+ve = up, -ve = down, magnitude = speed
        arc_draw_anchor = false;
        arc_caught = false;
        arc_loot_value = 0;
        arc_state = 0; //0 = idle, 1 = casting, 2 = waiting, 3 = bitten, 4 = reeling, 5 = scoring
        arc_state_timer = 0;
        sound_stop(asset_get("sfx_fish_collect"))
        sound_stop(asset_get("sfx_fishing_rod_reel"))
        sound_stop(asset_get("sfx_fishing_rod_catch"))
        sound_stop(asset_get("sfx_fishing_rod_cast"))
    }
}

#define randomise_steam_sprite
var steamSprite = undefined;
switch (random_func(argument0, 12, true)) {
    case 0:
        steamSprite = sprite_get("steam_particle1");
        break;
    case 1:
        steamSprite = sprite_get("steam_particle2");
        break;
    case 2:
        steamSprite = sprite_get("steam_particle3");
        break;
    case 3:
        steamSprite = sprite_get("steam_particle4");
        break;
    case 4:
        steamSprite = sprite_get("steam_particle5");
        break;
    case 5:
        steamSprite = sprite_get("steam_particle6");
        break;
    case 6:
        steamSprite = sprite_get("steam_particle7");
        break;
    case 7:
        steamSprite = sprite_get("steam_particle8");
        break;
    case 8:
        steamSprite = sprite_get("steam_particle9");
        break;
    case 9:
        steamSprite = sprite_get("steam_particle10");
        break;
    case 10:
        steamSprite = sprite_get("steam_particle11");
        break;
    case 11:
        steamSprite = sprite_get("steam_particle12");
        break;
}
return steamSprite;
