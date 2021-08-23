shader_start();
draw_sprite(sprite_get("nspecial_hud"), (move_cooldown[AT_NSPECIAL] > 1), temp_x + 166, temp_y - 22)
shader_end();


if ("runeO" in self && runeO && training) {
    var base_position = 220*(((player+1)%2)+1);
    var horizontal_position = 20+((player > 2)*800);
    draw_debug_text(horizontal_position,base_position-(22*8),"P"+string(player));
    
    var i = ds_list_size(inputs)-1;
    repeat(ds_list_size(inputs)) {
        draw_sprite(sprite_get("direction"),5+inputs[|i][2],horizontal_position,base_position-(22*i));
        
        draw_sprite(sprite_get("direction"),inputs[|i][3] & 1 ? 1 : 0,horizontal_position+20,base_position-(22*i));
        
        draw_sprite(sprite_get("direction"),inputs[|i][3] & 2 ? 2 : 0,horizontal_position+40,base_position-(22*i));
        
        draw_sprite(sprite_get("direction"),inputs[|i][3] & 4 ? 3 : 0,horizontal_position+60,base_position-(22*i));
        
        draw_sprite(sprite_get("direction"),inputs[|i][3] & 8 ? 4 : 0,horizontal_position+80,base_position-(22*i));
        
        draw_debug_text(horizontal_position+100,base_position+6-(22*i),string(inputs[|i--][4]));
    }
}
