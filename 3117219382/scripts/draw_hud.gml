//draw_hud.gml
//this script runs pretty much all the time, and simply draws whatever we tell it over the player's UI at the bottom of the screen
//instead of "x" and "y" we use "temp_x" and "temp_y" for proper locations

if ("char_height" not in self) exit;

if (debug_display)
{
    var mul = 16; //spacing
    
    draw_debug_text(temp_x+mul*0, temp_y+mul*-4, "state = " + string(get_state_name(state)));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-3, "state_timer = " + string(state_timer));

    if (
        attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
    {
        if (attacking) draw_debug_text(temp_x+mul*0, temp_y+mul*-7, "attack = " + string(attack_names[attack]));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-6, "window = " + string(window));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-5, "window_timer = " + string(window_timer));
    }

    draw_debug_text(temp_x+mul*0, temp_y+mul*-2, "x = " + string(x));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-1, "y = " + string(y));

    draw_debug_text(temp_x+mul*5, temp_y+mul*-2, "hsp = " + string(hsp));
    draw_debug_text(temp_x+mul*5, temp_y+mul*-1, "vsp = " + string(vsp));
    
    draw_debug_text(temp_x+mul*10, temp_y+mul*-1, "frict = " + string(frict));
}

//image index explanation: if the charge is equal or over the max charge value, the sprite flashes
//the timing is controlled with game_time * 0.25
//we multiply the game_time value, which represents the get_gameplay_time function, by 0.25 so it displays 1 image over 4 frames

//text drawing
// draw_debug_text(
//     (!debug_display ? temp_x + 156 : temp_x + 184) + 16,    //debug display alters the position of the hud
//     (!debug_display ? temp_y - 32 : temp_y - 50) + 10,      //the +16 and +10 are offsets
//     string(floor(coins_in_bag))
// );

var coins_img = 0;
coins_img  = ((coin_fade_in_time - coin_fade_in_timer)*9/coin_fade_in_time) + (coins_in_bag-1)*9;
shader_start()
draw_sprite_ext(coins_hud_spr, coins_img, temp_x + 200, temp_y, 2, 2, 0, c_white, 1);

var fspecial_hud_img = 0;
var moving_part = 0;
if(fspecial_hud_timer >= fspecial_hud_goaway_time+fspecial_hud_stay_time){
	var start_timer = 0;
	moving_part = start_timer + ((fspecial_hud_time - fspecial_hud_timer)*4)/fspecial_hud_enter_time
}else if(fspecial_hud_timer >= fspecial_hud_goaway_time){
	var start_timer = 4;
	moving_part = start_timer + (((fspecial_hud_goaway_time+fspecial_hud_stay_time) - fspecial_hud_timer))*1/fspecial_hud_stay_time
}else{
	var start_timer = 5;
	moving_part = start_timer + ((fspecial_hud_goaway_time - fspecial_hud_timer))*3/fspecial_hud_goaway_time
}

fspecial_hud_img  = moving_part + (lvl-1)*8;
draw_sprite_ext(fspecial_hud_spr, fspecial_hud_img, temp_x + 50, temp_y, 2, 2, 0, c_white, 1);
shader_end()

// draw_debug_text(
//     (!debug_display ? temp_x + 100 : temp_x + 184) + 16,    //debug display alters the position of the hud
//     (!debug_display ? temp_y - 32 : temp_y - 50) + 10,      //the +16 and +10 are offsets
//     string(coins_img)
// );