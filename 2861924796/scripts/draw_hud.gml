// draw_debug_text( temp_x+8, temp_y-24,  string(state_timer))
// draw_debug_text( temp_x+32, temp_y-24,  string(state))
// draw_debug_text( temp_x+58, temp_y-24,  string(cling_time))
// draw_sprite(sprite_get("meowth_hud"), meowth_down, temp_x+24, temp_y-20)
if hive_count >= 1{
    draw_sprite(sprite_get("hive_hud"), hive1_status, temp_x, temp_y-26)
    draw_rectangle_color(temp_x+2, temp_y, ((temp_x + 2) + ((hive_hp1*2)))-1, temp_y-3, c_lime, c_lime, c_green, c_green, false)
}
if hive_count == 2{
    draw_sprite(sprite_get("hive_hud"), hive2_status, temp_x+50, temp_y-26)
    draw_rectangle_color(temp_x+52, temp_y, ((temp_x + 52) + ((hive_hp2*2)))-1, temp_y-3, c_lime, c_lime, c_green, c_green, false)
}

var armored = 0
var num_pos = 0


if honey_armor > 0{
    armored = 1
    if get_player_damage(player) <= 9{
        draw_sprite(sprite_get("armor_hud"), armored, temp_x+126, temp_y+18)
        num_pos = 0
    }
    if get_player_damage(player) >= 10 and get_player_damage(player) < 100{
        draw_sprite(sprite_get("armor_hud"), armored, temp_x+136, temp_y+18)
        num_pos = 10
    }
    if get_player_damage(player) >= 100{
        draw_sprite(sprite_get("armor_hud"), armored, temp_x+146, temp_y+18)
        num_pos = 20
    }
    
    
    font_get("honeyfont")
    draw_text_color(temp_x+156+num_pos,temp_y+20,honey_armor,c_black,c_black,c_black,c_black,1)
    draw_text_color(temp_x+160+num_pos,temp_y+24,honey_armor,c_black,c_black,c_black,c_black,1)
    draw_text_color(temp_x+156+num_pos,temp_y+24,honey_armor,c_black,c_black,c_black,c_black,1)
    draw_text_color(temp_x+160+num_pos,temp_y+20,honey_armor,c_black,c_black,c_black,c_black,1)
    draw_text_color(temp_x+158+num_pos,temp_y+22,honey_armor,c_yellow,c_yellow,c_yellow,c_yellow,1)
}
else{
    armored = 0
}




// draw_sprite(sprite_get("assist"), meowth_timer/60, temp_x+34, temp_y+2)


// draw_sprite(sprite_get("osha_hud"), oshawott_down, temp_x+76, temp_y-20)
// draw_sprite(sprite_get("hp"), oshawott_hp/2, temp_x+86, temp_y-4)
// draw_sprite(sprite_get("assist"), oshawott_timer/60, temp_x+86, temp_y+2)
//draw_debug_text( temp_x+76, temp_y-24,  string(oshawott_active))
//draw_debug_text( temp_x+76, temp_y-24,  string(uspec_limit))