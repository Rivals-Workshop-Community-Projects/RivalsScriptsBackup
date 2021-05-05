//EA
if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
//    outline_color = [ 35, 67, 49 ];
}

if (!custom_clone){

if (get_player_color(player) == 18){
    for(var slot_num = 0; slot_num < 8; slot_num++){
        outline_color = [ 152, 0, 0];
        var temp_r = get_color_profile_slot_r(18, slot_num);
		var temp_g = get_color_profile_slot_g(18, slot_num);
		var temp_b = get_color_profile_slot_b(18, slot_num);
        set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .70);
    }
}

}