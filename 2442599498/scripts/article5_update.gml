//
timer++;

switch location {
    case 0: //left
    if timer == 1 {
        sprite_index = sprite_get("solid");
    }
    if (x + 500 < (room_width/2) - (end_width/2)) && !remove {
        hsp = 10;
    } else {
        if remove {
            hsp = -20;
        } else {
            hsp = 0;
        }
    }
    
    with obj_stage_article_solid {
        if get_article_script(id) == 5 && location == 2 {
            other.y1 = y + 593 + vsp;
        }
    }
    break;
    
    case 1: //right
    spr_dir = -1;
    if timer == 1 {
        sprite_index = sprite_get("solid");
    }
    if (x - 500 > (room_width/2) + (end_width/2)) && !remove {
        hsp = -10;
    } else {
        if remove {
            hsp = 20;
        } else {
            hsp = 0;
        }
    }
    
    with obj_stage_article_solid {
        if get_article_script(id) == 5 && location == 2 {
            other.y1 = y + 593 + vsp;
        }
    }
    break;
    
    case 2: //top
    if (y + 400 < (room_height/2) - (end_height)) && !remove {
        vsp = 8;
    } else {
        if remove {
            vsp = -16;
        } else {
            vsp = 0;
        }
    }
    
    with obj_stage_article_solid {
        if get_article_script(id) == 5 && location == 0 {
            other.x1 = x + 484 + hsp;
        }
        if get_article_script(id) == 5 && location == 1 {
            other.x2 = x - 485 + hsp;
        }
    }
    break;
}

if remove {
    remove_timer++;
}

if remove_timer > 60 {
    instance_destroy();
}