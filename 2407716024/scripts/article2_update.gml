//article2_update.gml



switch (state) {
case 0: //newly spawned
    vsp = -12;
    free = true;
    state = 1;
    depth = player_id.depth;

    sound_play(asset_get("sfx_buzzsaw_throw"));
break;

case 1:
    //animate
    image_index += 0.5;
    depth = player_id.depth;
    
    //fall
    vsp = min(10, vsp + 0.7);
    
    //check for landing
    if (!free) {
        vsp = -4;
        state = 2;
    }
    else if (y > room_height) {
        instance_destroy();
        exit;
    }
    
    //handle hitbox
    if (instance_exists(hitbox_id)) {
        hitbox_id.x = x + spr_dir * 4;
        hitbox_id.y = y + 20 + vsp;
        if (hitboxes_spawned <= 1) hitbox_id.hitbox_timer = 0;
    }
    else if (!player_id.hitpause && player_id.state != PS_HITSTUN)
    {
        hitbox_respawn_timer++;
        if (hitbox_respawn_timer >= hitbox_max_respawn_timer) {
            //spawn new hitbox
            if (hitboxes_spawned < max_hitboxes_spawned) {
                hitbox_id = create_hitbox(AT_UAIR, 1, x + spr_dir * 4, y + 20 + round(vsp));
                hitboxes_spawned++;
                hitbox_respawn_timer = 0;
                if (hitboxes_spawned == max_hitboxes_spawned) { 
                    hitbox_id.hit_flipper = 6;
                    hitbox_id.hkb_value = 4;
                }
            }
            //deactivate
            else {
                state = 2;
            }
        }
    }
break;

case 2:
    //stop animating
    image_index = 0;
    //image_alpha = 0.5;
    depth = 29;
    hitbox_respawn_timer = -9999;
    ignores_walls = true;
    can_be_grounded = false;
    state = 3;
break;

case 3:
    vsp = min(10, vsp + 1);
    image_alpha -= 0.02;
    if (image_alpha <= 0) instance_destroy();
break;
}




