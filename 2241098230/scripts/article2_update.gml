smoke_timer ++;
x += lengthdir_x(spd, dir) * spr_dir
y += lengthdir_y(spd, dir)

spd = max(spd * (1-smoke_friction), 0);

x += lengthdir_x(0.15, smoke_timer + float_offset);
y += lengthdir_y(0.15, smoke_timer + float_offset);

if (parent.hit < 2 && hit = 0 && smoke_timer > 2) {
    with (oPlayer) {
        if (id == other.player_id) continue;
        if (place_meeting(x, y, other)) {
            if (array_find_index(other.parent.players_hit, id) < 0 && !clone) {
                array_push(other.parent.players_hit, id)
                smoke_obj = other.id;
            }
        }
    }
    if (instance_exists(asset_get("plasma_field_obj"))) {
        var clairen_nfz_near = instance_nearest(x, y, asset_get("plasma_field_obj"));
        if point_distance(x, y, get_instance_x(clairen_nfz_near), get_instance_y(clairen_nfz_near))  < 224 {
            parent.parried = true;
        }
    }
}

if (smoke_timer >= smoke_length + fade_offset) {
     hit = 1;
}

if (hit == 1) {
    if (size < 10) {
        size += 0.5;
    }
    else {
        instance_destroy();
        exit;
    }
}