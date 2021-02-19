//article1_update

if (init == 0) {
    init = 1;
    with (asset_get("obj_article3")) {
        if (id != other.id && player_id == other.player_id && state < 10) {
            state = 10;
        }
    }
}

state_timer++;

if (state == 0) {
    
    bone_hit_timer++;
    
    if (bone_hit_timer >= bone_hit) {
        create_hitbox(AT_EXTRA_1, 15, x, y-14);
        bone_hit_timer = 0;
    }
}

if (state_timer >= 1200) {
    instance_destroy();
    exit;
}

if (state == 10) {
    instance_destroy();
    exit;
}