//hitbox_update

switch(attack){
    case AT_FSPECIAL:
        through_platforms = 5;
        if hitbox_timer == 6 && !was_parried image_index++
        if !free && psybeam_vsp > 0 destroyed = true;
        if azelf_psychase != null && instance_exists(azelf_psychase){
            if (point_distance(x, y, azelf_psychase.x, azelf_psychase.y) < 16) || (was_parried && azelf_psychase.state != 1){
                azelf_psychase.state = 1;
                azelf_psychase.state_timer = 0;
            }
        }
        break;
}