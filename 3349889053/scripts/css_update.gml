cpu_hover_update(); //put this at the VERY TOP of the file.

//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen

css_char_anim_time ++; //animates the css by counting up, similarly to a state_timer
css_anim_time ++; //animates the css by counting up, similarly to a state_timer
alt_cur = get_player_color(player); //checks the current alt
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

//if the current alt isn't the same as the previous one, reset the animation timer and update the previous alt
if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}




/*
if get_synced_var(player) > 3 {
	set_synced_var( player, css_port_select);
}
*/

//Colorshift button
if ((get_instance_x(cursor_id) >= x + button_cord[1,0] && get_instance_x(cursor_id) <= x + button_cord[1,0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1,1] && get_instance_y(cursor_id) <= y + button_cord[1,1] + 26)) {
    suppress_cursor = true;
    if (menu_a_pressed) {
        menu_a_pressed = false;
        color_shift++
        sound_play(asset_get("mfx_option"))
    }
} else {
    suppress_cursor = false;
}

//set_synced_var(player, css_port_select);


//#region Gunner Color Code
	// This sets the color shift variable on button press
    // Activates when the color shift button is pressed.
    
    // Should have button presssing code above this to change the color shift by adding one to it.
    // If button_pressed etc
    {
    if(color_shift > total_num_color_shifts){
        color_shift = 0;
    }
    
    // Calls init_shader manually on color shift
    manual_init_shader_call = true;
    init_shader();
	}
	// Last Frame Color Handing
	// Detects if the color has changed and then inits the shader.
	// Activates when the alt is changed.
	if(last_frame_color_alt != get_player_color(player)){
		last_frame_color_alt = get_player_color(player);
		manual_init_shader_call = true;
		init_shader();
	}
//#endregion

//#region Synced Variable Setting
// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Dino's button - Should Switch - 1 bit
3. Results portrait - Awesome -  1 bit
*/

generated_var = generate_synced_var(color_shift,2,css_port_select,1,awesome,1)
set_synced_var(player, real(generated_var));

//#endregion
















//as always, #defines go at the bottom of the script.
#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);

if (is_cpu) {
    var pb = plate_bounds, cs = cursors;
    if (cpu_is_hovered) {
        //suppress_cursor = true;
        var c = cs[@cpu_hovering_player]
        cursor_id = c;
        var cx = get_instance_x(c),
            cy = get_instance_y(c);
        if (cpu_hover_time < 10) cpu_hover_time++;
        if (cpu_color_swap_time < 5) cpu_color_swap_time++;
        if (cx != clamp(cx, pb[0],pb[2]) || cy != clamp(cy, pb[1],pb[3])) {
            cpu_is_hovered = false;
            c = cs[@p];
            cursor_id = c;
        }
    } else {
        //suppress_cursor = false;
        var hplayer = get_new_hovering_player();
        if (cpu_hover_time > 0) cpu_hover_time--;
        if (hplayer != -1) {
            cpuh_new_color = get_player_hud_color(hplayer);
            if (cpu_hover_time > 0) {
                cpuh_prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else { //if the player indicator is not being displayed already
                cpuh_prev_color = cpuh_new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cs[@hplayer];
        }
    }
}

voice_button_x = 180 - 16*is_cpu
voice_button_y = 75

#define get_new_hovering_player()
var pb = plate_bounds, cs = cursors;
suppress_cursor = true;
for (var i = 1; i <= 4; i++) {
    var c = cs[@i];
    var cx = get_instance_x(c);
    var cy = get_instance_y(c);
    if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) {
        return i;
    } 
}
return -1;

#define generate_synced_var
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.
var output = 0;
var num_chunks = argument_count/2;
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var pos = (i*2);
    var shift = (pos-1 >= 0) ? argument[pos-1] : 0;
    total_len += argument[pos+1];
    output = output | argument[pos];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}
return real(output);