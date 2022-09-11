//sound_play(asset_get("sfx_clairen_dspecial_counter_active"));

depth = target.depth-1;

if (!target.hitpause && !start){
    start = true;
    visible = true;
}



if (start){

    if (lifetime < 30){

    image_index += 0.2;

    if (image_index > 11)
    image_index = 5;

    if (lifetime % 6 == 0)
    create_hitbox(AT_DSPECIAL, 2, x, y);

target.x = x;
target.y = y;

    }
    else{

        if (image_index < 12)
        image_index = 12;

        image_index += 0.15;


        if (lifetime < 50){
        x = target.x;
        y = target.y - 100;
        }

        if (lifetime == 38){
            vsp = -10;
            hsp = -1 * spr_dir;
            var last_hit = create_hitbox(AT_DSPECIAL, 3, x + 12*spr_dir, y + 20);
            last_hit.kb_angle = last_hit_angle;
            last_hit.kb_value = last_hit_kb;
            last_hit.kb_scale = last_hit_kbg;
        }

        if (lifetime > 38){
            vsp += 0.3;
        }
    }

    lifetime++;




}

print_debug(lifetime);

    if (lifetime == 76){
        instance_destroy(id);
    }