// Code to prevent error from running on first frame
if ("shells" not in self){ // 
    exit;
    }
    
// Draw Hud Elements    
shader_start();

        //Shell 1
        if(shells >=1){
        draw_sprite_ext(sprite_get( "shell"), 1, temp_x + 180, temp_y - 4,1,1,90,c_white,1);
        }
        
        //Shell 2
        if(shells == 2){
        draw_sprite_ext(sprite_get( "shell"), 1, temp_x + 186, temp_y - 4,1,1,90,c_white,1);
        }
        
        if(move_cooldown[AT_DSPECIAL] == 0){
        draw_sprite_ext(sprite_get( "suitcase_icon"), 1, temp_x + 200, temp_y - 0,1,1,0,c_white,1);
        }
shader_end();

//Unused Code ----------------------------------------------------------------
//draw_debug_text( temp_x + 0, temp_y - 10, "Shells x" + string(shells));
//draw_debug_text( temp_x + 0, temp_y - 25, "heat: " + string(heat));
//draw_debug_text( temp_x + 0, temp_y - 40, "Overklock: " + string(overklock_active));
//draw_debug_text( temp_x + 0, temp_y - 55, "attack: " + string(attack));
//draw_debug_text( temp_x + 0, temp_y - 70, "heat_fx_play_timer: " + string(heat_fx_play_timer));
//draw_debug_text( temp_x + 0, temp_y - 85, "heat_fx_play: " + string(heat_fx_play));
//draw_debug_text( temp_x + 0, temp_y - 45,"In Field: " + string(in_overklock_field));
//draw_debug_text( temp_x + 40, temp_y - 20,"Dspec cooldown: " + string(move_cooldown[AT_DSPECIAL]));
