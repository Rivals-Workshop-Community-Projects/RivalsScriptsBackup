//draw_hud - the x position of your HUD element is 48*(i-1)

if("hudv" not in self) exit;


var temp_color = c_white;
draw_sprite(sprite_get("block_hud"), 0, temp_x, temp_y-30);
if(move_cooldown[AT_FSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("boxhud"), 0, temp_x + 200, temp_y - 25, 2, 2, 0, temp_color, 1);




switch(hudv){
    case 0:
    draw_sprite_ext(sprite_get("babahud"), 0, temp_x + 170, temp_y - 25, 0.5, 0.5, 0, c_white, 1);
    break;
    
    case 1:
    draw_sprite_ext(sprite_get("floathud"), 0, temp_x + 170, temp_y - 25, 0.5, 0.5, 0, c_white, 1);
    break;
    
    case 2:
    draw_sprite_ext(sprite_get("shifthud"), 0, temp_x + 170, temp_y - 25, 0.5, 0.5, 0, c_white, 1);
    break;
    
    case 3:
    draw_sprite_ext(sprite_get("sinkhud"), 0, temp_x + 170, temp_y - 25, 0.5, 0.5, 0, c_white, 1);
    break;
    
    case 4:
    draw_sprite_ext(sprite_get("hothud"), 0, temp_x + 170, temp_y - 25, 0.5, 0.5, 0, c_white, 1);
    break;
}












if(bl_show == 1){
    switch(bl_select){
        case 0:
        draw_sprite(sprite_get("block_pointer"), 0, temp_x, temp_y-25);
        break;
        
        
        case 1:
        draw_sprite(sprite_get("block_pointer"), 0, temp_x +17, temp_y-25);
        break;
        
        
        case 2:
        draw_sprite(sprite_get("block_pointer"), 0, temp_x +35, temp_y-25);
        break;
        
        
        case 3:
        draw_sprite(sprite_get("block_pointer"), 0, temp_x +50, temp_y-25);
        break;
        
        
        case 4:
        draw_sprite(sprite_get("block_pointer"), 0, temp_x +65, temp_y-25);
        break;
        
        
        case 5:
        draw_sprite(sprite_get("block_pointer"), 0, temp_x +80, temp_y-25);
        break;
        
        
        case 6:
        draw_sprite(sprite_get("block_pointer"), 0, temp_x +95, temp_y-25);
        break;
        
    }
}

if (bl_select != 7) {
    var names = ["Float", "Tele", "Hot", "Shift", "End", "Sink", "Stop"]
    draw_debug_text(temp_x + 120, temp_y - 10, names[bl_select])
}