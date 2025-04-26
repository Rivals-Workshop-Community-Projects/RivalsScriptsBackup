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
       	avocado = true;
			switch(get_player_color(player)){
           	case 12:
           	secret_alt_num = 1;
           	break;
           	case 14:
           	secret_alt_num = 2;
           	break;
           	case 15:
           	secret_alt_num = 3;
           	break;
           	case 16:
           	secret_alt_num = 4;
           	break;      
           	case 22:
           	secret_alt_num = 5;
           	break; 
           	case 21:
           	secret_alt_num = 6;
           	break; 
           	case 8:
           	secret_alt_num = 7;
           	break;
           	case 20:
           	secret_alt_num = 8;
           	break;        
           }
           sound_play(asset_get("mfx_levelup"));
           break;
           case 1:
           secret_alt_on = 0;    
           alt_button = 0;
           secret_alt_num = 0;
           avocado = false;
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

if(get_player_color(player) == 22){//drip
set_color_profile_slot( 22, 0, 248, 215, 79 ); //Gumbo Skin 1
set_color_profile_slot( 22, 1, 248, 182, 0 ); //Gumb Skin 2
set_color_profile_slot( 22, 2, 101, 103, 166 ); //Jeans
set_color_profile_slot( 22, 3, 242, 106, 43 ); //Hoodie
set_color_profile_slot( 22, 4, 255, 255, 255 ); //Eyes
set_color_profile_slot( 22, 5, 255, 143, 227 ); //Po Skin 1
set_color_profile_slot( 22, 6, 101, 68, 212 ); //Po Skin 2
set_color_profile_slot( 22, 7, 255, 255, 255 ); //Apron
}if(get_player_color(player) == 15){//terry
set_color_profile_slot( 16, 0, 130, 90, 49 ); //Gumbo Skin 1
set_color_profile_slot( 16, 1, 107, 107, 107 ); //Gumb Skin 2
set_color_profile_slot( 16, 2, 212, 78, 78 ); //Jeans
set_color_profile_slot( 16, 3, 115, 79, 43 ); //Hoodie
set_color_profile_slot( 16, 4, 245, 254, 255 ); //Eyes
set_color_profile_slot( 16, 5, 207, 23, 23 ); //Po Skin 1
set_color_profile_slot( 16, 6, 255, 214, 214 ); //Po Skin 2
set_color_profile_slot( 16, 7, 255, 255, 255 ); //Apron    
}if(get_player_color(player) == 15){//tag
set_color_profile_slot( 15, 0, 149, 202, 116 ); //Gumbo Skin 1
set_color_profile_slot( 15, 1, 192, 227, 165 ); //Gumb Skin 2
set_color_profile_slot( 15, 2, 96, 158, 155 ); //Jeans
set_color_profile_slot( 15, 3, 255, 147, 94 ); //Hoodie
set_color_profile_slot( 15, 4, 255, 223, 112 ); //Eyes
set_color_profile_slot( 15, 5, 129, 235, 230 ); //Po Skin 1
set_color_profile_slot( 15, 6, 220, 66, 83 ); //Po Skin 2
set_color_profile_slot( 15, 7, 248, 229, 151 ); //Apron
}if(get_player_color(player) == 14){//ftl
set_color_profile_slot( 14, 0, 48, 161, 201 ); //Gumbo Skin 1
set_color_profile_slot( 14, 1, 255, 203, 31 ); //Gumb Skin 2
set_color_profile_slot( 14, 2, 134, 130, 143 ); //Jeans
set_color_profile_slot( 14, 3, 110, 110, 110 ); //Hoodie
set_color_profile_slot( 14, 4, 255, 255, 255 ); //Eyes
set_color_profile_slot( 14, 5, 255, 200, 0 ); //Po Skin 1
set_color_profile_slot( 14, 6, 158, 158, 158 ); //Po Skin 2
set_color_profile_slot( 14, 7, 49, 222, 198 ); //Apron
}if(get_player_color(player) == 12){//kaiman
set_color_profile_slot( 12, 0, 129, 143, 83 ); //Gumbo Skin 1
set_color_profile_slot( 12, 1, 227, 231, 187 ); //Gumb Skin 2
set_color_profile_slot( 12, 2, 82, 86, 69 ); //Jeans
set_color_profile_slot( 12, 3, 35, 32, 54 ); //Hoodie
set_color_profile_slot( 12, 4, 163, 46, 39 ); //Eyes
set_color_profile_slot( 12, 5, 79, 150, 156 ); //Po Skin 1
set_color_profile_slot( 12, 6, 206, 193, 130 ); //Po Skin 2
set_color_profile_slot( 12, 7, 63, 83, 110 ); //Apron
}if(get_player_color(player) == 21){//s&b
set_color_profile_slot( 21, 0, 77, 78, 94 ); //Gumbo Skin 1
set_color_profile_slot( 21, 1, 140, 140, 140 ); //Gumb Skin 2
set_color_profile_slot( 21, 2, 239, 217, 70 ); //Jeans
set_color_profile_slot( 21, 3, 175, 102, 184 ); //Hoodie
set_color_profile_slot( 21, 4, 243, 242, 160 ); //Eyes
set_color_profile_slot( 21, 5, 149, 110, 67 ); //Po Skin 1
set_color_profile_slot( 21, 6, 110, 70, 27 ); //Po Skin 2
set_color_profile_slot( 21, 7, 255, 255, 255 ); //Apron
}if(get_player_color(player) == 8){//pokemon
set_color_profile_slot( 8, 0, 156, 73, 73 ); //Gumbo Skin 1
set_color_profile_slot( 8, 1, 89, 89, 89 ); //Gumbo Skin 2
set_color_profile_slot( 8, 2, 110, 98, 98 ); //Jeans
set_color_profile_slot( 8, 3, 110, 51, 51 ); //Hoodie
set_color_profile_slot( 8, 4, 145, 145, 145 ); //Eyes
set_color_profile_slot( 8, 5, 207, 168, 113 ); //Po Skin 1
set_color_profile_slot( 8, 6, 138, 138, 138 ); //Po Skin 2
set_color_profile_slot( 8, 7, 178, 183, 184 ); //Apron
}if(get_player_color(player) == 20){//chef
set_color_profile_slot( 20, 0, 230, 182, 52 ); //Gumbo Skin 1
set_color_profile_slot( 20, 1, 88, 88, 95 ); //Gumbo Skin 2
set_color_profile_slot( 20, 2, 60, 123, 171 ); //Jeans
set_color_profile_slot( 20, 3, 61, 61, 76 ); //Hoodie
set_color_profile_slot( 20, 4, 255, 255, 255 ); //Eyes
set_color_profile_slot( 20, 5, 208, 157, 218 ); //Po Skin 1
set_color_profile_slot( 20, 6, 86, 173, 75 ); //Po Skin 2
set_color_profile_slot( 20, 7, 201, 224, 221 ); //Apron
}
