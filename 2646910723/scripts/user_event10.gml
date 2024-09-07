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

if Gear = 0{
	draw_sprite_ext(sprite_get("Gear"), 21, temp_x-50, temp_y-100,4,4,0,-1,1); 
}

if Gear = 1{
	if GearX == -1 {
	  draw_sprite_ext(sprite_get("Gear"), 0, temp_x-50, temp_y-64,4,4,0,-1,1); 
	} else {
	  draw_sprite_ext(sprite_get("Gear"), 1, temp_x-50, temp_y-64,4,4,0,-1,1); 	
	}

	if GearXlv == 1{
        draw_sprite_ext(sprite_get("Gear"), 2, temp_x-50, temp_y-64,4,4,0,-1,abs(1 - (get_gameplay_time()%120)/60)); 
	}
	else if GearXlv == 2{
        draw_sprite_ext(sprite_get("Gear"), 3, temp_x-50, temp_y-64,4,4,0,-1,abs(1 - (get_gameplay_time()%60)/30)); 
	}
	else if GearXlv == 3{
        draw_sprite_ext(sprite_get("Gear"), 4, temp_x-50, temp_y-64,4,4,0,-1,abs(1 - (get_gameplay_time()%40)/20)); 
	}
	if GearX == 0 {
	  draw_sprite_ext(sprite_get("Gear"), 0, temp_x-50, temp_y-64,4,4,0,-1,1); 
	}
}

if Gear = 2{
	draw_sprite_ext(sprite_get("Gear"), 6, temp_x-46, temp_y-68,4,4,0,-1,1); 
	if GearB == 1{
		draw_sprite_ext(sprite_get("Gear"), 7, temp_x-46, temp_y-68,4,4,0,-1,0.3); 
	} else if GearB == 2{
	    draw_sprite_ext(sprite_get("Gear"), 7, temp_x-46, temp_y-68,4,4,0,-1,0.6); 
	} else if GearB >= 3{
	    draw_sprite_ext(sprite_get("Gear"), 7, temp_x-46, temp_y-68,4,4,0,-1,1); 
	}
	if GearB == 4{
		draw_sprite_ext(sprite_get("Gear"), 8, temp_x-46, temp_y-68,4,4,0,-1,0.3); 
	} else if GearB == 5{
	    draw_sprite_ext(sprite_get("Gear"), 8, temp_x-46, temp_y-68,4,4,0,-1,0.6); 
	} else if GearB >= 6{
	    draw_sprite_ext(sprite_get("Gear"), 8, temp_x-46, temp_y-68,4,4,0,-1,1); 
	}
}

if Gear = 3{
	if GearAir != 0{
		draw_sprite_ext(sprite_get("Gear"), 10, temp_x-50, temp_y-68,4,4,0,-1,1); 
	} else {
		draw_sprite_ext(sprite_get("Gear"), 9, temp_x-50, temp_y-68,4,4,0,-1,1); 
	}
}

if Gear = 5{
	draw_sprite_ext(sprite_get("Gear"), 16, temp_x-50, temp_y-68,4,4,0,-1,1); 
	if GearAir < 20{
		if GearAir > 10{
		draw_sprite_ext(sprite_get("Gear"), 17, temp_x-50, temp_y-68,4,4,0,-1,1); 
		}
	}
	else if GearAir < 30{
		draw_sprite_ext(sprite_get("Gear"), 18, temp_x-50, temp_y-68,4,4,0,-1,1); 
	}
	else if GearAir < 45{
		draw_sprite_ext(sprite_get("Gear"), 19, temp_x-50, temp_y-68,4,4,0,-1,1); 
	}
	else {
		draw_sprite_ext(sprite_get("Gear"), 20, temp_x-50, temp_y-68,4,4,0,-1,1); 
	}

}

if Gear = 4{
	draw_sprite_ext(sprite_get("Gear"), 11, temp_x-48, temp_y-64,4,4,0,-1,1); 
	if hitstop && get_gameplay_time() % 4 >= 1 && GearOcd <= 0{
		draw_sprite_ext(sprite_get("Gear"), 15, temp_x-48, temp_y-68,4,4,0,-1,1); 
	}
	if !hitstop && (state_cat == SC_HITSTUN or hit_player_obj.state_cat == SC_HITSTUN) && GearOcd <= 0 && get_gameplay_time() % 20 >= 10{
		draw_sprite_ext(sprite_get("Gear"), 15, temp_x-48, temp_y-68,4,4,0,-1,1); 
	}
	if GearO <= 30{
		draw_sprite_ext(sprite_get("Gear"), 11, temp_x-48, temp_y-64,4,4,0,-1,1); 
		if GearO > 15 && get_gameplay_time() % 10 >= 5{
			draw_sprite_ext(sprite_get("Gear"), 12, temp_x-48, temp_y-64,4,4,0,-1,0.5);
		}
	} else if GearO <= 60{
		draw_sprite_ext(sprite_get("Gear"), 12, temp_x-48, temp_y-64,4,4,0,-1,1); 
		if GearO > 45 && get_gameplay_time() % 10 >= 5{
			draw_sprite_ext(sprite_get("Gear"), 13, temp_x-48, temp_y-64,4,4,0,-1,0.5);
		}
	} else if GearO <= 90{
		draw_sprite_ext(sprite_get("Gear"), 13, temp_x-48, temp_y-64,4,4,0,-1,1); 
		if GearO > 75 && get_gameplay_time() % 10 >= 5{
			draw_sprite_ext(sprite_get("Gear"), 14, temp_x-48, temp_y-64,4,4,0,-1,0.5);
		}
	} else if GearO <= 100{
		draw_sprite_ext(sprite_get("Gear"), 14, temp_x-48, temp_y-64,4,4,0,-1,1); 
	} else {
		draw_sprite_ext(sprite_get("Gear"), 14, temp_x-48, temp_y-64,4,4,0,-1,1); 
		if get_gameplay_time() % 10 >= 5{
		draw_sprite_ext(sprite_get("Gear"), 15, temp_x-48, temp_y-64,4,4,0,-1,1); 	
		}
	}
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
