if (player_id != bird_luigi_id){
    player_id = bird_luigi_id;
}

if (fireballfloat){
    luigifiregravity = 0;
    vsp *= 0.95;
    hsp *= 0.95;
} else {
    luigifiregravity = 0.2;
}

if (hsp > 0){
    spr_dir = 1;
}
if (hsp < 0){
    spr_dir = -1;
}

if (free){
    vsp += luigifiregravity;
    fireball_draw_angle -= hsp;
    fireball_vsp = vsp;
    if (!hit_wall){
        fireball_hsp = hsp;
    }
    if (vsp > 2|| vsp < -2 || hsp < -2 || hsp > 2) && (mostrecenthitowner == player_id){
        var egghitbox = create_hitbox( AT_NSPECIAL_2, 1, x, y );
        egghitbox.steve_death_message = player_id.steve_death_message_egg;
    }
    if (vsp > 2|| vsp < -2 || hsp < -2 || hsp > 2) && (dr_mario_cape_timer > 0 && dr_mario_cape_id != noone){
        var egghitbox = create_hitbox( AT_NSPECIAL_2, 1, x, y );
        egghitbox.steve_death_message = string_replace(player_id.steve_death_message_egg, "Bird Luigi", "Dr. Mario");
        egghitbox.can_hit_self = true;
    }
}

if (get_gameplay_time()%20 == 0 && fireball_onfire){
    with (fireball_onfire_id){
        if ("luigi_fire_persist" in self){
            spawn_hit_fx(other.x - 25 + random_func(1, 51, true), other.y - 16 + random_func(2, 32, true), luigi_fire_persist);
        }
    }
}

if (!free || hit_wall) && (!egg_hitpause){
    if (bounces >= 1){
        sound_play(sound_get("crack"));
        spawn_hit_fx(x, y - 10, 302);
    }
    if (!free){
        vsp = fireball_vsp * -0.7;
        vsp -= 1;
        hsp *= 0.8;
    }
    if (hit_wall){
        hsp = fireball_hsp * -0.8;
    }
    if (!free && hit_wall){
        sound_play(asset_get("sfx_chester_appear"));
    }
    if (bounces < 1){
        sound_play(sound_get("crack2"));
        spawn_hit_fx(x, y - 10, player_id.luigi_fire_small);
        player_id.luigi_fireball = noone;
        player_id.in_range_of_egg_throw = false;
        instance_destroy();
        exit;
    }
    bounces -= 1;
}

if (y > room_height){
    with(player_id){
        if (has_rune("B")){
            with(other){
                if (bounces >= 1){
                    sound_play(sound_get("crack"));
                    spawn_hit_fx(x, y - 10, 302);
                }
                vsp = fireball_vsp * -0.7 - 1;
                hsp *= 0.8;
                if (bounces < 1){
                    sound_play(sound_get("crack2"));
                    player_id.luigi_fireball = noone;
                    player_id.in_range_of_egg_throw = false;
                    instance_destroy();
                    exit;
                }
                bounces -= 1;
            }
        } else {
            with(other){
                player_id.luigi_fireball = noone;
                instance_destroy();
                exit;
            }
        }
    }
}

if (get_gameplay_time()%6 == 0){
    var fireball_trail_fx = spawn_hit_fx(x, y, player_id.vfx_boulder_trail);
    fireball_trail_fx.depth = depth+1;
    fireball_trail_fx.spr_dir = -1+(x mod 2)*2;
    fireball_trail_fx.draw_angle = (y mod 4)*90
}

if (player_id.phone_cheats[player_id.cheat_egg_hit] == 2){
    hitboxdetect = collision_rectangle(x - 16, y - 16, x + 16, y + 16, asset_get("pHitBox"), false, true);
    if (hitboxdetect != noone && player_id.phone_cheats[player_id.cheat_egg_hit] == 2){
        var egg_should_be_hit = false;
        with(hitboxdetect){
            if (!"has_hit_luigi_egg" in self) || ("has_hit_luigi_egg" in self && has_hit_luigi_egg = false){
                egg_should_be_hit = true;
                has_hit_luigi_egg = true;
                with(player_id){
                    if (other.hbox_group != -1 && other.type == 1){
                        if (group_hit_luigi_egg[other.hbox_group] || other.hbox_group > 20){
                            egg_should_be_hit = false;
                        } else {
                            group_hit_luigi_egg[other.hbox_group] = true;
                        }
                    }
                }
            }
        }
        if !(hitboxdetect.player_id == player_id && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_NSPECIAL_2) && (egg_should_be_hit){
            fireballfloat = false;
            hsp *= 0.3;
            vsp *= 0.3;
            hsp += lengthdir_x(hitboxdetect.kb_value, hitboxdetect.kb_angle) * hitboxdetect.spr_dir;
            vsp += lengthdir_y(hitboxdetect.kb_value, hitboxdetect.kb_angle);
            sound_play(hitboxdetect.sound_effect);
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DAIR){
                hitboxdetect.player_id.vsp = -7.5;
                vsp = 7.5;
                if (hitboxdetect.player_id.left_down){
                    hitboxdetect.player_id.hsp -= 4;
                }
                if (hitboxdetect.player_id.right_down){
                    hitboxdetect.player_id.hsp += 4;
                }
            }
            if (hitboxdetect.damage > 5 && hitboxdetect.player_id != player_id){
                if (bounces < 1){
                    sound_play(sound_get("crack2"));
                    spawn_hit_fx(x, y - 10, player_id.luigi_fire_small);
                    player_id.luigi_fireball = noone;
                    instance_destroy();
                    exit;
                }
                bounces -= 1;
            }
            if (hitboxdetect.hit_effect != 1){
                var hitboxget = hitboxdetect;
                with(hitboxdetect.player_id){
                    spawn_hit_fx(other.x + hitboxget.hit_effect_x * hitboxget.spr_dir, other.y + hitboxget.hit_effect_y, hitboxget.hit_effect);
                }
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 2 && hitboxdetect.attack == AT_DAIR) || (hitboxdetect.player_id.url == "1926836320" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DAIR){
                hitboxdetect.player_id.vsp = -10;
                vsp = 10;
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DSPECIAL_2){
                fireball_onfire = true;
                fireball_firetimer = 150;
                sound_play(asset_get("sfx_burnapplied"));
                hsp += 3 * hitboxdetect.spr_dir;
                fireball_onfire_id = hitboxdetect.player_id;
                fireball_weakfire = false;
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_FTILT){
                fireball_onfire = true;
                fireball_firetimer = 20;
                sound_play(asset_get("sfx_burnapplied"));
                hsp += 3 * hitboxdetect.spr_dir;
                fireball_onfire_id = hitboxdetect.player_id;
                fireball_weakfire = true;
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.attack == AT_DSTRONG){
                fireball_onfire = true;
                fireball_firetimer = 150;
                sound_play(asset_get("sfx_burnapplied"));
                hsp += 3 * hitboxdetect.spr_dir;
                fireball_onfire_id = hitboxdetect.player_id;
                fireball_weakfire = true;
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num != 3 && hitboxdetect.attack == AT_FSTRONG && hitboxdetect.player_id.misfire_active){
                fireball_onfire = true;
                fireball_firetimer = 60;
                sound_play(asset_get("sfx_burnapplied"));
                hsp += 3 * hitboxdetect.spr_dir;
                fireball_onfire_id = hitboxdetect.player_id;
                fireball_weakfire = true;
            }
            if (hitboxdetect.player_id.url == CH_SHOVEL_KNIGHT || hitboxdetect.player_id.url == "1981866423") && (hitboxdetect.attack == AT_DAIR){
                hitboxdetect.player_id.vsp = -7.5;
                vsp = 7.5;
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1) && (hitboxdetect.attack == AT_FTHROW || hitboxdetect.attack == 50){
                fireballfloat = true;
                vsp = 0;
                hsp = hitboxdetect.player_id.hsp;
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 2) && (hitboxdetect.attack == AT_FTHROW || hitboxdetect.attack == 50){
                fireball_onfire = true;
                fireball_firetimer = 20;
                sound_play(asset_get("sfx_burnapplied"));
                hsp += 3 * hitboxdetect.spr_dir;
                fireball_onfire_id = hitboxdetect.player_id;
                fireball_weakfire = true;
            }
            if (hitboxdetect.player_id.url == "2273636433" && hitboxdetect.attack == AT_FSPECIAL){
                dr_mario_cape_id = hitboxdetect.player_id;
                dr_mario_cape_timer = 120;
                with (hitboxdetect.player_id){
                    if (!invincible){
                        invincible = true;
                        invince_time = 5;
                    } else {
                        if (invince_time < 5){
                            invince_time = 5;
                        }
                    }
                }
            }
            if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DSPECIAL){
                hitboxdetect.egg_grab_id = id;
                fireballfloat = true;
                hsp = hitboxdetect.spr_dir * -1;
                vsp = 0;
                egg_old_hsp = hitboxdetect.spr_dir * -1;
                egg_old_vsp = 0;
            }
            if (hitboxdetect.player_id.url == CH_ORI && hitboxdetect.attack == AT_DAIR && hitboxdetect.hbox_num == 1){
                with(hitboxdetect.player_id){
                    set_state(PS_DOUBLE_JUMP);
                    vsp = djump_speed * -1;
                    old_vsp = vsp;
                    move_cooldown[AT_DAIR] = 30;
                }
            }
            with(hitboxdetect.player_id){
                if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ("has_hit_luigi_egg" in self){
                    has_hit_luigi_egg = true;
                }
            }
            egg_old_hsp = hsp;
            egg_old_vsp = vsp;
            egg_hitpause = true;
            egg_hitstop = clamp(hitboxdetect.hitpause, 0, 20) + hitboxdetect.extra_hitpause;
            egg_hitstop_full = egg_hitstop;
            if (hitboxdetect.type == 1){
                hitboxdetect.player_id.hitpause = true;
                hitboxdetect.player_id.hitstop = clamp(hitboxdetect.hitpause, 0, 20);
                hitboxdetect.player_id.old_vsp = hitboxdetect.player_id.vsp;
                hitboxdetect.player_id.old_hsp = hitboxdetect.player_id.hsp;
            }
            if (hitboxdetect.type == 2 && hitboxdetect.enemies == 0){
                hitboxdetect.destroy_fx = 1;
                hitboxdetect.destroyed = true;
            }
            mostrecenthit = hitboxdetect;
            mostrecenthitowner = hitboxdetect.player_id;
        }
    }
}

if (player_id.phone_cheats[player_id.cheat_egg_hit] == 1){
    with(asset_get("pHitBox")){
        with(player_id){
            other.hitboxdetect_shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
            other.hitboxdetect_width = get_hitbox_value(other.attack, other.hbox_num, HG_WIDTH);
            other.hitboxdetect_height = get_hitbox_value(other.attack, other.hbox_num, HG_HEIGHT);
        }
        var egg_collide = noone;
        switch(hitboxdetect_shape){
            case 0:
                var egg_collide = collision_ellipse(x - round(hitboxdetect_width * 0.5), y - round(hitboxdetect_height * 0.5), x + round(hitboxdetect_width * 0.5), y + round(hitboxdetect_height * 0.5), other, false, true);
            break;

            default:
                var egg_collide = collision_rectangle(x - round(hitboxdetect_width * 0.5), y - round(hitboxdetect_height * 0.5), x + round(hitboxdetect_width * 0.5), y + round(hitboxdetect_height * 0.5), other, false, true);
            break;
        }
        var egghitcancelduetohitboxgroup = false;
        with(player_id){
            if (other.hbox_group != -1 && other.type == 1){
                if (group_hit_luigi_egg[other.hbox_group] || other.hbox_group > 20){
                    egghitcancelduetohitboxgroup = true;
                }
            }
        }
        if (attack == AT_NSPECIAL_2 && player_id == other.player_id) || ("has_hit_luigi_egg" in self && has_hit_luigi_egg) || (egghitcancelduetohitboxgroup){
            egg_collide = noone;
        }
        if (egg_collide == other){
            with(other){
                other.has_hit_luigi_egg = false;
                var hitboxdetect = other;
                fireballfloat = false;
                hsp *= 0.3;
                vsp *= 0.3;
                var egg_launchangle = hitboxdetect.kb_angle;
                with (hitboxdetect.player_id){
                    if ("HG_MUNO_OBJECT_LAUNCH_ANGLE" in self){
                        if (get_hitbox_value(hitboxdetect.attack, hitboxdetect.hbox_num, HG_MUNO_OBJECT_LAUNCH_ANGLE) != 0){
                            egg_launchangle = get_hitbox_value(hitboxdetect.attack, hitboxdetect.hbox_num, HG_MUNO_OBJECT_LAUNCH_ANGLE);
                        }
                    }
                }
                hsp += lengthdir_x(hitboxdetect.kb_value, egg_launchangle) * hitboxdetect.spr_dir;
                vsp += lengthdir_y(hitboxdetect.kb_value, egg_launchangle);
                sound_play(hitboxdetect.sound_effect);
                with (hitboxdetect.player_id){
                    spawn_hit_fx(hitboxdetect.x + hitboxdetect.hit_effect_x * hitboxdetect.spr_dir, hitboxdetect.y + hitboxdetect.hit_effect_y, hitboxdetect.hit_effect);
                }
                with(hitboxdetect.player_id){
                    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ("has_hit_luigi_egg" in self){
                        has_hit_luigi_egg = true;
                    }
                }

                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DAIR){
                    hitboxdetect.player_id.vsp = -7.5;
                    vsp = 7.5;
                    if (hitboxdetect.player_id.left_down){
                        hitboxdetect.player_id.hsp -= 4;
                    }
                    if (hitboxdetect.player_id.right_down){
                        hitboxdetect.player_id.hsp += 4;
                    }
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 2 && hitboxdetect.attack == AT_DAIR) || (hitboxdetect.player_id.url == "1926836320" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DAIR){
                    hitboxdetect.player_id.vsp = -10;
                    vsp = 10;
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DSPECIAL_2){
                    fireball_onfire = true;
                    fireball_firetimer = 150;
                    sound_play(asset_get("sfx_burnapplied"));
                    hsp += 3 * hitboxdetect.spr_dir;
                    fireball_onfire_id = hitboxdetect.player_id;
                    fireball_weakfire = false;
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_FTILT){
                    fireball_onfire = true;
                    fireball_firetimer = 20;
                    sound_play(asset_get("sfx_burnapplied"));
                    hsp += 3 * hitboxdetect.spr_dir;
                    fireball_onfire_id = hitboxdetect.player_id;
                    fireball_weakfire = true;
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.attack == AT_DSTRONG){
                    fireball_onfire = true;
                    fireball_firetimer = 150;
                    sound_play(asset_get("sfx_burnapplied"));
                    hsp += 3 * hitboxdetect.spr_dir;
                    fireball_onfire_id = hitboxdetect.player_id;
                    fireball_weakfire = true;
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num != 3 && hitboxdetect.attack == AT_FSTRONG && hitboxdetect.player_id.misfire_active){
                    fireball_onfire = true;
                    fireball_firetimer = 60;
                    sound_play(asset_get("sfx_burnapplied"));
                    hsp += 3 * hitboxdetect.spr_dir;
                    fireball_onfire_id = hitboxdetect.player_id;
                    fireball_weakfire = true;
                }
                if (hitboxdetect.player_id.url == CH_SHOVEL_KNIGHT || hitboxdetect.player_id.url == "1981866423") && (hitboxdetect.attack == AT_DAIR){
                    hitboxdetect.player_id.vsp = -7.5;
                    vsp = 7.5;
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1) && (hitboxdetect.attack == AT_FTHROW || hitboxdetect.attack == 50){
                    fireballfloat = true;
                    vsp = 0;
                    hsp = hitboxdetect.player_id.hsp;
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 2) && (hitboxdetect.attack == AT_FTHROW || hitboxdetect.attack == 50){
                    fireball_onfire = true;
                    fireball_firetimer = 20;
                    sound_play(asset_get("sfx_burnapplied"));
                    hsp += 3 * hitboxdetect.spr_dir;
                    fireball_onfire_id = hitboxdetect.player_id;
                    fireball_weakfire = true;
                }
                if (hitboxdetect.player_id.url == "2273636433" && hitboxdetect.attack == AT_FSPECIAL){
                    dr_mario_cape_id = hitboxdetect.player_id;
                    dr_mario_cape_timer = 120;
                    with (hitboxdetect.player_id){
                        if (!invincible){
                            invincible = true;
                            invince_time = 5;
                        } else {
                            if (invince_time < 5){
                                invince_time = 5;
                            }
                        }
                    }
                }
                if (hitboxdetect.player_id.url == "2222467652" && hitboxdetect.hbox_num == 1 && hitboxdetect.attack == AT_DSPECIAL){
                    hitboxdetect.egg_grab_id = id;
                    fireballfloat = true;
                    hsp = hitboxdetect.spr_dir * -1;
                    vsp = 0;
                    egg_old_hsp = hitboxdetect.spr_dir * -1;
                    egg_old_vsp = 0;
                }
                if (hitboxdetect.player_id.url == CH_ORI && hitboxdetect.attack == AT_DAIR && hitboxdetect.hbox_num == 1){
                    with(hitboxdetect.player_id){
                        set_state(PS_DOUBLE_JUMP);
                        vsp = djump_speed * -1;
                        old_vsp = vsp;
                        move_cooldown[AT_DAIR] = 30;
                    }
                }

                egg_old_hsp = hsp;
                egg_old_vsp = vsp;
                egg_hitpause = true;
                egg_hitstop = clamp(hitboxdetect.hitpause, 0, 20) + hitboxdetect.extra_hitpause;
                egg_hitstop_full = egg_hitstop;
                if (hitboxdetect.type == 1){
                    hitboxdetect.player_id.hitpause = true;
                    hitboxdetect.player_id.hitstop = clamp(hitboxdetect.hitpause, 0, 20);
                    hitboxdetect.player_id.old_vsp = hitboxdetect.player_id.vsp;
                    hitboxdetect.player_id.old_hsp = hitboxdetect.player_id.hsp;
                }
                if (hitboxdetect.type == 2 && hitboxdetect.enemies == 0){
                    hitboxdetect.destroy_fx = 1;
                    hitboxdetect.destroyed = true;
                }
                mostrecenthit = hitboxdetect;
                mostrecenthitowner = hitboxdetect.player_id;
                with(hitboxdetect){
                    if (!"has_hit_luigi_egg" in self) || ("has_hit_luigi_egg" in self && has_hit_luigi_egg = false){
                        egg_should_be_hit = true;
                        has_hit_luigi_egg = true;
                        with(player_id){
                            if (other.hbox_group != -1 && other.type == 1){
                                if (group_hit_luigi_egg[other.hbox_group] || other.hbox_group > 20){
                                    egg_should_be_hit = false;
                                } else {
                                    group_hit_luigi_egg[other.hbox_group] = true;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

player_id.in_range_of_egg_throw = false;
playerdetect = collision_rectangle(x - 20, y - 20, x + 20, y + 20, player_id, false, true);
if (playerdetect != noone && instance_exists(playerdetect)){
    with(playerdetect){
        if (egg_catch_cooldown <= 1){
            in_range_of_egg_throw = true;
            if (special_pressed && up_down && can_special){
                move_cooldown[AT_USPECIAL] = 0;
                set_attack(AT_USPECIAL);
                egg_catch_cooldown = 60;
                egg_stored = true;
                egg_store_bounces = other.bounces;
                egg_store_fireball_onfire = other.fireball_onfire;
                egg_store_fireball_onfire_id = other.fireball_onfire_id;
                egg_store_fireball_weakfire = other.fireball_weakfire;
                egg_store_fireball_firetimer = other.fireball_firetimer;
                with(other){
                    instance_destroy();
                    exit;
                }
            }
        }
    }
}

if (egg_hitpause){
    hsp = 0;
    vsp = 0;
    egg_hitstop -= 1;
    if (egg_hitstop <= 0){
        egg_hitpause = false;
        hsp = egg_old_hsp;
        vsp = egg_old_vsp;
    }
} else {
    egg_hitstop_full = 0;
}

if (dr_mario_cape_timer > 0){
    dr_mario_cape_timer -= 1;
}
fireball_firetimer -= 1;
if (fireball_firetimer < 0){
    if (fireball_onfire){
        sound_play(asset_get("sfx_burnend"));
    }
    fireball_weakfire = false;
    fireball_onfire = false;
    fireball_onfire_id = player_id;
}