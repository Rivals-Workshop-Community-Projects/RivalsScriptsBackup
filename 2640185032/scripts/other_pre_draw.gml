with (other_player_id) { shader_start(); }
if("is_frozen" in self && "spr_iceclock_back" in other_player_id){
    if(is_frozen){
        //with (other_player_id) { shader_start(); }
        draw_sprite_ext( other_player_id.spr_iceclock_back, 0, x, y - (char_height/2), 2, 2, 0, c_white, 0.5 );
        //with (other_player_id) { shader_end(); }
    }
}

if("knife_stack" in self && "spr_stack" in other_player_id){
    if(knife_stack > 0){
        hud_offset = 2;
        var draw_x = -32;
        
        for(var i = 0; i < knife_stack; i++){
            
            draw_sprite_ext(other_player_id.spr_stack, 0, x  + draw_x, y - (char_height + 26), 2, 2, 0, c_white, 1);
            draw_x += 10;
            if(i == 2) draw_x += 10;
        }
    }
}

/*if("countdown" in self && "spr_meter_back" in other_player_id){
    if(countdown > 0){
        hud_offset = 10;
        draw_sprite_ext(other_player_id.spr_meter_back, 0, x - 21, y - (char_height + 24), 2, 2, 0, c_white, 1);
        draw_sprite_part(other_player_id.spr_meter_bar, 0, 0, 0, floor((countdown/400) * 38), 2, x - 19, y - (char_height + 22));
    }
}*/

with (other_player_id) { shader_end(); }