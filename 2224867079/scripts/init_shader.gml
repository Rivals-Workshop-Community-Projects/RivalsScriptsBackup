//init_shader.gml

if ("RedMode" in self){
//Changes the pink to blue
if (RedMode == false) {
    set_character_color_slot( 6, get_color_profile_slot_r(get_player_color(player), 2), get_color_profile_slot_g(get_player_color(player), 2), get_color_profile_slot_b(get_player_color(player), 2));
}
//Changes the pink to red
if (RedMode == true) {
    set_character_color_slot( 6, get_color_profile_slot_r(get_player_color(player), 3), get_color_profile_slot_g(get_player_color(player), 3), get_color_profile_slot_b(get_player_color(player), 3));
}

//Changes eye colour if facing right
if (spr_dir == 1){
    //Left Eye
    set_character_color_slot( 5, get_color_profile_slot_r(get_player_color(player), 3), get_color_profile_slot_g(get_player_color(player), 3), get_color_profile_slot_b(get_player_color(player), 3));
    //Right Eye
    set_character_color_slot( 7, get_color_profile_slot_r(get_player_color(player), 2), get_color_profile_slot_g(get_player_color(player), 2), get_color_profile_slot_b(get_player_color(player), 2));
}


//Changes eye colour if facing left
if (spr_dir == -1){
    //Left Eye
    set_character_color_slot( 5, get_color_profile_slot_r(get_player_color(player), 2), get_color_profile_slot_g(get_player_color(player), 2), get_color_profile_slot_b(get_player_color(player), 2));
    //Right Eye
    set_character_color_slot( 7, get_color_profile_slot_r(get_player_color(player), 3), get_color_profile_slot_g(get_player_color(player), 3), get_color_profile_slot_b(get_player_color(player), 3));
}
}