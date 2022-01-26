// Code to prevent error from running on first frame
//#region Gannoncide Platform Icon
if ("ganoncide_preventor_available_flag" not in self){ // 
    exit;
    }

if(ganoncide_preventor_available_flag == true){
    draw_sprite_ext(sprite_get( "platform_icon"), 1, temp_x + 190, temp_y,1,1,0,c_white,1);
}
else{
    draw_sprite_ext(sprite_get( "platform_icon"), 1, temp_x + 190, temp_y,1,1,0,c_dkgray,1);
}
//#endregion


//#region Secret Alts
if(state == PS_SPAWN){
    var current_alt = get_player_color(player);
    if(current_alt == 30){
        var attack_button, special_button, strong_button, jump_button, shield_button, taunt_button;
        var alt_index = attack_down + special_down*2 + strong_down*4 + jump_down*8 + shield_down*16 + taunt_down*32;
        if(attack_down){draw_debug_text(temp_x + 0, temp_y - 40,"AT:1");}
        if(special_down){draw_debug_text( temp_x + 33, temp_y - 40,"SP:2");}
        if(strong_down){draw_debug_text( temp_x + 66, temp_y - 40,"ST:4");}
        if(jump_down){draw_debug_text( temp_x + 99, temp_y - 40,"JP:8");}
        if(shield_down){draw_debug_text( temp_x + 131, temp_y - 40,"SH:16");}
        if(taunt_down){draw_debug_text( temp_x + 170, temp_y - 40,"TA:32");}
        draw_debug_text( temp_x + 0, temp_y - 25,"Color Picker Alt Number: " + string(alt_index));
        draw_debug_text( temp_x + 0, temp_y - 10,"Name: " + string(color_select_alt_name));
    }
}
//#endregion
/*
//#region AI Draw
var target_relative_x = ai_target.x - x;
var target_relative_y = ai_target.y - y;
var ai_facing_target = spr_dir * sign(target_relative_x);
var ai_above_target = sign(target_relative_y);


// Ai Draw
draw_debug_text(temp_x + 0, temp_y - 10,"Target:" + string(get_char_info(ai_target.player, INFO_STR_NAME))); // Target
draw_debug_text(temp_x + 0, temp_y - 25,"Recovering:"+ string(ai_recovering)); //Recovery
draw_debug_text(temp_x + 0, temp_y - 40,"Atk input:" + string(attack_pressed)); //Attack
draw_debug_text(temp_x + 0, temp_y - 55,"Spl input:" + string(special_pressed)); //special
draw_debug_text(temp_x + 0, temp_y - 70,"Stk input:" + string(strong_down)); //special
draw_debug_text(temp_x + 0, temp_y - 85,"Sld input:" + string(shield_pressed)); //special

draw_debug_text(temp_x + 110, temp_y - 10,"Jump input:" + string(jump_pressed)); //special
draw_debug_text(temp_x + 110, temp_y - 25,"Up input:" + string(up_pressed));
draw_debug_text(temp_x + 110, temp_y - 40,"Down input:" + string(down_pressed));
draw_debug_text(temp_x + 110, temp_y - 55,"Right input:" + string(right_pressed));
draw_debug_text(temp_x + 110, temp_y - 70,"Left input:" + string(left_pressed));
draw_debug_text(temp_x + 110, temp_y - 85,"Joy Direction:" + string(joy_dir));

draw_debug_text(temp_x + 220, temp_y - 10,"target_relative_x:" + string(target_relative_x)); //special
draw_debug_text(temp_x + 220, temp_y - 25,"target_relative_y:" + string(target_relative_y));
draw_debug_text(temp_x + 220, temp_y - 40,"ai_facing_target:" + string(ai_facing_target));
draw_debug_text(temp_x + 220, temp_y - 55,"ai_above_target:" + string(ai_above_target));
draw_debug_text(temp_x + 220, temp_y - 70,"ai_current_mode:" + string(ai_current_mode));
draw_debug_text(temp_x + 220, temp_y - 85,"null:" + string(0));

//#endregion
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
// distance_to_object(opponent_id) is a built in GML function that works
// Declared in init //distance_to_opponent = [0,0,0];
/*
var num_of_players = instance_number(oPlayer);
var opponent_distance_temp = [];
var opponent_object_iterator = 0;

//print(num_of_players)
if(num_of_players == 2){
    var self_id = self;
    var opponent_id;
        with(asset_get("oPlayer")){
            if(id = self_id){}
            else opponent_id = id;
        }
    //print(distance_to_object(opponent_id));
    //print("Daora: " + string(self_id));
    //print("Opponent: " + string(opponent_id));
}
//print(num_of_players);
if(num_of_players > 2){
    var self_id = self;
    var opponent_id =[];
        with(asset_get("oPlayer")){
            if(id = self_id){} // Igonore the player
            else if(clone){num_of_players--;} // Ignore clones and deduct num of players
            else {
                opponent_id[player] = id;
                opponent_distance_temp[player] = distance_to_object(self_id);
                //print(opponent_distance_temp);
            }
        }
        
        var min_of_distance = 9999; // Set it high for comparison
        var min_of_distance_id;
    for(var i = 1;i<num_of_players + 1;i++){
        //print(string(opponent_id[i])+": " + string(opponent_distance_temp[i]));
        if(player = i){
           // print("Daora is player" + string(i));
        }
        else{
            if(min_of_distance > opponent_distance_temp[i]){
                min_of_distance = opponent_distance_temp[i];
                min_of_distance_id = opponent_id[i];
            }
        }
    }
    opponent_id = min_of_distance_id;
   //print(string(min_of_distance_id)+": " + string(min_of_distance));
        //print(num_of_players);
       /* for(var i = 0;2;i++){
            distance_to_opponent[i] = opponent_distance_temp[i];
        }*/
        //print("in loop");
        //print(distance_to_opponent);
    //print("Daora: " + string(self_id));
    //print("Opponent: " + string(opponent_id));
    /*
}
// Draw section assuming there is an opponent
if(num_of_players > 1){
var status_effect_electric_temp, status_effect_water_temp;
    with(opponent_id){
        status_effect_water_temp = status_effect_water;
        status_effect_electric_temp = status_effect_electric;

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
}
        
shader_end();
*/
//Unused Code ----------------------------------------------------------------
//draw_debug_text( temp_x + 0, temp_y - 10, "Shells x" + string(shells));
//draw_debug_text( temp_x + 0, temp_y - 25, "heat: " + string(heat));
//draw_debug_text( temp_x + 0, temp_y - 40, "Overklock: " + string(overklock_active));
//draw_debug_text( temp_x + 0, temp_y - 55, "attack: " + string(attack));
//draw_debug_text( temp_x + 0, temp_y - 70, "heat_fx_play_timer: " + string(heat_fx_play_timer));
//draw_debug_text( temp_x + 0, temp_y - 85, "heat_fx_play: " + string(heat_fx_play));
//draw_debug_text( temp_x + 0, temp_y - 45,"In Field: " + string(in_overklock_field));
//draw_debug_text( temp_x + 40, temp_y - 20,"Dspec cooldown: " + string(move_cooldown[AT_DSPECIAL]));
