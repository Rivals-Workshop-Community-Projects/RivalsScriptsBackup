//article1_update
state_timer++
timer++

cloud_y = y - 230

if lightning_draw_surface { //draw to floor
    lightning_draw_length = 0
    while lightning_draw_length < 600 {
        if !position_meeting(x, cloud_y + lightning_draw_length, asset_get("par_block")) {
            lightning_draw_length += 20
        } else {
            break;
        }
    }
    lightning_draw_surface = false
    drawn_to_surface = true
}

if player_id.x >= x - cloud_width/2 && player_id.x <= x + cloud_width/2 && player_id.y > cloud_y {
    player_id.under_cloud = true
} else {
    player_id.under_cloud = false
}

switch state {
    case 0: //spawn
    image_index = state_timer/4
    if state_timer == 19 {
        state = 1
        state_timer = 0
    }
    x = lerp(x, player_id.x, 0.2)
    y = player_id.y
    if (player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND) {
        if state_timer >= 8 {
            state = 9
            state_timer = 0
        }
        sound_stop(asset_get("sfx_absa_boltcloud"))
    }
    break;
    
    case 1: //idle
    sprite_index = sprite_get("cloud_idle")
    image_index = timer/6
    y = clamp(y, 200, 10000000)
    /*
    if state_timer >= 40 && y < 200 {
        state = 9
        state_timer = 0
    }
    */
    
    break;
    
    case 2: //draw static
    sprite_index = sprite_get("cloud_idle")
    image_index = timer/6
    
    static_coords = [player_id.x + 20*player_id.spr_dir, player_id.y - 50]
    if !drawn_to_surface lightning_draw_length = point_distance(x, cloud_y, static_coords[0], static_coords[1])
    if !drawn_to_surface static_angle = 90 - darctan2(static_coords[1] - cloud_y, static_coords[0] - x)
    
    if !player_id.state_attacking || !player_id.empowered_cloud {
        state = 9
        state_timer = 0
        sound_stop(asset_get("sfx_absa_champ_loop"))
    }
    break;
    
    case 3: //summon lightning
    sprite_index = sprite_get("cloud_idle")
    image_index = timer/6
    if state_timer == 1 {
        lightning_timer = 0
    }
    
    if !drawn_to_surface lightning_angle = 90 - darctan2(player_id.y - cloud_y, player_id.x - x)
    if !drawn_to_surface lightning_draw_length = point_distance(x, cloud_y, player_id.x, player_id.y)
    
    if !player_id.hitpause lightning_timer++
    
    if !drawn_to_surface lightning_dist = y - player_id.y
    
    if lightning_image_index == 4 && queue_dissipate {
        state = 9
        state_timer = 0
    }
    if lightning_timer >= 32 {
        state = 1
        state_timer = 0
        lightning_timer = 0
    }
    
    break;
    
    case 9: //die
    if player_id.cloud_id == id {
        player_id.cloud_id = undefined
    }
    if lightning_timer > 0 lightning_timer++
    if lightning_timer >= 32 {
        lightning_timer = 0
    }
    player_id.under_cloud = false
    sprite_index = sprite_get("cloud_dissipate")
    image_index = floor(state_timer/5)
    if image_index >= 4 {
        instance_destroy()
        exit;
    }
    break;
}

if lightning_timer > 0 lightning_image_index = floor(lightning_timer/4)

if state != 9 {
    player_id.cloud_id = id
}

/*

if player_id.summon_lightning && !summon_lightning && state != 9 {
    summon_lightning = true
    lightning_timer = 0
    lightning_draw_length = 230
    lightning_angle = 0
}


if summon_lightning {
    lightning_dist = y - player_id.y
    if !player_id.hitpause lightning_timer++
    lightning_image_index = floor(lightning_timer/4)
    if lightning_image_index == 4 && state != 9 {
        if queue_dissipate {
            state = 9
            state_timer = 0
        }
    }
    if lightning_image_index >= 8 {
        lightning_timer = 0
        summon_lightning = false
    }
}
*/


player_id.lightning_draw_length = lightning_draw_length
player_id.lightning_angle = lightning_angle