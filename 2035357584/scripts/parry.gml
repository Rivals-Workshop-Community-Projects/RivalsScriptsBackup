//parry

//logic to prevent parrying your own explosion from causing bugs (also can't abuse it for iframes)
/*if (hit_player_obj.id == id) {
    with enemy_hitboxID {
        instance_destroy();
        exit;
    }
    invince_time = 0;
} (commented for now)*/ 