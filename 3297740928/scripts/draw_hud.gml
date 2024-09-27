if !("menu_open" in self) exit;

//The Menu(tm)
if(menu_open == true){
    shader_start();
    if(menu_timer > 120){
        draw_sprite(hud_menu, ((menu_timer - 120) / 3) - 2, temp_x - 12, temp_y - 144);
        shader_end();
    }else{
        draw_sprite(hud_menu, 2, temp_x - 12, temp_y - 144);
        shader_end();
        var menuy = -124;
        var i;
        for(var menux = 40; menux <= 174; menux += 44){
            menuy = -124;
            switch (menux){
                case 40:
                    var specstripname = "hud_nspecs";
                    i = 0;
                    break;
            
                case 84:
                    specstripname = "hud_fspecs";
                    i = 1;
                    break;
            
                case 128:
                    specstripname = "hud_uspecs";
                    i = 2;
                    break;
            
                case 172:
                    specstripname = "hud_dspecs";
                    i = 3;
                    break;
            }
            for(var j = 0; j < 3; j++){
                if(specs_chosen[i, j] == true){
                    draw_sprite(sprite_get(specstripname), j, temp_x + menux, temp_y + menuy);
                }
                menuy += 40;
            }
        }
        var width = 52 + (44 * (active_col + 1));
        draw_sprite_part_ext(sprite_get("hud_blackout"), 0, width, 0, 232 - width, 146, temp_x - 12 + width, temp_y - 144, 1, 1, c_black, 0.5);
        if(menu_dir != -1){
            if (menu_dir != 69){
                draw_sprite_ext(sprite_get("hud_arrowglow"), menu_dir, temp_x -12, temp_y - 144, 1, 1, 0, c_white, 0.7);
            }
        }
    }
}
//Menu Closing
if(close_timer > 0){
    shader_start();
    draw_sprite(hud_menu, (floor(close_timer / 2) + 5), temp_x - 12, temp_y - 144);
    shader_end();
}

//Hud Icons
if(!menu_open){
    draw_sprite(sprite_get("hud_nspecs"), specialnums[0], temp_x + 40, temp_y - 26);
    draw_sprite(sprite_get("hud_fspecs"), specialnums[1], temp_x + 84, temp_y - 26);
    draw_sprite(sprite_get("hud_uspecs"), specialnums[2], temp_x + 128, temp_y - 26);
    draw_sprite(sprite_get("hud_dspecs"), specialnums[3], temp_x + 172, temp_y - 26);
}




if(practice && menu_timer == -1 && close_timer == -1){
    draw_debug_text(temp_x, temp_y - 36, "Taunt in Practice for Special Menu!");
}

