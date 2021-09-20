
if(my_hitboxID.attack == AT_DSPECIAL){
    geyser.state = 4
    geyser.state_timer = 0
    geyser.image_index = 3
}

if(my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 2)){
    steam_wall_dismiss = true
}

