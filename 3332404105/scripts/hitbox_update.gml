//updating the hitbox
state_timer ++

if (attack == AT_FSPECIAL){
    if (free == true){
        free_vsp = vsp;
    }
    if (hitbox_timer == length && hbox_num < 21){
        spawn_hit_fx(x, y, player_id.vfx_ify)
    }
    switch (item_id){
        case 1:
            proj_angle += hsp * sign(hsp) + vsp * sign(vsp);
            through_platforms += 2;
            if (free == false || hitbox_timer > 40){
                with(player_id){
                    sound_play(sfx_what, false, false, 0.1)
                    vial_imagination += 40
                }
                instance_destroy(self);
            }
        break;
        case 2:
            proj_angle += random_func(10, 35, true);
            through_platforms += 2;
            kb_angle = random_func(10, 360, true);
            if (free == false){
                vsp = free_vsp * -0.95;
                hsp *= 1.5;
                with(player_id){
                    sound_play(sfx_crash)
                }
            }
        break;
        case 3:
            proj_angle += 5;
            if (destroyed == true || free == false || has_hit_someone != 0){
                state = 1;
            }
            if (state == 1){
                if (!instance_exists(hbox_created)){
                    hbox_created = create_hitbox(AT_FSPECIAL, player_id.itm_coffee + 20, x, y);
                    hbox_created.player = player;
                    hbox_created.player_id = player_id;
                    hbox_created.orig_player = orig_player;
                    destroyed = true;
                    sound_play(asset_get("sfx_ice_shatter"));
                }
            }
        break
        case 4:
            proj_angle += 40;
            if (free == false){
                vsp = free_vsp * -0.8;
                sound_play(sound_get("click"))
            }
        break
        case 5:
            player = player_id.player;
            if (free == false){
                with (player_id){
                    window_art[window_rot] = instance_create(other.x, other.y, "obj_article1");
                    window_art[window_rot].window_0_or_1 = window_rot;
                    window_art[window_rot].player_id = id;
                    window_art[window_rot].hsp = other.hsp;
                    window_art[window_rot].vsp = other.vsp;
                    sound_play(asset_get("sfx_shovel_hit_heavy2"));
                    if (window_rot == 1){
                        window_rot = 0;
                    } else{
                        window_rot = 1;
                    }
                    other.destroyed = 1;
                }
            }
        break
        case 6:
            if (state == 0){
                if (has_hit_someone != 0){
                    state = 1;
                    state_timer = 0;
                    generic_counter1 = (x - has_hit_someone_id.x) * has_hit_someone_id.spr_dir
                    generic_counter2 = y - has_hit_someone_id.y
                }
                if (place_meeting(x, y, asset_get("par_block"))){
                    state = 2;
                    state_timer = 0;
                    hsp = 0;
                    vsp = 0;
                    length += 240
                }
            }
            if (state != 0){
                hsp = 0;
                vsp = 0;
            }
            if (state == 1){
                if (instance_exists(has_hit_someone_id)){
                    x = has_hit_someone_id.x + generic_counter1 * has_hit_someone_id.spr_dir;
                    y = has_hit_someone_id.y + generic_counter2;
                } else{
                    vsp = 4;
                    has_hit_someone = 0;
                    image_index = 1;
                    mask_index = sprite_get("hbox_knifebear2");
                    state = 0
                }
            }
        break
        
        case 7:
            through_platforms += 19
            if (hsp == 0 || vsp > 0){
                if (state == 0 && state_timer > 12){
                    state = 1;
                    state_timer = 0;
                    has_hit = false;
                    sound_play(asset_get("sfx_kragg_rock_pull"), false, false, 1, 1.5)
                }
            }
            if (state != 0){
                hsp = 0;
            }
            if (state == 1){
                if (state_timer > 16){
                    hit_priority = 10;
                    vsp = 18;
                    damage = 9;
                    kb_angle = 270;
                    kb_value = 10;
                    kb_scale = 2;
                    hitpause = 50;
                    hitpause_growth = 0.6
                    mask_index = sprite_get("hbox_bust")
                } 
                if (state_timer < 6){
                    vsp = 0
                }
                if (state_timer == 6){
                    vsp -= 4
                    sound_play(asset_get("sfx_kragg_rock_pull"), false, false, 1, 0.75)
                }
            }
            if (free == false){
                if (state != 2){
                    state = 2;
                    state_timer = 0;
                    sound_play(asset_get("sfx_kragg_rock_shatter"));
                    shake_camera(4, 12)
                }
            }
            if (state == 2){
                hit_priority = 0;
                if (state_timer > 700){
                    spawn_hit_fx(x, y, player_id.vfx_ify);
                    destroyed_next = true;
                }
            }
        break
        
        case 8:
            proj_angle += 45;
            if (state == 1){
                if (state_timer == 0){
                    sound_play(sound_get("burst"));
                }
                generic_counter1 += 1;
                hsp = 0
                vsp = 0
                if (generic_counter1 = 2){
                    hbox_created = create_hitbox(AT_FSPECIAL, 4, x, y)
                    hbox_created.hsp = lengthdir_x(10, 0 + 45 * floor(generic_counter2));
                    hbox_created.spr_dir = sign(lengthdir_x(10, 0 + 45 * generic_counter2) + 1)
                    hbox_created.vsp = lengthdir_y(10, 0 + 45 * floor(generic_counter2));
                    
                    hbox_created.length = 10
                    hbox_created.player_id = player_id;
                    hbox_created.player = player;
                    hbox_created.can_hit_self = true;
                    hbox_created.grav = 0;
                    hbox_created.air_fric = 0;
                    hbox_created.walls = 1;
                    hbox_created.grounds = 1;
                    generic_counter1 = 0;
                    generic_counter2 += 1;
                } 
                if (generic_counter2 >= 16){
                    destroyed = true;
                }
            } else{
            if (free == false || has_hit == true || hitbox_timer > 10){
                    state = 1;
                    state_timer = 0;
                    sound_play(player_id.sfx_pew);
                }
            }
        break
        
        case 9:
            if (generic_counter1 == 0){
                image_yscale -= 0.1
                draw_yscale -= 0.1
                if (image_yscale == -1){
                    generic_counter1 = 1
                }
            }
            if (generic_counter1 == 1){
                image_yscale += 0.1
                draw_yscale += 0.1
                if (image_yscale == 1){
                    generic_counter1 = 0
                }
            }
            generic_counter2 += 1
            if (generic_counter2 > 7){
                generic_counter2 = 0
            }
            if (generic_counter2 = 2){
                if (spr_dir == sign(hsp)){
                    hsp = hsp * -0.9
                }
                
                if (spr_dir != sign(hsp)){
                    hsp = hsp * -1.0
                }
            }
            if (free == false){
                vsp = free_vsp * -0.5
            }
        break
        
        case 10:
            if (vsp < -2){
                image_index = 0;
            } else
            if (vsp > 2){
                image_index = 2;
            } else{
                image_index = 1;
            }
            if (free == false){
                vsp = free_vsp * -0.75
                with(player_id){
                    sound_play(sfx_crash)
                }
            }
        break
        
        case 12:
            if (state_timer == 12 || has_hit_someone != 0){
                player_id.summon_guy_kingdom = 1;
                player_id.summon_guy_x = x;
                player_id.summon_guy_y = y + 12;
                destroyed = true;
            }
        break
        case 13:
            if (state_timer == 12 || has_hit_someone != 0){
                player_id.summon_guy_kingdom = 2;
                player_id.summon_guy_x = x;
                player_id.summon_guy_y = y + 12;
                destroyed = true;
            }
        break
        case 14:
            if (state_timer == 12 || has_hit_someone != 0){
                player_id.summon_guy_kingdom = 3;
                player_id.summon_guy_x = x;
                player_id.summon_guy_y = y + 12;
                destroyed = true;
            }
        break
        case 15:
            if (state_timer == 12 || has_hit_someone != 0){
                player_id.summon_guy_kingdom = 4;
                player_id.summon_guy_x = x;
                player_id.summon_guy_y = y + 12;
                destroyed = true;
            }
        break
        
        
        case 18:
            through_platforms += 19;
            image_index = 1
            if (hsp == 0 || vsp > 0){
                if (state == 0 && state_timer > 12){
                    state = 1;
                    state_timer = 0;
                    has_hit = false;
                    sound_play(asset_get("sfx_kragg_rock_pull"), false, false, 1, 1.5)
                }
            }
            if (state != 0){
                hsp = 0;
            }
            if (state == 1){
                if (state_timer > 16){
                    vsp = 7;
                    mask_index = sprite_get("hbox_bust")
                } 
                if (state_timer < 6){
                    vsp = 0
                }
                if (state_timer == 6){
                    vsp -= 4
                    sound_play(asset_get("sfx_kragg_rock_pull"), false, false, 1, 0.75)
                }
            }
            if (free == false){
                if (state != 2){
                    state = 2;
                    state_timer = 0;
                    sound_play(asset_get("sfx_kragg_rock_shatter"));
                    shake_camera(4, 12)
                }
            }
            if (state == 2){
                hit_priority = 0;
                if (state_timer > 700){
                    destroyed = true;
                }
            }
        break
    }
    if (attack == AT_FSPECIAL && hbox_num == player_id.itm_coffee + 20){
        
    }
}

if (attack == AT_TAUNT){
    if (hbox_num != player_id.allegiance){
        can_hit_self = true;
    }
    if (hbox_num == 2){
        spr_dir = 1;
        image_xscale = 1;
        if (image_index > 7 || image_index == 0){
            mask_index = asset_get("empty_sprite")
        }
    }
    if (hbox_num == 4){
        if (image_index > 3){
            mask_index = asset_get("empty_sprite")
        }
    }
}

if (sprite_index == sprite_get("bullet")){
    if (free == false){
        destroyed = true;
    }
    proj_angle = point_direction(0, 0, hsp * spr_dir, vsp * spr_dir);
    through_platforms = 100;
}
