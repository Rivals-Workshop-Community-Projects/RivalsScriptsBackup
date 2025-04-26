// Code to prevent error from running on first frame

// Draw the cloud as a Meter, using code from Iroh DE

    var temp_cooldown_remaining = move_cooldown[AT_FSPECIAL];
    var temp_cooldown_duration = 60;
    var bar_length_in_px = 30; // Legnth of bar
    var bar_height_in_px = 10; // Height of Bar
    var top_left_x = 0; // Start the bar at the right side
    var top_left_y = 11; // Location of center of bar vertically
    var start_x = temp_x + 175;
    var start_y = temp_y - 2;
    var cooldown_percentage = (temp_cooldown_duration - temp_cooldown_remaining) / temp_cooldown_duration; // Convert frame cooldown to a percentage
    var pixel_length_to_display = (cooldown_percentage * bar_length_in_px); // Determins percent and converts it to bar length. Need floor to prevent mixels
    // Check if Odd and round up to even)
    if(pixel_length_to_display % 2 == 1){
    	pixel_length_to_display--;
    }
    
    shader_start();
    //draw_sprite_ext(sprite_get("platform_icon"),1,start_x,start_y,1,1,0,c_white,1);
    // Draw ramping up with image index 0
    if(move_cooldown[AT_FSPECIAL] != 0){
    	// Draw the bark grayed out during the move
	    if(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	    	draw_sprite_part(sprite_get("platform_icon"),0,top_left_x,top_left_y,pixel_length_to_display,bar_height_in_px,start_x,start_y);
	    	//print("in fspec");
	    }
	    // Else draw the bar rising
    	draw_sprite_part(sprite_get("platform_icon"),0,top_left_x,top_left_y,pixel_length_to_display,bar_height_in_px,start_x,start_y);
    }
    // If fspecial is in use, show it grayed out

    // Else draw icon indicating its ready with image index 1
    else{
    	draw_sprite_ext(sprite_get("platform_icon"),1,start_x,start_y,1,1,0,c_white,1);
    	//draw_sprite_part(sprite_get("platform_icon"),1,top_left_x,top_left_y,pixel_length_to_display,bar_height_in_px,start_x,start_y);
    	//draw_sprite_part(sprite_get("platform_icon"),1,top_left_x,top_left_y,pixel_length_to_display,bar_height_in_px,start_x,start_y);
    }
	//draw_debug_text(start_x, start_y - 25,"pixel length: " + string(pixel_length_to_display));
    //draw_debug_text(start_x, start_y - 40,"cooldown_frames: " + string(temp_cooldown_remaining));
    shader_end();

//#region AI Draw
/*
// debrug draw

// debrug draw
// Draw AI Variables

// Variable Info

ai_target -	The current target of the AI.
ai_recovering -	Is true while the AI is attempting to recover back onto the stage.
temp_level -	The difficulty level of the AI, from 1 to 9.
ai_attack_timer -	The amount of frames since the AI last attacked.
ai_attack_time -	The minimum amount of frames before the AI can try attacking again.
ready_to_attack -	Is true if the AI can perform an attack.
ai_going_into_attack -	Is true if the AI is attempting to attack.
ai_going_left -	Is true if the AI is moving left.
ai_going_right -	Is true if the AI is moving right.

Note: There is no strong_pressed. Use [direction]_strong_pressed instead.

attack
special
jump
shield
strong
taunt
up
down
left
right
[direction]_strong
[direction]_stick

*/
/*
// Temp variables to move the draw
var current_x = temp_x;
var current_y = temp_y - 485;
var y_offset_per_line = 15;

// ---AI Built In Variables---
	if("ai_target" in self){
draw_debug_text(current_x, current_y,"-AI Built In Variables-");
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Target:" + string(get_char_info(ai_target.player, INFO_STR_NAME))); // Target
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Recovering:"+ string(ai_recovering)); 
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"temp_level:"+ string(temp_level)); 
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_attack_timer:"+ string(ai_attack_timer)); 
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_attack_time:"+ string(ai_attack_time));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ready_to_attack:"+ string(ready_to_attack));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_going_into_attack:"+ string(ai_going_into_attack));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_going_left:"+ string(ai_going_left));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_going_right:"+ string(ai_going_right));
current_y += y_offset_per_line;
}

// 2nd block
current_x = temp_x + 200
current_y = temp_y - 485;
// --- AI Input Reading ---
draw_debug_text(current_x, current_y,"---AI Input Reading---"); //Attack
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Atk input:" + string(attack_pressed)); //Attack
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Spl input:" + string(special_pressed)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Sld input:" + string(shield_pressed)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Jmp input:" + string(jump_pressed)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Tnt input:" + string(taunt_pressed)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"L.STR input:" + string(left_strong_pressed)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"U.STR input:" + string(up_strong_pressed)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"R.STR input:" + string(right_strong_pressed)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"D.STR input:" + string(down_strong_pressed)); //special
current_y += y_offset_per_line;
//draw_debug_text(current_x, current_y,"Joy Idle:" + string(joy_idle));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Joy Direction:" + string(joy_dir));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Left Pressed:" + string(left_down));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Up Presed:" + string(up_down));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Right Pressed:" + string(right_down));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"Down Pressed:" + string(down_down));
current_y += y_offset_per_line;

/*
// Custom Variables
draw_debug_text(current_x, current_y,"target_relative_x:" + string(target_relative_x)); //special
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"target_relative_y:" + string(target_relative_y));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_facing_target:" + string(ai_facing_target));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_neutral_route:" + string(ai_neutral_route_selection));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_sequence_timer:" + string(ai_sequence_timer));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_sequence:" + string(ai_sequence));
current_y += y_offset_per_line;
draw_debug_text(current_x, current_y,"ai_current_mode:" + string(ai_current_mode));
current_y += y_offset_per_line;
*/

// Geographical

//#endregion

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

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));
draw_set_halign(fa_middle); // This is important cause it will cause the text to not align properly
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);

