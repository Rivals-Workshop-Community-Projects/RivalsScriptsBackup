//BG Object
if(init){
    if(dir == 0) {
        hsp = spd * spr_dir;
        sprite_index = sprite_get("BG_Rect2");
    }
    else {
        vsp = spd * spr_dir;
        sprite_index = sprite_get("BG_Rect1");
    }
    init = false;
}

time--;
if(time == 0){
    instance_destroy();
}