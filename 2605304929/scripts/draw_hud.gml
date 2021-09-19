// Code to prevent error from running on first frame
/*
if ("nspecial_resource" not in self){ // 
    exit;
    }
    */
//
//Debug Text  
/*
draw_debug_text( temp_x + 40, temp_y - 20,"window " + string(window));
draw_debug_text( temp_x + 40, temp_y - 40,"window_timer " + string(window_timer));
draw_debug_text( temp_x + 40, temp_y - 60,"x " + string(x));
draw_debug_text( temp_x + 40, temp_y - 80,"y " + string(y));
*/

//draw_debug_text( temp_x + 40, temp_y - 15,"nspecial_resource " + string(nspecial_resource));
//draw_debug_text( temp_x + 40, temp_y - 45,"practice_mode: " + string(practice_mode));

// Draw Hud Elements Carry Over from Klock
var num_of_players = instance_number(oPlayer);
//print(num_of_players)
if(num_of_players == 2){
    var self_id = self;
    var opponent_id;
        with(asset_get("oPlayer")){
            if(id = self_id){}
            else opponent_id = id;
        }
    //print("Daora: " + string(self_id));
    //print("Opponent: " + string(opponent_id));
    
var status_effect_electric_temp, status_effect_water_temp;
    with(opponent_id){
        status_effect_water_temp = status_effect_water;
        status_effect_electric_temp = status_effect_electric;

    }
}

//print(opponent_id)
//shader_start();
        
        // Water
        var water_to_bar_transform = (status_effect_water_temp * 2) + 6;
        if(water_to_bar_transform > 65){water_to_bar_transform = 65};
        draw_rectangle_color(temp_x+6,temp_y,temp_x + 65,temp_y - 16, c_gray,c_gray,c_gray,c_gray,false); //Gray
        draw_rectangle_color(temp_x+6,temp_y,temp_x + water_to_bar_transform,temp_y - 16, c_aqua,c_aqua,c_blue,c_blue,false); //Blue
        
        //Elec
        var elec_to_bar_transform = (status_effect_electric_temp * 2) + 142;
        if(elec_to_bar_transform > 201){elec_to_bar_transform = 201};
        draw_rectangle_color(temp_x + 142,temp_y,temp_x + 201,temp_y - 16, c_gray,c_gray,c_gray,c_gray,false); //Gray
        draw_rectangle_color(temp_x + 142,temp_y,temp_x + elec_to_bar_transform,temp_y - 16, c_yellow,c_yellow,c_orange,c_orange,false); //Yellow
        
        // Draw Main Hud
        draw_sprite_ext(sprite_get( "hud"), 1, temp_x + 104, temp_y - 8,1,1,0,c_white,1);
        
        /*
        draw_debug_text( temp_x + 40, temp_y - 16,"W: " + string(status_effect_water_temp));
        draw_debug_text( temp_x + 140, temp_y - 16,"E: " + string(status_effect_electric_temp));
        */
        // Get closest opponent
        //var nearest_player = instance_nearest(x, y, asset_get("oPlayer"));
        /*
        //Shell 1
        if(move_cooldown[AT_DSPECIAL] == 0){
        draw_sprite_ext(sprite_get( "dspecial_proj"), get_gameplay_time()/6, temp_x + 20, temp_y - 6,1,1,0,c_white,1);
        }
        */
        /*
        //Shell 2
        if(shells == 2){
        draw_sprite_ext(sprite_get( "shell"), 1, temp_x + 10, temp_y - 6,1,1,90,c_white,1);
        }
        
        if(move_cooldown[AT_DSPECIAL] == 0){
        draw_sprite_ext(sprite_get( "suitcase_icon"), 1, temp_x + 30, temp_y - 2,1,1,0,c_white,1);
        }
        
        if(move_cooldown[AT_FSPECIAL] == 0){
        draw_sprite_ext(sprite_get( "roll_icon"), 1, temp_x +60, temp_y - 2,1,1,0,c_white,1);
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
