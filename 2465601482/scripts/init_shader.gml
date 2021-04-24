
if "metal_timer" in self && metal_timer > 0 && "superstar_in_me" not in self {
    /*
    set_character_color_slot(0, 191, 191, 191); //green
    set_character_color_slot(1, 191, 191, 191); //grey
    set_character_color_slot(2, 255, 255, 255); //greyhighlight because I'm a dummy who didn't ensure it had hue
    set_character_color_slot(3, 191, 191, 191); //glove
    set_character_color_slot(4, 191, 191, 191); //feather
    set_character_color_slot(5, 191, 191, 191); //face
    set_character_color_slot(6, 251, 0, 0); //RED
    */
    var list = [-2,-2,-2, 2, 2,-2];
    var m = get_player_color(player);
    for (var i = 0; i < 6; i ++) {
        var r = get_color_profile_slot_b(m,i);
        r *= 0.5;
        r += 128;
        r = ceil(r);
        set_character_color_slot(i,r,r,r);
        set_character_color_shading(i,list[i]);//1.2*cos(pi*i-pi));
    }
} else {
    var m = get_player_color(player);
    for (var i = 0; i < 7; i ++) {
        set_character_color_slot(i,get_color_profile_slot_r(m,i),get_color_profile_slot_g(m,i),get_color_profile_slot_b(m,i));
        set_character_color_shading(i,1);
    }
    switch get_player_color(player) {
        case 3:
            set_character_color_shading(4,0);
            break;
        case 5:
            set_character_color_shading(0,1);
            set_character_color_shading(3,2);
            break;
        case 6:
            if get_match_setting(SET_SEASON) == 1 set_character_color_shading(0,2);
            if get_match_setting(SET_SEASON) == 2 set_character_color_shading(0,-0.8);
            if get_match_setting(SET_SEASON) == 3 {
                for (var i = 0; i <= 6; i ++) {
                    set_character_color_slot(i,get_color_profile_slot_r(6,i),get_color_profile_slot_g(6,i),get_color_profile_slot_b(6,i),0.5);
                    set_character_color_shading(i,-30);
                }
                    set_character_color_slot(5,get_color_profile_slot_r(6,5),get_color_profile_slot_g(6,5),get_color_profile_slot_b(6,5),0.2);
            }
            break;
        case 7:
            set_character_color_shading(0,2);
            set_character_color_shading(1,2);
            set_character_color_shading(3,2);
            set_character_color_shading(5,2);
            break;
            
        case 8:
            for (var i = 0; i <= 6; i ++) set_character_color_shading(i,0);
            break;
        
    }
} 
