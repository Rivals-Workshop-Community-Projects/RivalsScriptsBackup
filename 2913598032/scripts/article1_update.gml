if (item_set) {
    switch (item_id) {
        case 0:
            sprite_index = spr_chest;
            mask_index = spr_chest;
            break;
        case 1:
            sprite_index = spr_gun;
            mask_index = spr_gun;
            break;
        case 2:
            sprite_index = spr_sword;
            mask_index = spr_sword;
            break;
        case 3:
            sprite_index = spr_trumpet;
            mask_index = spr_trumpet;
            break;
    }
    item_set = true;
}

player_distance = point_distance(x, y - 20, player_id.x, player_id.y);

if (recalled) {
    // PLEASE REPLACE FOR THE LOVE OF GOD
    var to_x = player_id.x;
    var to_y = player_id.y - 10;
    var x_dist = point_distance(x, 0, to_x, 0);
    var y_dist = point_distance(0, y, 0, to_y);

    if (x_dist > 2) {
        if (to_x > x) hsp = x_dist * item_pull_speed;
        else hsp = -(x_dist * item_pull_speed);
        //if (to_x > x) hsp = item_pull_speed;
        //else hsp = -item_pull_speed;
    }
    else {
        hsp = 0;
    }

    //if (y_dist > 2) {
        //if (to_y > y) vsp = y_dist * item_pull_speed;
        //else vsp = -(y_dist * item_pull_speed);
        //if (to_y > y) vsp = item_pull_speed;
        //else vsp = -item_pull_speed;
    //}
    //else {
        //vsp = 0;
    //}
    vsp += item_gravity / 2;
    if ((player_id.state != PS_ATTACK_AIR || player_id.state != PS_ATTACK_GROUND) || player_id.attack != AT_NSPECIAL) {
        recalled = false;
    }
}
else if (free) {
    vsp += item_gravity;
    if (hsp > 0) hsp -= item_air_friction;
    else if (hsp < 0) hsp += item_air_friction;
}
else {
    vsp = 0;
    if (hsp > 0) hsp -= item_ground_friction;
    else if (hsp < 0) hsp += item_ground_friction;
    
    for (var i = 0; i < 4; i++) {
        if (player_id.items[i] != self && player_id.items[i] != noone) {
            var other_item = player_id.items[i]
            if (distance_to_point(other_item.x, other_item.y) < 20) {
                if (x <= other_item.x) {
                    hsp = -2;
                    other_item.hsp = 2;
                }
                else if (x > other_item.x) {
                    hsp = 2;
                    other_item.hsp = -2;
                }
            }
        }
    }

    if (hsp > -0.15 && hsp < 0.15) hsp = 0;
}

if (item_lockout > 0) {
    item_lockout--;
}

//print(string(x) + " --- " + string(y));
if (player_distance < 46 && item_lockout == 0) {
    if (player_id.attack_pressed && !player_id.free) {
        if (!player_id.left_down && !player_id.right_down && !player_id.up_down && !player_id.down_down) {
            player_id.items_held[item_id] = true;
            player_id.items[item_id] = noone;
            sound_stop(asset_get("sfx_coin_collect"));
            sound_play(asset_get("sfx_coin_collect"));
            destroy = true; 
        }
    }
    else if (player_id.special_down && !player_id.free) {
        if (player_id.attack == AT_NSPECIAL && player_id.state == PS_ATTACK_GROUND) {
            player_id.items_held[item_id] = true;
            player_id.items[item_id] = noone;
            sound_stop(asset_get("sfx_coin_collect"));
            sound_play(asset_get("sfx_coin_collect"));
            destroy = true; 
        }
    }
}

if (y > 1000) {
    var new_x = 300 + random_func(10, 600, true)
    var new_y = -100;

    x = new_x;
    y = new_y;
}

if (detonator == true) {
    if (detonate_timer > 0) detonate_timer -= 1;
    if (detonate_timer == 0) {
        if (!instance_exists(hbox)) {
            with (player_id) {
                sound_play(sfx_explosion);
                spawn_hit_fx(other.x, other.y - 30, vfx_explosion);
                other.hbox = create_hitbox(AT_FSPECIAL, 4, other.x, other.y - 30 )
            }
        }
        post_timer -= 1;
        if (post_timer == 0){
            post_timer = 8;
            detonator = false;
            detonate_timer = 10;
        }
    }
}

if (destroy) {
    instance_destroy();
    exit;
}