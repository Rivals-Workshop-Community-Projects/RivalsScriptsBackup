//a
init_shader();

if attack == AT_NSPECIAL && hbox_num == 1 {
    if !free vsp = -5;
    if !being_held {
        proj_angle += 4 * spr_dir;
        hit_priority = 4;
        pres_explode_timer += 1;
        if (pres_explode_timer >= pres_explode_min_time) or (pres_explode_hits >= pres_explode_min_hits) {
            pres_should_explode = true
            image_index = 1;
        } else {
            image_index = 0;
        }
        transcendent = false;
        visible = true;
    } else { 
        player = orig_player;
        proj_angle = 0;
        hit_priority = 0; //when picked up reset can_hit stuff so it can hit when thrown again
        for(var i=0;i<5;i++) {
            can_hit[i] = true;
        }
        x = player_id.x;
        y = player_id.y;
        hsp = 0;
        vsp = 0;
        transcendent = true;
        visible = false;
    }
    if (player_id.state == PS_DEAD) or (player_id.state == PS_RESPAWN) or (((x > room_width) or (x < 0) or (y > room_height) or (y < 0)) && !being_held) {
        destroyed = true;
    }
}

if attack == AT_DSPECIAL && hbox_num == 2 { 
    if !being_held {
        proj_angle += 5 * spr_dir;
        hit_priority = 4;
        if !free {
            if player == orig_player {
                var spawntree = instance_create(x,y+22,"obj_article1");
                spawntree.state = 2;
                player_id.tree_id = spawntree;
            }
            //
            destroyed = true;
        }
        transcendent = false;
        visible = true;
    } else {
        player = orig_player;
        proj_angle = 0;
        hit_priority = 0; //when picked up reset can_hit stuff so it can hit when thrown again
        for(var i=0;i<5;i++) {
            can_hit[i] = true;
        }
        x = player_id.x;
        y = player_id.y -25;
        hsp = 0;
        vsp = 0;
        transcendent = true;
        visible = false;
    }
    if ((x > room_width) or (x < 0) or (y > room_height) or (y < 0)) {
        player_id.tree_id = noone;
        destroyed = true;
    }
    if destroyed {
        spawn_hit_fx(x,y,301)
    }
}
