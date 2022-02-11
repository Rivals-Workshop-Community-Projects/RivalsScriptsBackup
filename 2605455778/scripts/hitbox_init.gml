if(attack == AT_DSPECIAL_AIR && hbox_num == 3){
    spr_dir *= -1;
    hsp *= -1;
}
uspecialRockTimer = 0;
prev_pos = player_id.x;

if(attack == AT_DSPECIAL && hbox_num == 3){
    depth = 10;
}

swallowups = false;