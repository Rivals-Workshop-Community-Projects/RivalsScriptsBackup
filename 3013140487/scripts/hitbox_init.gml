//hitbox_init

if(attack == AT_NSPECIAL){
    handle_spr = sprite_get("knife_handle");
    handle_spr_big = sprite_get("knife_handle_big");
    if(player_id.knife_bunt){
        hitbox_timer = 20;
        hit_priority = 0;
        can_hit_self = true;
        proj_break = true;
        sprite_index = handle_spr_big;
    }
    if(damage == 2){
        hsp = 12 * spr_dir;
    }
}

if(attack == AT_NSPECIAL_2 && hbox_num < 3){
    // handle_spr = sprite_get("knife_handle");
    has_bounced_vertical = false;
}