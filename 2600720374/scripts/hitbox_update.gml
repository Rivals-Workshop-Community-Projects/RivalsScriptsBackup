if (attack == AT_DAIR) {
    vsp -= 2;
    var plat = collision_circle(x, y, 3, asset_get("par_jumpthrough"), true, true);
    var block = collision_circle(x, y, 3, asset_get("par_block"), true, true);
    if (plat != noone || block != noone) {
        destroyed = true;
        if (player_id.attack == AT_DAIR) {
            spawn_hit_fx(x,y,player_id.hand_effect);
            player_id.dair_hand_grabbed = true;
            player_id.window = 4;
            player_id.window_timer = 1;
        }
    }
    if (has_hit) {
        player_id.dair_projectile_hit = true;
    }
} else if (attack == AT_FSPECIAL) {
    proj_angle = radtodeg(arctan2(hsp, vsp)) + 90 * -spr_dir;
} else if (attack == AT_FTILT || (attack == AT_DSPECIAL && type == 2)) {
    //if (vsp < 1.1 && vsp > -1.1 && !grabbed) vsp = cos(hitbox_timer/20);
    if (vsp < 1.1 && vsp > -1.1) y += cos(hitbox_timer/20) * 0.5;
    if (hitbox_timer % 4 == 0 && stun < 0) {
        var charge_particle = spawn_hit_fx(x,y,player_id.charge_effect2);
        charge_particle.depth = -10;
        charge_particle.spr_dir = spr_dir;
    }
    if (stun > 0) {
        vsp = 0;
        if (stun == 1 && (x - player_id.x) * player_id.spr_dir < 100) {
            x = player_id.x + player_id.spr_dir * 100;
        }
        //x = round(lerp(x, player_id.x + player_id.spr_dir * 70, 0.1));
        y = round(lerp(y, player_id.y - 32 , 0.1));
        sprite_index = sprite_get("orb_stunned");
        image_index = 3 - round(stun / 40);
        if (stun < 10) {
            image_index = 3;
        }
        stun--;
    } else {
        with (asset_get("pHitBox")) {
            if (player_id == other.player_id && place_meeting(x, y, other)) {
                if (attack == AT_NSPECIAL) {
                    if (player_id.window == 5) { // punch
                        other.stun = 0;
                        //player_id.hitstop = 10;
                        //player_id.hitstop_full = 10;
                        //player_id.hitpause = true;
                        //if (player_id.window_timer > 8 && !player_id.attack_down) {
                        //if (!player_id.attack_down) {
                        if (!player_id.shield_down) {
                            other.spr_dir = player_id.spr_dir;
                            other.stun = 5;
                            other.hit_by = 3;
                            player_id.lightning_punch = true;
                            player_id.hitpause = true;
                            player_id.hitstop = other.stun + 5;
                            player_id.old_hsp = player_id.spr_dir * -4; 
                            player_id.old_vsp = -1;
                        } else {
                            player_id.hit_orb = true;
                        }
                    } else if (player_id.window == 6) { // kick
                        other.stun = 0;
                        other.hit_by = 1; // kick
                    }
                } else if (attack == AT_USPECIAL) {
                    other.hit_by = 2;
                    other.stun = 0;
                } else if (attack == AT_FSPECIAL) {
                    if (player_id.window == 2) {
                        var prev_x = other.x;
                        var prev_y = other.y;
                        other.x = lerp(other.x, player_id.x - player_id.spr_dir * 20, 0.7);
                        other.y = lerp(other.y, player_id.y - 34, 0.7);
                        other.hsp = (other.x - prev_x) / 10;
                        //other.vsp = (other.y - prev_y) / 10;
                        other.extra_hitpause += 1;
                        //other.grabbed = true;
                        //other.vsp = 0;
                    } else if (player_id.window == 3) {
                        //other.x = lerp(other.x, player_id.x + player_id.spr_dir * 30, 0.5);
                        other.x += 20 * player_id.spr_dir;
                        other.y = lerp(other.y, player_id.y - 36 , 0.5);
                        other.y += player_id.vsp;
                    } else if (player_id.window == 4) {
                        other.hsp = player_id.spr_dir * (1.6 + player_id.fspecial_charge/10);
                        // RESET ABILITY TO HIT [START]
                        if (player_id.time_since_reset > 60) {
                            var new_orb = create_hitbox(AT_FTILT, 1, round(other.x), round(other.y));
                            player_id.time_since_reset = 0;
                            new_orb.hsp = other.hsp;
                            new_orb.vsp = other.vsp;
                            new_orb.hitbox_timer = other.hitbox_timer;
                            new_orb.length = other.length;
                            var dif = new_orb.length - new_orb.hitbox_timer;
                            if (dif < 60) new_orb.length += 60 - dif;
                            other.destroyed = true;
                        }
                        // [END]
                        /*
                        // Vertical throw control
                        if (!player_id.joy_pad_idle) {
                            var jy = lengthdir_y(1, player_id.joy_dir);
                            if (jy > 0.5) other.vsp = 0.1 + player_id.fspecial_charge/30;
                            else if (jy < -0.5) other.vsp =  -0.1 - player_id.fspecial_charge/30;
                        }
                        */
                    }
                }
                /* DOES NOT RUN
                else if (attack == AT_FSPECIAL && player_id.window == 4) {
                    other.hit_by = 3;
                    other.spr_dir = player_id.spr_dir;
                    other.length += 180;
                    other.stun = 35 - round(player_id.fspecial_charge * 1);
                    if (other.stun < 5) other.stun = 5;
                    player_id.hitpause = true;
                    player_id.hitstop = other.stun;
                    player_id.old_hsp = player_id.spr_dir * -5;
                    player_id.old_vsp = -5;
                }
                */
            }
        }
    }
    if (stun == 0) {
        stun = -1;
        destroyed = true;
        var effect = spawn_hit_fx(x + 32 * player_id.spr_dir,y,player_id.fireball_launch_effect);
        effect.depth = -11;
        effect.spr_dir = player_id.spr_dir;
        if (hit_by == 0) { // DASH PUNCH
            //player_id.hsp *= 2; // with dash punch speed at 12
            player_id.hsp *= 1.85; // with dash punch speed at 14
            player_id.old_hsp *= 2;
            sound_play(asset_get("sfx_blow_medium1"));
            sound_play(asset_get("sfx_absa_orb_miss"));
            /*
            fireball.damage = 10;
            fireball.kb_value = 8;
            fireball.kb_scale = 0.8;
            fireball.hitpause = 15;
            */
        } else if (hit_by == 1) { // KICK
            var fireball = create_hitbox(AT_FSPECIAL, 4, round(x), round(y));
            fireball.spr_dir = player_id.spr_dir;
            sound_play(asset_get("sfx_blow_weak2"));
            sound_play(asset_get("sfx_absa_orb_miss"));
            effect.draw_angle = 45 * player_id.spr_dir;
            effect.y -= 16;
            effect.x -= 16 * player_id.spr_dir;
            fireball.hsp = 9 * player_id.spr_dir;
            fireball.vsp = -9;
            if (!player_id.joy_pad_idle) {
                var control = 2;
                var jy = lengthdir_y(1, player_id.joy_dir);
                if (jy < -0.5) {
                    fireball.hsp -= control * player_id.spr_dir;
                    fireball.vsp -= control;
                    fireball.x -= 10 * player_id.spr_dir;
                } else if (jy > 0.5) {
                    fireball.hsp += control * player_id.spr_dir;
                    fireball.vsp += control;
                    fireball.y += 10;
                }
            }
        } else if (hit_by == 2) { // DRAGON PUNCH
            sound_play(asset_get("sfx_absa_cloud_crackle"));
            effect.x -= 32 * player_id.spr_dir;
            effect.draw_angle = 90 * player_id.spr_dir;
            if (player_id.window == 2) {
                player_id.attack = AT_USPECIAL_GROUND;
            } else {
                player_id.attack = AT_USPECIAL_GROUND;
                player_id.vsp -= 7;
            }
        } else if (hit_by == 3) { // LIGHTNING PALM
            sound_play(asset_get("sfx_absa_uair"));
            effect.x = x - 50 * spr_dir;
            effect.spr_dir = spr_dir;
            var lightning = create_hitbox(AT_JAB, 3, round(x + 60 * spr_dir), round(y));
            lightning.spr_dir = spr_dir;
            destroyed = true;
        }
    }
}

