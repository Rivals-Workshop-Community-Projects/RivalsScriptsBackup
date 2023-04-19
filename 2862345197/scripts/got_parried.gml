if my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR {
my_hitboxID.hitbox_timer = 0;
my_hitboxID.image_index = 0;
    if my_hitboxID.kb_angle = 90 {
    my_hitboxID.kb_angle = 270;
    } else if my_hitboxID.kb_angle = 270 {
    my_hitboxID.kb_angle = 90;
    }
bounce_cluster = my_hitboxID.cluster_num;
bounce_owner = my_hitboxID.player;
}

// disconnect from node
user_event(3);