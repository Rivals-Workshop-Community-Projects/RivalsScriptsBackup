if(AT_DSPECIAL == my_hitboxID.attack){
    if(instance_exists(my_article)){
        instance_destroy(my_article);
    }
}

if(AT_NSPECIAL == my_hitboxID.attack){
    if(instance_exists(my_article)){
        instance_destroy(my_article);
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2) {
    my_hitboxID.hitbox_timer = 0;
}