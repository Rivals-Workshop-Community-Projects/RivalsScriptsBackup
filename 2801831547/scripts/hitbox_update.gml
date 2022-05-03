if(attack == AT_NSPECIAL and hbox_num == 4){
    player_id.move_cooldown[AT_NSPECIAL] = 20;
    if(hitbox_timer == 34 and !has_hit and player == orig_player){
        destroyed = true;
        player_id.wisp = instance_create(x, y+12, "obj_article1");
    } else if(collision_point(x+hsp, y, asset_get("par_block"), false, true)){
        destroyed = true;
        player_id.wisp = instance_create(x, y+12, "obj_article1");
    }
}