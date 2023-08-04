//hitbox_update

switch(attack){
    case AT_FSPECIAL:
        through_platforms = 5;
        if hitbox_timer == 6 && !was_parried image_index++;
        if !free && psybeam_vsp > 0 destroyed = true;
        if azelf_psychase != null && instance_exists(azelf_psychase) && azelf_psychase.state != 1{
            if (point_distance(x, y, azelf_psychase.x, azelf_psychase.y) < 16) || (was_parried){
                azelf_psychase.state = 1;
                azelf_psychase.state_timer = 0;
            }
        }
        // Reflect stuff
        if player != old_owner{//Relect correctly without parries.
            hitbox_timer = 0;
            psybeam_vsp = vsp;
            draw_xscale = spr_dir;
            if hit_effect = 112 image_index = 2;
            else image_index = 1;
            if !bashed{//Ori bash speed is it's own thing, it seems.
                hsp *= 1.5;
                vsp *= 1.5;
            }
            else{
                proj_angle = point_direction(0,0,hsp,vsp);
                if draw_xscale == -1 proj_angle += 180;
            }
        }
        old_owner = player; //Reflect code needs to run only once or game will die.
        break;
}