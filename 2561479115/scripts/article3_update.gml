if !initialized  {
    sprite_index = sprite_get("airdodge_trail");
    image_alpha = 1.4;
    spr_dir = player_id.spr_dir;
    initialized = true;
}

image_alpha -= 0.1;
if (image_alpha == 0) {
    instance_destroy();
    exit;
}