//hitbox_init

if (attack == AT_FSPECIAL_2){
    if (y > other_id.y){
        vspeed--;
    }
    else if (y < other_id.y){
        vspeed++;
    }
    else vspeed = 0;
    
    if (x > other_id.x){
        spr_dir = -1;
        hspeed--;
    }
    else if (x < other_id.x){
        spr_dir = 1;
        hspeed--;
    }
}

state = 0;