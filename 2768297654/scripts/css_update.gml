cpu_hover_update(); //put this at the VERY TOP of the file.

var alt_button_pos = 
[
    x + alt_button_x,
    y + alt_button_y,
    x + alt_button_x+30,
    y + alt_button_y+26,
]

//if get_synced_var(player) > 2 {
	//set_synced_var( player, 0)
//}

if(!reset_alts){
	//synced_vars[0] = 0;
	update_sync_var();
	wagabaga_bobo();
	reset_alts = true;
}

var alt_button_index = alt_button*3;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

if (cursor_x > alt_button_pos[0] && cursor_x < alt_button_pos[2] && cursor_y > alt_button_pos[1] && cursor_y < alt_button_pos[3] && !instance_exists(oTestPlayer))
{
	if(is_alt_changeable){
	suppress_cursor = true;
   if (menu_a_pressed){
       alt_button_index++;
       sound_play(asset_get("mfx_option"));
       switch(alt_button){
       	case 0:
       	secret_alt_on = 1;
       	alt_button = 1;
       	seinfeld = true;
			switch(get_player_color(player)){
           	case 22:
           	secret_alt_num = 1;
           	break;
           	case 21:
           	secret_alt_num = 2;
           	break;
           	case 20:
           	secret_alt_num = 3;
           	break;
           	case 1:
           	secret_alt_num = 4;
           	break;
           }
           sound_play(asset_get("mfx_levelup"));
           break;
           case 1:
           secret_alt_on = 0;    
           alt_button = 0;
           secret_alt_num = 0;
           seinfeld = false;
           sound_play(asset_get("mfx_back"));
           break;
       }
       update_sync_var();
       print(synced_vars[0])
   }
   alt_button_index++;
	}
}else {
    suppress_cursor = false;
}

//set_synced_var( player, voice_button)
//set_synced_var( player, secret_alt_on)
//secret_alt_on = get_synced_var(player)

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

//voice_button_x = 180 - 16*is_cpu
//voice_button_y = 75

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
    synced_vars = [secret_alt_on];
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
#define wagabaga_bobo()

if(get_player_color(player) == 21){ // FTL
set_color_profile_slot( 21, 0, 55, 185, 232 ); //Shirt
set_color_profile_slot( 21, 1, 248, 207, 170 ); //Skin
set_color_profile_slot( 21, 2, 159, 97, 61 ); //Hair1
set_color_profile_slot( 21, 3, 119, 73, 29 ); //Hair2
set_color_profile_slot( 21, 4, 53, 85, 89 ); //Pants
set_color_profile_slot( 21, 5, 255, 203, 31 ); //Shoes
set_color_profile_slot( 21, 6, 255, 203, 31 ); //Shirt Stripe
}
if(get_player_color(player) == 22){ // TAG
set_color_profile_slot( 22, 0, 255, 147, 94 ); //Shirt
set_color_profile_slot( 22, 1, 217, 146, 105 ); //Skin
set_color_profile_slot( 22, 2, 89, 62, 43 ); //Hair1
set_color_profile_slot( 22, 3, 89, 62, 43 ); //Hair2
set_color_profile_slot( 22, 4, 96, 158, 155 ); //Pants
set_color_profile_slot( 22, 5, 149, 202, 116 ); //Shoes
set_color_profile_slot( 22, 6, 248, 219, 94 ); //Shirt Stripe
}
if(get_player_color(player) == 20){ // BLW
set_color_profile_slot( 20, 0, 97, 97, 97 ); //Shirt
set_color_profile_slot( 20, 1, 138, 99, 59 ); //Skin
set_color_profile_slot( 20, 2, 59, 59, 59 ); //Hair1
set_color_profile_slot( 20, 3, 59, 59, 59 ); //Hair2
set_color_profile_slot( 20, 4, 122, 71, 52 ); //Pants
set_color_profile_slot( 20, 5, 255, 212, 71 ); //Shoes
set_color_profile_slot( 20, 6, 255, 212, 71 ); //Shirt Stripe
}
if(get_player_color(player) == 1){ // Orange
set_color_profile_slot( 1, 0, 255, 186, 140 ); //Shirt
set_color_profile_slot( 1, 1, 238, 200, 169 ); //Skin
set_color_profile_slot( 1, 2, 159, 97, 61 ); //Hair1
set_color_profile_slot( 1, 3, 119, 73, 29 ); //Hair2
set_color_profile_slot( 1, 4, 79, 168, 157 ); //Pants
set_color_profile_slot( 1, 5, 126, 63, 37 ); //Shoes
set_color_profile_slot( 1, 6, 255, 248, 238 ); //Shirt Stripe
}
