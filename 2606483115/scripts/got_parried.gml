
if(my_hitboxID.type == 1){
    steam -= 20
    red_indicator_timer = 50
    sound_play(asset_get("mfx_back"))
}

if(my_hitboxID.attack == AT_DSPECIAL){
    geyser.state = 4
    geyser.state_timer = 0
    geyser.image_index = 3
}

if(my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 2)){
    steam_wall_dismiss = true
}

if(pedal_to_metal == true){
    pedal_to_metal = false
    sound_play(sound_get("sfx_steam_hiss_short"))
}