//no. 2 article updating
state_timer ++
lifetime -= 1;
random_thing = random_func(12, 12, true);

if (kingdom == player_id.allegiance){
    players_kingdom = 1
} else{
    players_kingdom = 0
}

if (free == true){
    if (vsp <= guy_fallspd - guy_grav){
        vsp += guy_grav;
    }
    if (hsp != 0){
        hsp = (clamp(hsp * sign(hsp) - guy_grn_fric, 0, 1000)) * sign(hsp);
    }
    free_vsp = vsp;
}

if (free == false){
    if (free_vsp >= 2){
        vsp = free_vsp * -0.5
    } else{
        vsp = 0;
    }
    if (hsp != 0){
        hsp = (clamp(hsp * sign(hsp) - guy_grn_fric, 0, 1000)) * sign(hsp);
    }
    if (state == 0){
        state = 1;
        state_timer = 0;
    }
}

//kingdom_stuff
switch (kingdom){
    case 1:
    //weasels
    if (state == 1){
        if (ceil(random_thing / 4) == floor(random_thing / 4)){
            spr_dir *= -1;
        }
        if (random_thing == 6){
            hsp = random_func(1, 7, true) - 3
            vsp = random_func(2, 7, true) - 3
            sound_play(sound_get("squeak"), false, false, random_func(4, 1, false), (random_func(3, 1, false)) + 0.5)
        }
        if (hitbox_cooldown == 0){
            if (!instance_exists(guy_hitbox)){
                guy_hitbox = create_hitbox(AT_TAUNT, 1, x, y);
                guy_hitbox.player_id = player_id;
                guy_hitbox.player = player_id.player;
            } else{
                guy_hitbox.x = x;
                guy_hitbox.y = y;
                if (guy_hitbox.has_hit_someone != 0){
                    hitbox_cooldown = 3;
                }
            }
        } else{
            hitbox_cooldown -= 1;
        }
    }
    break
    case 2:
    //clown
    if (state == 1){
        if (state_timer == 1){
            image_index = 2
        }
        if (sprite_index == idle_sprite){
            if (free == false || image_index == 1){
                image_index += 0.1
            }
            image_speed = 0
        }
        if (floor(image_index) != 1){
            hitbox_cooldown = 0
        }
        if (floor(image_index) == 1 && sprite_index == idle_sprite){
            if (hitbox_cooldown == 0){
                if (!instance_exists(guy_hitbox)){
                    guy_hitbox = create_hitbox(AT_TAUNT, 2, x, y - 12);
                    guy_hitbox.player_id = player_id;
                    guy_hitbox.player = player_id.player;
                    guy_hitbox.spr_dir = 1;
                    guy_hitbox.image_xscale = 1;
                    guy_hitbox.depth = 2;
                    sound_play(sound_get("clown"), false, false, 1, 0.75);
                    vsp -= 6
                    hitbox_cooldown = 100
                }
            } else{
                hitbox_cooldown -= 1;
            }
        }
    }
    break
    case 3:
    //elf
    if (state == 1){
        generic_timer += 1
        if (generic_timer >= 16){
            generic_timer = 0;
        }
        if (hitbox_cooldown == 0){
            if (generic_timer == 8){
                guy_hitbox = create_hitbox(AT_TAUNT, 3, x - 16, y - 32);
                guy_hitbox.spr_dir = -1
                guy_hitbox.vsp = 0
                guy_hitbox.player_id = player_id;
                guy_hitbox.player = player_id.player;
                sound_play(sound_get("twinkle"), false, false, 2, 2);
            }
            if (generic_timer == 15){
                guy_hitbox = create_hitbox(AT_TAUNT, 3, x + 20, y - 32);
                guy_hitbox.spr_dir = 1 
                guy_hitbox.vsp = 0
                guy_hitbox.player_id = player_id;
                guy_hitbox.player = player_id.player;
                sound_play(sound_get("twinkle"), false, false, 2, 1);
            }
        } else{
            hitbox_cooldown -= 1;
        }
    }
    break
    case 4:
    //hog
    if (free == false && generic_timer == 0 && free_vsp > 2){
        guy_hitbox = create_hitbox(AT_TAUNT, 4, x, y);
        guy_hitbox.player_id = player_id;
        guy_hitbox.player = player_id.player;
        generic_timer = 1;
        vsp = 0;
        hsp = 0;
        free_vsp = 0;
        sound_play(asset_get("sfx_hod_dstrong_hit"), false, false, 1, 0.75)
    }
    if (free == true){
        generic_timer = 0;
    }
        
    break
}

//
if (hitted_cooldown == 0){
    with (pHitBox){
        if (attack != AT_TAUNT || hbox_num != other.kingdom|| player != other.player){
            if (other.last_hitter_attack != attack || other.last_hitter_group != hbox_group || other.last_hitter_player != player || hbox_group == -1){
                if (place_meeting(x, y, other.id) && hit_priority > 0){
                    other.last_hitter_attack = attack;
                    other.last_hitter_group = hbox_group;
                    other.last_hitter_player = player;
                    other.hitted_box = id;
                    if (type == 1){
                        player_id.has_hit = true;
                    }
                    other.state = 3;
                    other.state_timer = 0;
                    other.sprite_index = other.hurt_sprite;
                    if (variable_instance_exists(player_id, "key_hb_priority")){
                        if (player_id.allegiance != other.kingdom){
                            other.lifetime -= damage * 4;
                            player_id.allresometer[other.kingdom] -= damage * 30;
                        }
                    } else{
                        other.lifetime -= damage * 4;
                    }
                    other.hsp = lengthdir_x(get_kb_formula(10, 1, 1, damage, kb_value, kb_scale), kb_angle) * spr_dir;
                    other.vsp = lengthdir_y(get_kb_formula(10, 1, 1, damage, kb_value, kb_scale), kb_angle);
                    other.free_vsp = lengthdir_y(get_kb_formula(10, 1, 1, damage, kb_value, kb_scale), kb_angle) * 2;
                    other.hitted_cooldown = get_hitstun_formula(0, 1, 1, damage, kb_value, kb_scale);
                    sound_play(sound_effect, false, false, 0.75)
                    spawn_hit_fx(x, y, hit_effect);
                }
            }
        }
    }
} else{
    hitted_cooldown -= 1;
}

if (state == 3){
    sprite_index = hurt_sprite;
    image_index = state_timer / 4;
    image_blend = c_ltgray;
    if (state_timer > 24){
        hitted_cooldown = 0;
        state = 0;
        sprite_index = idle_sprite;
        image_blend = c_white;
        image_index = 0;
        last_hitter_attack = 0;
        last_hitter_group = 0;
        last_hitter_player = 0;
    }
}

//destruction
if (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) || lifetime <= 0){
    should_be_destroyed = 1
}

if (should_be_destroyed == 1){
    with (player_id){
        spawn_hit_fx(other.x, other.y, vfx_poof);
    }
    instance_destroy()
}