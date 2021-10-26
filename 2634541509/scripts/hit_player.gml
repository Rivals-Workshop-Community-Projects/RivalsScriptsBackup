proj_check = 1;
if(my_hitboxID.attack == AT_FSPECIAL){
    car_amount = 0;
    move_cooldown[AT_FSPECIAL] = 200;
}

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2){
    spawn_mail = true;
}else{
    spawn_mail = false;
}

if(my_hitboxID.attack == AT_FTHROW){
    destroy_pipis = true;
}