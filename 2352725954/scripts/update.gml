//update
if(joy_pad_idle == false){
    if(joy_dir <= 60 || joy_dir >= 300){
        dir_held = 1;
    }else if(joy_dir >= 120 && joy_dir <= 240){
        dir_held = -1;
    }else{
        dir_held = 0;
    }
}else{
    dir_held = 0;
}

//I realize this code is horribly inefficient but hard_pressed doesn't work on keyboard.
if(right_pressed){
    dir_counter[1] = 7;
}else if(left_pressed){
    dir_counter[0] = 7;
}

if (dir_counter[1] > 0){
    dir_counter[1]--;
}
if (dir_counter[0] > 0){
    dir_counter[0]--;
}

if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

if(attack == AT_UAIR && state = PS_LANDING_LAG && char_height > 62){
    char_height -= 4;
}

with(pHitBox){
    if(player == other.player && attack == AT_FSPECIAL && hbox_num == 2 && 
    sprite_index == sprite_get("fspec3_proj")){
        var chakreal = true;
    }
}
if(chakreal){
    chak_exists = true;
}else{
    chak_exists = false;
}