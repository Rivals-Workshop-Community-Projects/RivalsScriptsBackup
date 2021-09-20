//article1_update

if hitstop == 0 {
    timer++;
    state_timer++;
    window_timer++;
}

switch state {
    case PS_SPAWN:
    if state_timer == 1 {
        var hitbox4 = create_hitbox(AT_DTHROW, 4, x, y);
            hitbox4.owner = id;
        
    }
    if state_timer == 12 {
        state = PS_IDLE;
        state_timer = 0;
    }
    break;
    
    case PS_IDLE:
    var in_xrange = false;
    var in_yrange = false;
    
    if abs(x - player_id.x) > move_range {
        hsp -= sign(x - player_id.x)*0.1;
    } else {
        in_xrange = true;
        hsp *= 0.95;
    }
    
    if abs((y+40) - player_id.y) > move_range {
        vsp -= sign((y+40) - player_id.y)*0.1;
    } else {
        in_yrange = true;
        vsp *= 0.95;
    }
    
    if timer > 20 {
        hsp = clamp(hsp, -4, 4)
        vsp = clamp(vsp, -4, 4)
    }
    
    if in_xrange && in_yrange {
        sound_play(asset_get("sfx_ell_utilt_fire"))
        spawn_hit_fx(x, y, 109)
        player_id.orbitar_id = noone;
        instance_destroy();
    }
    
    break;
    
    case PS_ATTACK_AIR:
    hsp = 0;
    vsp = 0;
    
    switch window {
        case 1: //summoning
        /*
        if window_timer == 1 {
            var min_dist = 99999;
            var closest_player = noone;
            with oPlayer {
                var dist = point_distance(x, y, other.x, other.y);
                if dist < min_dist && id != other.player_id {
                    min_dist = dist;
                    closest_player = id;
                }
            }
            
            if closest_player != noone {
                if x - closest_player.x < 0 {
                    spr_dir = 1;
                } else if x - closest_player.x > 0 {
                    spr_dir = -1;
                }
            }
        }
        */
        
        hp = base_hp;
        
        if window_timer == 6 sound_play(sound_get("orbitar_spawn"));
        
        if window_timer == 8 {
            var hitbox = create_hitbox(AT_DTHROW, 1, x + shield_spawn_dist*spr_dir, y + 4);
                hitbox.owner = id;
            var hitbox2 = create_hitbox(AT_DTHROW, 1, x - shield_spawn_dist*spr_dir, y + 4);
                hitbox2.owner = id;
                hitbox2.spr_dir *= -1;
            var hitbox3 = create_hitbox(AT_DTHROW, 3, x, y + 4);
                hitbox3.owner = id;
            shield_active = true;
            window++;
            window_timer = 0;
            
            spawn_hit_fx(x + shield_spawn_dist*spr_dir, y + 4, 109)
            spawn_hit_fx(x + shield_spawn_dist*spr_dir, y + 4, 111)
            spawn_hit_fx(x - shield_spawn_dist*spr_dir, y + 4, 109)
            spawn_hit_fx(x - shield_spawn_dist*spr_dir, y + 4, 111)
        }
        break;
        
        case 2: //active
        if hp <= 0 {
            state = PS_DEAD;
            state_timer = 0;
            window = 0;
            window_timer = 0;
            break;
        }
        break;
        
        case 3: //desummon
        with pHitBox {
            if player_id == other.player_id && attack == AT_DTHROW instance_destroy(id);
        }
        if window_timer == 1 {
            spawn_hit_fx(x + shield_spawn_dist*spr_dir, y + 4, 109)
            spawn_hit_fx(x + shield_spawn_dist*spr_dir, y + 4, 111)
            spawn_hit_fx(x - shield_spawn_dist*spr_dir, y + 4, 109)
            spawn_hit_fx(x - shield_spawn_dist*spr_dir, y + 4, 111)
            sound_play(asset_get("sfx_ice_shatter"))
        }
        if window_timer >= 20 {
            state = PS_IDLE;
            state_timer = 0;
            window = 0;
            window_timer = 0;
        }
        break;
    }
    break;
    
    case PS_DEAD:
    with pHitBox {
        if player_id == other.player_id && attack == AT_DTHROW instance_destroy(id);
    }
    
    if state_timer == 1 {
        spawn_hit_fx(x + shield_spawn_dist*spr_dir, y + 4, 111)
        //spawn_hit_fx(x + shield_spawn_dist*spr_dir, y + 4, 301)
        spawn_hit_fx(x - shield_spawn_dist*spr_dir, y + 4, 111)
        //spawn_hit_fx(x - shield_spawn_dist*spr_dir, y + 4, 301)
        sound_play(sound_get("orbitar_break"))
    }
    
    if state_timer == 16 {
        player_id.orbitar_id = noone;
        instance_destroy();
    }
    break;
}
//print(get_state_name(state))