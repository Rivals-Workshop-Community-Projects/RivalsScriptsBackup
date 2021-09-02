//article2_update

/*
if (desiredX!=x || desiredY!=y){
    if (point_distance(desiredX, desiredY, x, y)<1){
        x = desiredX;
        y = desiredY;
    }
    hsp = 0.1 * (desiredX - x);
    vsp = 0.1 * (desiredY - y);
}

if (prev_owner_id != current_owner_id){
    //change ownership
    desiredX = x;
    desiredY = y;
    hsp = 0;
    vsp = 0;
    spark_anim = 8;
    prev_owner_id = current_owner_id;
    desired_color = get_player_hud_color(get_instance_player(current_owner_id));
    sound_play(asset_get("sfx_gem_collect"));
    current_owner_id.numChains = 0;
    current_owner_id.chainedDown = 0;
}

if (spark_anim>0) {
    spark_anim--;
}*/
if (despawn_timer==0 || (point_distance(x,y, player_id.x, player_id.y-20) < 36)&&despawn_timer<880){
    if (despawn_timer>0){
        player_id.hsp+=hsp;
        player_id.vsp+=vsp;
    }
    player_id.my_boomerang = noone;
    instance_destroy();
    return;
}
despawn_timer--;
if (cooldown>0){
    cooldown--;
}

//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, x);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, y);
/*
if (despawn_timer%10 ==0){
    create_hitbox(AT_FSPECIAL, 1, x, y-20);
}*/

if (despawn_timer<860){
    hsp += (x - player_id.x)/-300;
    vsp += (y - player_id.y+20)/-300;

    if (hsp > 10) {hsp = 10;}
    if (hsp < -10) {hsp = -10;}
    if (vsp > 10) {vsp = 10;}
    if (vsp < -10) {vsp = -10;}
}

if (bounced == 0){
    if (hit_wall){
        hsp = -1 * prev_H;
        bounced = 3;
    }
    if (!free){
        vsp = -1 * prev_V;
        bounced = 3;
    }
}
else{
    bounced--;
}


prev_V = vsp;
prev_H = hsp;















