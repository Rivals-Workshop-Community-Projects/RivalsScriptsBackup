//- By Lognes

//This file handles the smash land HUD.

//Variables---------------------------------------------------------------------



var hudico = get_char_info(player,INFO_HUD)
var damage = get_player_damage( player )
var stocks = get_player_stocks( player )
var slot = get_player_hud_color(player)

switch(slot){
	case (2366701):
		slot = 1
		break;
	case (15709952):
		slot = 2
		break;
	case (11641855):
		slot = 3
		break;
	case (1959592):
		slot = 4
		break;
	case (8421504):
		slot = 5
		break;
}
if (slot >= 6){
	slot = "?"
}

//Colour Stuff------------------------------------------------------------------

   var col4_r = get_color_profile_slot_r(get_player_color(player), 7)
   var col4_g = get_color_profile_slot_g(get_player_color(player), 7)
   var col4_b = get_color_profile_slot_b(get_player_color(player), 7)	

var col4 = make_color_rgb(col4_r, col4_g, col4_b); //$9AE2D3
//Draw Hud----------------------------------------------------------------------

hud_offset_dest = 600

//Hud Background
shader_start();
draw_sprite(sprite_get("_SSL_hud"), 1, temp_x-10, temp_y-4);

//Hud Icon
draw_sprite(hudico, 0, temp_x+34, temp_y+2);

//Hud Overlay
draw_sprite(sprite_get("_SSL_hud"), 0, temp_x-10, temp_y-4);

if brage > 0 {

if brage <= bragesub {
	
  draw_sprite(sprite_get("_SSL_hud"), 2 + (brage/3.57), temp_x-10, temp_y-4);

  if get_gameplay_time() % 5 < 2 {
  	draw_sprite(sprite_get("_SSL_hud"), 2 + (bragesub/3.57), temp_x-10, temp_y-4);
  }
  
} else {
   if get_gameplay_time() % 5 < 2 {	
   	draw_sprite(sprite_get("_SSL_hud"), 2 + (brage/3.57), temp_x-10, temp_y-4);
   }
    draw_sprite(sprite_get("_SSL_hud"), 2 + (bragesub/3.57), temp_x-10, temp_y-4);
  
}


if !ragemode && state_cat != SC_HITSTUN && !hitpause && brage = bragesub {
	if get_gameplay_time() % 20 > 18{
    draw_sprite(sprite_get("_SSL_hud"), 0, temp_x-10, temp_y-4);   
    }
}


}

if ragemode != 0 {
	if get_gameplay_time() % 5 < 2 {	
   	draw_sprite(sprite_get("_SSL_hud"), 2 + ((ragemode/5)/3.57), temp_x-10, temp_y-4);
   }
}

//Text--------------------------------------------------------------------------
//Player Number
if (slot == 5){
	SSLtextDraw(temp_x+178, temp_y+10, "fName", col4, 20, 1000, fa_left, 1, 1, 1, "CP");
} else {
	SSLtextDraw(temp_x+178, temp_y+10, "fName", col4, 20, 1000, fa_left, 1, 1, 1, "P" + string(slot));
}

//Damage Taken
SSLtextDraw(temp_x+130, temp_y+10, "fName", col4, 20, 1000, fa_center, 1, 1, 1, string(damage) + "%");

//Stocks
if ((get_gameplay_time() == 2 && get_training_cpu_action() != CPU_FIGHT)){
    draw_sprite(sprite_get("_SSL_hud"), 2, temp_x-10, temp_y-4);
} else {
	SSLtextDraw(temp_x+14, temp_y+22, "fName", col4, 20, 1000, fa_center, 1, 1, 1, stocks);
}
shader_end();


#define SSLtextDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

x1 = round(x1);
y1 = round(y1);

if move_cooldown[AT_NSPECIAL_2] <= 30 {
	

          var col1_r = get_color_profile_slot_r(get_player_color(player), 4)
          var col1_g = get_color_profile_slot_g(get_player_color(player), 4)
          var col1_b = get_color_profile_slot_b(get_player_color(player), 4)

  
	
  
}



var col1 = make_color_rgb(col1_r, col1_g, col1_b); //$313423

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
	for (i = -1; i < 2; i++) {
		for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 4, y1 + j * 4, text, lineb, linew, scale+1, scale+1, 0, col1, col1, col1, col1 , alpha);
		}
	}
}

if alpha > 0.01 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale+1, scale+1, 0, color, color, color, color, alpha);
