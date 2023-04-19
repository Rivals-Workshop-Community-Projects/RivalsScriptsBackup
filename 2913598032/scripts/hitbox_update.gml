if (attack == AT_FSPECIAL && hbox_num == 1) {
    if (hsp > 0) hsp -= 0.5;
    else if (hsp < 0) hsp += 0.5;
    else if (hsp < 1 && hsp > -1) {
        hsp = 0;
        player_id.wheel = instance_create(x, y, "obj_article2");
        instance_destroy();
    }
}

if (attack == AT_FSTRONG && hbox_num == 3) {
    if (!free) {
        //sound_play(player_id.rmb_take);
        player_id.items_held[2] = false;
        player_id.items[2] = instance_create(x, y + 10, "obj_article1");
        player_id.items[2].item_id = 2;
        player_id.items[2].item_set = true;
        //spawn_hit_fx( x, y-20, 143 );
        instance_destroy();
    }
    if (y > 1000) { 
        player_id.items_held[2] = false;
        player_id.items[2] = instance_create(x, y + 10, "obj_article1");
        player_id.items[2].item_id = 2;
        player_id.items[2].item_set = true;
        instance_destroy();
    }
}

if (attack == AT_USTRONG && hbox_num == 3) {
    if (!free) {
        //sound_play(player_id.rmb_take);
        player_id.items_held[1] = false;
        player_id.items[1] = instance_create(x, y + 10, "obj_article1");
        player_id.items[1].item_id = 1;
        player_id.items[1].item_set = true;
        //spawn_hit_fx( x, y-20, 143 );
        instance_destroy();
    }
    if (y > 1000) { 
        player_id.items_held[1] = false;
        player_id.items[1] = instance_create(x, y + 10, "obj_article1");
        player_id.items[1].item_id = 1;
        player_id.items[1].item_set = true;
        instance_destroy();
    }
}

if (attack == AT_DSTRONG && hbox_num == 5) {
    if (!free) {
        //sound_play(player_id.rmb_take);
        player_id.items_held[0] = false;
        player_id.items[0] = instance_create(x, y + 10, "obj_article1");
        player_id.items[0].item_id = 0;
        player_id.items[0].item_set = true;
        //spawn_hit_fx( x, y-20, 143 );
        instance_destroy();
    }
    if (y > 1000) { 
        player_id.items_held[0] = false;
        player_id.items[0] = instance_create(x, y + 10, "obj_article1");
        player_id.items[0].item_id = 0;
        player_id.items[0].item_set = true;
        instance_destroy();
    }
}

if (attack == AT_USPECIAL && hbox_num == 1) {
    window_timer++;
    if (window_timer == 29) {
        spawn_hit_fx( x, y, player_id.vfx_wheel_break);
    }
}
//if (attack == AT_FSPECIAL && hbox_num == 3) can_hit_self = 1;