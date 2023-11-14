if (attack == AT_NSPECIAL && hbox_num == 1) {
    if (get_gameplay_time() % 4 == 0) spawn_hit_fx( x, y, player_id.vfx_light );
    if (!free) {
        instance_destroy();
        exit;
    } 
    //proj_angle -= 1.5 * spr_dir;
    proj_angle = darctan2(-vsp, hsp);

    if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_FSPECIAL && (player_id.window == 2 || player_id.window == 3)) {
        var plr_dist = point_distance(x, y, player_id.x + 22 * spr_dir, player_id.y - 38);
        if (plr_dist < 70) {
            with player_id {
                var new_proj1 = create_hitbox(AT_NSPECIAL, 5, other.x, other.y);
                var new_proj2 = create_hitbox(AT_NSPECIAL, 5, other.x, other.y);
                new_proj1.spr_dir = spr_dir;
                new_proj1.draw_xscale = 1;
                //new_proj1.proj_angle = 5;
                new_proj1.vsp = -6;
                new_proj1.hsp = 6 * spr_dir;
                //new_proj1.length *= 2;
                print(string(new_proj1.spr_dir));

                new_proj2.spr_dir = spr_dir;
                new_proj2.draw_xscale = 1;
                //new_proj2.proj_angle = 5;
                new_proj2.vsp = -3;
                new_proj2.hsp = 6 * spr_dir;
                //new_proj2.length *= 2;

                sound_stop(asset_get("mfx_chat_received"));
                sound_play(asset_get("mfx_chat_received"));
                spawn_hit_fx( other.x, other.y, 20 );
                // idk why these spawn not facing the right direction when facing left
            }
            instance_destroy();
            exit;
        }
    }

    else if (player_id.state == PS_ATTACK_AIR && player_id.attack == AT_FSPECIAL_AIR && (player_id.window == 2 || player_id.window == 3)) {
        var plr_dist = point_distance(x, y, player_id.x + 22 * player_id.spr_dir, player_id.y - 38);
        if (plr_dist < 70) {
            with player_id {
                var new_proj1 = create_hitbox(AT_NSPECIAL, 5, other.x, other.y);
                var new_proj2 = create_hitbox(AT_NSPECIAL, 5, other.x, other.y);
                new_proj1.spr_dir = spr_dir;
                new_proj1.draw_xscale = 1;
                //new_proj1.proj_angle = 5;
                new_proj1.vsp = -6 + vsp;
                new_proj1.hsp = 6 * spr_dir;
                new_proj1.length *= 1.5;
                print(string(new_proj1.spr_dir));

                new_proj2.spr_dir = spr_dir;
                new_proj2.draw_xscale = 1;
                //new_proj2.proj_angle = 5;
                new_proj2.vsp = -3 + vsp;
                new_proj2.hsp = 6 * spr_dir;
                new_proj2.length *= 1.5;

                sound_stop(asset_get("mfx_chat_received"));
                sound_play(asset_get("mfx_chat_received"));
                spawn_hit_fx( other.x, other.y, 20 );
                // idk why these spawn not facing the right direction when facing left
            }
            
            instance_destroy();
            exit;
        }
    }
}

if (attack == AT_NSPECIAL && hbox_num == 5) {
    if (get_gameplay_time() % 4 == 0) spawn_hit_fx( x, y, player_id.vfx_light );
    if (!free) {
        instance_destroy();
        exit;
    }
    //proj_angle -= 1.5 * spr_dir;
    if (hsp < 0) spr_dir = -1;
    if (hsp > 1) spr_dir = 1;
    proj_angle = darctan2(-vsp, hsp);
}

if (attack == AT_NSPECIAL && hbox_num == 2) {
    // no fx really work for this it looks boring af
    //if (get_gameplay_time() % 4 == 0) spawn_hit_fx( x, y, 14 );
    proj_angle = darctan2(-vsp * spr_dir, hsp * spr_dir); // This is apparently the right way

    if (!free) {
        with player_id {
            //var pillar = create_hitbox(AT_NSPECIAL, 6, other.x, get_stage_data(SD_Y_POS));
            pillar_create_x = other.x;
            pillar_create_y = get_stage_data(SD_Y_POS);
            pillar_create_time = pillar_create_max;
            pillar_create = true;
            sound_play(sfx_pillar_spawn);
            //spawn_hit_fx( pillar_create_x, pillar_create_y, vfx_pillar_spawn);
        }
        
        instance_destroy();
        exit;
    }

    if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_FSPECIAL && (player_id.window == 2 || player_id.window == 3)) {
        var plr_dist = point_distance(x, y, player_id.x + 38 * spr_dir, player_id.y - 48);
        if (plr_dist < 25) {
            if (vsp == 0) {
                x = player_id.x + 42 * spr_dir;
                y = player_id.y - 48;
                vsp = 4;
                hsp = 6 * player_id.spr_dir;
                length = 90;
                sound_stop(asset_get("mfx_chat_received"));
                sound_play(asset_get("mfx_chat_received"));
                spawn_hit_fx( x, y, 20 );
            }
        }
    }

    else if (player_id.state == PS_ATTACK_AIR && player_id.attack == AT_FSPECIAL_AIR && (player_id.window == 2 || player_id.window == 3)) {
        var plr_dist = point_distance(x, y, player_id.x + 22 * spr_dir, player_id.y - 38);
        if (plr_dist < 30) {
            if (vsp == 0) {
                x = player_id.x + 22 * spr_dir;
                y = player_id.y - 38;
                vsp = player_id.vsp;
                //spr_dir = player_id.spr_dir;
                hsp = 6 * player_id.spr_dir;
                length = 90;
                sound_stop(asset_get("mfx_chat_received"));
                sound_play(asset_get("mfx_chat_received"));
                spawn_hit_fx( x, y, 20 );
            }
        }
    }
}

if (attack == AT_NSPECIAL && hbox_num == 6) {
    //print(string(properties));
    //if (destroyed) {
    //    print('yea');
    //}
    //print(string(hitbox_timer))
    if (hitbox_timer == 89) {
        spawn_hit_fx( x, y, player_id.vfx_pillar_fade );
    }
}