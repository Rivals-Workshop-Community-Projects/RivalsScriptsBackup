if (attack == AT_JAB && hbox_num == 2) {
    x += lengthdir_x(spd, dir) * spr_dir
    y += lengthdir_y(spd, dir)
    
    spd = max(spd * (1-smoke_friction), 0);
    
    x += lengthdir_x(0.15, hitbox_timer + float_offset);
    y += lengthdir_y(0.15, hitbox_timer + float_offset);
    
    if (hitbox_timer >= smoke_length + fade_offset) {
         hit = 1;
    }
    image_index = size
    if (hit == 1) {
        mask_index = asset_get("empty_sprite");
        if (size < 5) {
            size += 0.25;
        }
        else {
            instance_destroy(id);
            exit;
        }
    }
}