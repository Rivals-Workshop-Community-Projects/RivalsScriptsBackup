cpu_hover_update();

if (get_color_profile_slot_r(1, 0) == 179) {
    sound_play(asset_get("sfx_hod_steam_level1"));
    set_color_profile_slot( 1, 0, 180, 138, 102 );
}

//alt button

var alt_button_pos = 
[
    x + alt_button_x,
    y + alt_button_y,
    x + alt_button_x+30,
    y + alt_button_y+26,
]

var alt_button_index = alt_button*3;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

if (cursor_x > alt_button_pos[0] && cursor_x < alt_button_pos[2] && cursor_y > alt_button_pos[1] && cursor_y < alt_button_pos[3] && !instance_exists(oTestPlayer))
{
	if(is_alt_changeable){
   alt_button_index++;
	}
}

//set_synced_var( player, voice_button)
//set_synced_var( player, secret_alt_on)
//secret_alt_on = get_synced_var(player)
if(!secret_alt_on){
switch (get_player_color(player)){
	default:
	set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
    break;
	
    case 25:
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_summer"));
    break;
    case 26:
	set_ui_element(UI_CHARSELECT, sprite_get("charselect4"));
    break;
    case 23:
	set_ui_element(UI_CHARSELECT, sprite_get("drip_charselect"));
    break;
}
}else{
	set_ui_element(UI_CHARSELECT, sprite_get("charselect"));	
}
draw_sprite(sprite_get("stockicon"),0,x+156,y+34);
if(is_alt_changeable){
draw_sprite_ext(sprite_get("alt_button"), alt_button_index, alt_button_pos[0]-24, alt_button_pos[1]-12, 1, 1, 0, -1, 1);
}
cpu_hover_draw(); 

var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.0";
patch_day = "3";
patch_month = "JAN";
 
var num_alts = 27;
var alt_cur = get_player_color(player);
var alt = get_player_color(player);
 
if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
	is_alt_changeable = false;
    secret_alt_on = 0;
    alt_button = 0; 
    secret_alt_num = 0;
    avocado = false;
}

var read_alts = 0;
if(drawtime < 5){
drawtime += 1
read_alts = 0;
	is_alt_changeable = false;
    secret_alt_on = 0;
    alt_button = 0; 
    secret_alt_num = 0;
    avocado = false;
}
prev_alt = alt;

/*
var reset_alts = false;

if(!reset_alts){
	wagabaga_bobo();
	reset_alts = true;
}
*/
 
 
//Alt name init. var doesn't work with arrays lol
if(read_alts = 0){  
    if(secret_alt_on == 0){
alt_name[0]  = "Po & Gumbo"; 
alt_name[1]  = "Mud-Flats"; 
alt_name[2]  = "Freshwater"; 
alt_name[3]  = "Toxic"; 
alt_name[4]  = "Albino"; 
alt_name[5]  = "Wired"; 
alt_name[6]  = "Slick"; 
alt_name[7]  = "Mardi Gras"; 
alt_name[8]  = "Intimidate"; 
alt_name[9]  = "Gourmet"; 
alt_name[10]  = "Lightners"; 
alt_name[11]  = "Weird Autumn"; 
alt_name[12]  = "From Mud to Sludge"; 
alt_name[13]  = "Jam-balaya"; 
alt_name[14]  = "Fishing Trout Lads"; 
alt_name[15]  = "Something something Alligator Florida"; 
alt_name[16]  = "Odor Blocker"; 
alt_name[17]  = "We need to cook"; 
alt_name[18]  = "It's a reference"; 
alt_name[19]  = "The OG Wobblers"; 
alt_name[20]  = "Seasoned Veterans"; 
alt_name[21]  = "Fresh off the Grill"; 
alt_name[22]  = "Having fun at Dave-Land"; 
alt_name[23]  = "Leakage"; 
alt_name[24]  = "Reverse"; 
alt_name[25]  = "Riptide"; 
alt_name[26]  = "Hoops"; 
alt_name[27]  = "GENESIS"; 
alt_name[28]  = "Champion"; 
}else{
alt_name[12]  = "Mishima"; 
alt_name[14]  = "Avocado";  
alt_name[15]  = "RetroTag"; 
alt_name[16]  = "Champed-Up"; 
alt_name[21]  = "Enby";
alt_name[22]  = "The Best"; 
}
read_alts = 1;
}
if (get_player_color(player)==23){
    if (drawtime == 1){
    sound_play(sound_get("drip"))
    }
}
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 134, temp_y + -12, "fName", c_white, 0, 1000, 1, true, 1, "VER");
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

if (get_player_color(player)==12 || get_player_color(player)==14 || get_player_color(player)==15 || get_player_color(player)==16 || get_player_color(player)==22 || get_player_color(player)==21){
	is_alt_changeable = true;
}else{
	is_alt_changeable = false;
    secret_alt_on = 0;
    alt_button = 0; 
    secret_alt_num = 0;
    avocado = false;
}
init_shader();

/*
//GB Icon
if (get_player_color(player)==13){
        draw_sprite(sprite_get("special_icon"),1,x+10,y+56);
    }
//Abyss Icon
if (get_player_color(player)==14){
        draw_sprite(sprite_get("special_icon"),0,x+10,y+56);
    }
    */
//Special Icon
if (get_player_color(player)== 23){
    //shader_end();
        draw_sprite(sprite_get("special_icon"),2,x+10,y+56);
        //shader_start();
    }
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
/*
muno_event_type = 6;
user_event(14);
*/
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}

#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);