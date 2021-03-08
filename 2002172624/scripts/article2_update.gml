//article2_update

if (init == 0) {
    init = 1;
    spr_dir = player_id.spr_dir;
    hsp = throw_speed*dcos(player_id.direc);
    vsp = -throw_speed*dsin(player_id.direc);
    with (asset_get("obj_article2")) {
        if (id != other.id && player_id == other.player_id && state < 2) {
            state = 2;
            state_timer = 0;
        }
        
    }
}



state_timer++;
if (state == 0) { //thrown
    image_angle = darctan(-vsp/hsp);
    image_index = state_timer*anim_time;
    //spr_dir = -1*(image_angle > 90 && image_angle < 270) + 1*(image_angle < 90 || image_angle > 270);
    x_ch = x;
    y_ch = y;
    if (((position_meeting(x,y,asset_get("par_block")) || (state_timer > hook_time && position_meeting(x,y,asset_get("par_jumpthrough")))))) state = 1;
    if !instance_exists(hbox) hbox = create_hitbox(AT_USPECIAL,1,x,y);
    else {
        hbox.x = x;
        if spr_dir == -1 hbox.y = y+32*dsin(image_angle);
        else hbox.y = y+32*dsin(image_angle+180);
        //else if image_angle > 0 && image_angle < 90 hbox.y = y-32;
        //else  hbox.y = y+32;
    }
}

if (state == 1) {
    //image_xscale = sprdir;
    //image_index = state_timer*anim_time;
    if instance_exists(hbox) instance_destroy(hbox);
    with player_id {
        if attack == AT_USPECIAL && window == 2 {
            window_timer = 0;
            window = 4;
        }
        if window == 4 {
            hsp = hook_speed*dcos(point_direction(x,y,other.x,other.y));
            vsp = -hook_speed*dsin(point_direction(x,y,other.x,other.y));
        }
    }
    hsp = 0;
    vsp = 0;
    if point_distance(x,y,player_id.x,player_id.y) < dist state = 2;
}


if (state == 2 || state_timer >= stay_time || point_distance(x,y,player_id.x,player_id.y) > 400 || player_id.state != 5) {
    if instance_exists(hbox) instance_destroy(hbox);
    instance_destroy();
    exit;
    if player_id.state == 5 attack_end();
}
