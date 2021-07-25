//hitbox_update

if (attack == AT_DSPECIAL) && (hbox_num == 1) {
    //draw steam trail
    dspecSteamSprite = randomise_steam_sprite(hitbox_timer);
    with oPlayer {
        if player == other.player {
            set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, other.dspecSteamSprite);
        }
    }
    
    if (hitbox_timer mod 1.5 == 0) {
        create_hitbox(AT_DSPECIAL, 2, x, y);
    }
    
    
    if (place_meeting(x, y, player_id)) && (hitPlayer == false) { //if hits player, replenish water
        player_id.meter_water += player_id.dspecialWater;
        if (player_id.meter_water + player_id.meter_steam >= player_id.meter_capacity) {
            player_id.meter_water = player_id.meter_capacity - player_id.meter_steam;
        }
        hitPlayer = true;
        sound_play(asset_get("sfx_waterwarp_start"))
    }
    
    if (!free && player == orig_player) { //creates puddle when hitting the ground
        with player_id {
            puddleId = instance_position(other.x, other.y + 22, obj_article1);
            
            if (puddleId) {
                with obj_article1 {
                    if (id == other.puddleId) {
                        if (size < maxSize - 3) {
                            size += 3;
                        } else {
                            size = maxSize;
                        }
                        recentNum = get_gameplay_time();
                    }
                }
            } else {
                
                //destroy oldest puddle
                if (puddleNum >= puddleNumMax) {
                    recentVar = 1000000000000000000000000;
                    with obj_article1 {
                        if (player == other.player) {
                            if (recentNum < other.recentVar) {
                                other.recentVar = recentNum;
                            }
                        }
                    }
                    with obj_article1 {
                        if (player == other.player) {
                            if (recentNum == other.recentVar) {
                                dissolve = true;
                            }
                        }
                    }
                }
                
                var puddle = instance_create(other.x, other.y + 22, "obj_article1");
                    puddle.player_id = id;
                    puddle.spr_dir = spr_dir;
                    puddle.size = 6;
            }   
        }
    }
    
    if (!free) {//destroy if hits the ground or past blastzones
        destroyed = true;
        sound_play(asset_get("sfx_waterhit_medium"));
        shake_camera(5, 5);
    } else if ((y > room_height + 100) || (x > room_width + 100) || (x < -100)) && (hitbox_timer >= 60) {
        destroyed = true;
    }
}

if (attack == AT_NSPECIAL) {
    if (hbox_num == 1) {
        if activated { //no grav, go fast
            activated_timer++;
            if activated_timer == 1 || activated_timer == 8 {
                sound_play(sound_get("snake_prime1"), false, noone, 1, 0.9)
            }
            create_hitbox(AT_NSPECIAL, 2, x, y)
            destroyed = true;
            player_id.move_cooldown[AT_NSPECIAL] = 20
            spawn_hit_fx(x, y, 150)
            spawn_hit_fx(x, y, 115)
            spawn_hit_fx(x, y, 108)
            sound_play(asset_get("sfx_waterhit_heavy2"))
            sound_play(asset_get("sfx_ell_utilt_cannon"))
            /*
            if activated_timer == 1 {
                var _angle = darctan2(vsp,hsp)
                hsp = dcos(_angle)*15
                vsp = dsin(_angle)*15
                grav = 0;
                air_friction = 0;
            }
            */
        }
        proj_angle = darctan2(-vsp * spr_dir, hsp * spr_dir) + 135*spr_dir;
        if (!free && player == orig_player) {
            //create puddle
            with player_id {
                puddleId = instance_position(other.x, other.y + 22, obj_article1)
                if (puddleId) {
                    with obj_article1 {
                        if (id == other.puddleId) {
                            if (size < maxSize - 6) {
                                size += 6;
                            } else {
                                size = maxSize;
                            }
                            recentNum = get_gameplay_time();
                        }
                    }
                } else {
                    
                    //destroy oldest puddle
                    if (puddleNum >= puddleNumMax) {
                        recentVar = 1000000000000000000000000;
                        with obj_article1 {
                            if (player == other.player) {
                                if (recentNum < other.recentVar) {
                                    other.recentVar = recentNum;
                                }
                            }
                        }
                        with obj_article1 {
                            if (player == other.player) {
                                if (recentNum == other.recentVar) {
                                    dissolve = true;
                                }
                            }
                        }
                    }
                    
                    var puddle = instance_create(other.x, other.y + 22, "obj_article1");
                        puddle.player_id = id;
                        puddle.spr_dir = spr_dir;
                        puddle.size = 10;
                }
            }
        }
        
        if (!free) { //destroy if hits the ground
            destroyed = true;
            sound_play(asset_get("sfx_watergun_splash"));
        }
        
        if (y > player_id.room_height) || (x > room_width + 100) || (x < -100) {
            destroyed = true;
        }
    } else if (hbox_num == 2) {
        if (!free) {
            destroyed = true;
        }
    }
}

if (attack == AT_FSPECIAL) {
    if (hbox_num == 2) {
        if (y < 0) {
            destroyed = true;
        }
    } else if hbox_num == 4 {
        if instance_place(x, y, player_id) {
            if get_gameplay_time() mod 5 == 0 && (player_id.meter_water + player_id.meter_steam < player_id.meter_capacity) {
                player_id.meter_steam++;
            }
        }
    }
}

#define randomise_steam_sprite
var steamSprite = undefined;

if get_player_color(player_id.player) == 17 steamSprite = sprite_get("steam_particle" + string(random_func(argument0, 12, true)) + "_arc");
else steamSprite = sprite_get("steam_particle" + string(random_func(argument0, 12, true)));

return steamSprite;