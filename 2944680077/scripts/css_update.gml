cpu_hover_update(); //put this at the VERY TOP of the file.

var voice_button_pos = 
[
    x + voice_button_x,
    y + voice_button_y,
    x + voice_button_x+30,
    y + voice_button_y+26,
]

//if get_synced_var(player) > 2 {
	//set_synced_var( player, 0)
//}

var voice_button_index = voice_button*3;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

if (cursor_x > voice_button_pos[0] && cursor_x < voice_button_pos[2] && cursor_y > voice_button_pos[1] && cursor_y < voice_button_pos[3] && !instance_exists(oTestPlayer))
{
	suppress_cursor = true;
   if (menu_a_pressed){
       voice_button_index++;
       sound_play(sound_get("smw_switch"));
       switch(voice_button){
       	   case 0:
           sound_play(sound_get("voc_herewego"), false, noone, 3);
           voice_button = 1; 
           break;
       		case 1:
           voice_button = 0;
           sound_stop(sound_get("voc_herewego"));
           break;
       }
       update_sync_var();
       	print(synced_vars[0])
   }
   voice_button_index++;
}else {
    suppress_cursor = false;
}


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
voice_button_y = 36

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
#define update_sync_var
{
    synced_vars = [voice_button];
    synced_number = generate_var_chunk(synced_vars);

    set_synced_var(player, synced_number);
}
#define generate_var_chunk(var_array)
{
    // chunk format:
    // 4 bits per option
    var chunk = 0;
    //set specials from array, doing it backwards tho. i read it right to left in init
    var len = array_length(var_array)-1
    for (var i = len; i >= 0; i--) {
        //print(`${i} = ${var_array[i]}`); //debug print woo
        if (i != len)
            chunk = chunk << 4; //bitshift left 4 to make room for the next value
        chunk += var_array[i]; //add the special's value
    }
    return real(chunk);
}
