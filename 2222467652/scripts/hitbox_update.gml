if (attack == AT_UTILT && hbox_num == 1){
    player_id.move_cooldown[AT_UTILT] = 5;
    x = player_id.x + (1 * player_id.spr_dir);
    if (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR) || (player_id.attack != AT_UTILT){
        destroyed = true;
    }
}

if (attack == AT_FTHROW && hbox_num == 3) || (attack == AT_UTHROW && hbox_num == 1){
    hsp *= 0.9;
    vsp *= 0.9;
    if (get_gameplay_time()%2 == 0){
        with(player_id){
            var fspecialsuperfirefx = spawn_hit_fx(other.x, other.y, luigi_fire);
        }
        fspecialsuperfirefx.draw_angle = point_direction(0,0,hsp,vsp);
        if (spr_dir < 0){
            fspecialsuperfirefx.draw_angle += 180;
        }
        fspecialsuperfirefx.spr_dir = spr_dir;
    }
}

if (attack == AT_DSPECIAL && hbox_num == 1){
    if !("birdluigi_dspecial_grabbed_id" in self){
        birdluigi_dspecial_grabbed_id = noone;
    }
    if !("parry_grab_id" in self) && (hitbox_timer < 20){
        if (player_id.up_down){
            vsp -= 0.5;
        }
        if (player_id.down_down){
            vsp += 0.5;
        }
    }
    with(player_id){
        if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || (attack != AT_DSPECIAL){
            other.destroyed = true;
        }
    }
    if (x > player_id.x - 40 && x < player_id.x + 40 && y > player_id.y - 50 && y < player_id.y){
        birdluigi_dspecial_player_detect = true;
    } else {
        birdluigi_dspecial_player_detect = false;
    }
    if (birdluigi_dspecial_grabbed_id == noone){
        var birdluigi_dspecial_retract_speed = 0.45;
        if (x > player_id.x - 40 && x < player_id.x + 40 && y > player_id.y - 50 && y < player_id.y){
            birdluigi_dspecial_retract_speed = 0;
        }
        if (x > player_id.x){
            hsp *= 0.95;
            hsp -= birdluigi_dspecial_retract_speed;
        }
        if (x < player_id.x){
            hsp *= 0.95;
            hsp += birdluigi_dspecial_retract_speed;
        }
        if (y > player_id.y - 30){
            vsp *= 0.95;
            vsp -= birdluigi_dspecial_retract_speed;
        }
        if (y < player_id.y - 30){
            vsp *= 0.95;
            vsp += birdluigi_dspecial_retract_speed;
        }
        if ("has_hit_luigi_egg" in self){
            if (has_hit_luigi_egg && "egg_grab_id" in self){
                if (instance_exists(egg_grab_id)){
                    egg_grab_id.x = x + spr_dir * 4;
                    egg_grab_id.y = y;
                    with(egg_grab_id){
                        var egghitbox = create_hitbox(AT_NSPECIAL_2, 1, other.x, other.y).player_id = other.player_id;
                        egghitbox.steve_death_message = other.player_id.steve_death_message_egg;
                        if (player_id != other.player_id){
                            egghitbox.can_hit_self = true;
                        }
                    }
                    x += round(hsp * 0.25);
                }
            }
        } else {
            if ("parry_grab_id" in self){
                parry_grab_id.x = x;
            }
        }
    } else {
        birdluigi_dspecial_grabbed_id.x = x;
        birdluigi_dspecial_grabbed_id.y = y + 30;
        var birdluigi_dspecial_retract_speed = 2;
        with(player_id){
            if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (window == 3 && attack == AT_DSPECIAL){
                window_timer = 1;
            }
        }
        if (!place_meeting(x, y, player_id)){
            if (x > player_id.x){
                hsp *= 0.9;
                hsp -= birdluigi_dspecial_retract_speed;
            }
            if (x < player_id.x){
                hsp *= 0.9;
                hsp += birdluigi_dspecial_retract_speed;
            }
            if (y > player_id.y - 30){
                vsp *= 0.9;
                vsp -= birdluigi_dspecial_retract_speed;
            }
            if (y < player_id.y - 30){
                vsp *= 0.9;
                vsp += birdluigi_dspecial_retract_speed;
            }
        }
    }
}

if (attack == AT_DSPECIAL && hbox_num == 2){
    if ("birdluigi_dspecial_grabbed_id" in self){
        x = birdluigi_dspecial_grabbed_id.x;
        y = birdluigi_dspecial_grabbed_id.y - 10;
    }
}

if (attack == AT_NSPECIAL_2 && hbox_num == 3){
    if (hitbox_timer > 60){
        hsp = 0;
        vsp = 0;
        if !("bl_loudbird_die_value" in self){
            bl_loudbird_die_value = random_func(2, 5, true) + 1;
            sprite_index = asset_get("empty_sprite");
            sound_play(asset_get("sfx_gem_collect"));
        }
        if (hitbox_timer < 80){
            y -= (20 - (hitbox_timer - 60)) / 10;
        }
    }
}