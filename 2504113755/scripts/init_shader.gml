var shader_player = player;
var rainbow_updated = false;

if object_index != oPlayer && object_index != oTestPlayer {
    if object_index == asset_get("cs_playerbg_obj") {
        if "online_css" in self && online_css { shader_player = 0; }
    }
    else if "fake_alt" not in self {
        get_fake_alt();
        set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
    }
}

// multi-alt setup
if "alts_25" not in self {
	alts_25 = [28, 29];
	alts_26 = [31, 32, 33, 34, 35];
	alts_27 = [27, 34];
}

var shader_alt = ("fake_alt" in self ? fake_alt : get_player_color(shader_player));

switch shader_alt {
	case 0: // default
		set_character_color_slot( 3, 28, 96, 158 );
	    set_article_color_slot( 3, 28, 96, 158 );
		
		set_character_color_slot( 5, 22, 26, 43 );
		set_article_color_slot( 5, 22, 26, 43 );
		
		set_character_color_slot( 6, 112, 100, 138 );
		set_article_color_slot( 6, 112, 100, 138 );
		break;
    case 14: // gb
		outline_color = [35, 67, 49];
        break;
    case 24: // prism
		outline_color = [32, 32, 32];
		
		// rainbow code
		if (!variable_instance_exists(id, "hue_offset")){ hue_offset=0; }
		
		hue_speed=1; //change this to change the speed of the hueshift
		
		hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
		
		color_rgb=make_color_rgb(255, 27, 24); //input rgb values here, uses rgb to create a gamemaker colour variable
		hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
		color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
		set_color_profile_slot(24, 0, 215,215,215); //uses that variable to set the slot's new colours
		set_article_color_slot(0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
		
		color_rgb_2=make_color_rgb(255, 145, 208); //input rgb values here, uses rgb to create a gamemaker colour variable
		hue_2=(color_get_hue(color_rgb_2)+hue_offset) mod 255; //finds the hue and shifts it
		color_hsv_2=make_color_hsv(hue_2,color_get_saturation(color_rgb_2),color_get_value(color_rgb_2)); //creates a new gamemaker colour variable using the shifted hue
		set_color_profile_slot(24, 1, color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2)); //uses that variable to set the slot's new colours
		set_article_color_slot(1, color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2)); //uses that variable to set the slot's new colours
		
		break;
	case 25: case 26: case 27: // multi-alt
		var alt_reference_array = variable_instance_get(self, `alts_${shader_alt}`);
		var alt_to_reference = alt_reference_array[get_synced_var(shader_player)];
		for (var i = 0; i < 8; i++) {
			var r = get_color_profile_slot_r(alt_to_reference, i),
				g = get_color_profile_slot_g(alt_to_reference,i),
				b = get_color_profile_slot_b(alt_to_reference,i)
			set_color_profile_slot(get_player_color(shader_player), i ,r,g,b);
			
			if (alt_to_reference != 28) {
				set_article_color_slot(i, r, g, b, 1);
			}
		}
		
		// genesis alt stuff
		if alt_to_reference == 28 {
			if object_index == oPlayer || object_index == oTestPlayer {
			    set_character_color_slot(0, 255, 255, 255, 0); 
			    set_character_color_slot(1, 255, 255, 255, 0);
			    
				set_article_color_slot(0, 50, 0, 0, 1);
				set_article_color_slot(1, 130, 0, 0, 1);
				set_article_color_slot(2, 130, 0, 0, 1);
				set_article_color_slot(3, 60, 0, 0, 1);
				set_article_color_slot(4, 130, 0, 0, 1);
				set_article_color_slot(5, 60, 0, 0, 1);
				set_article_color_slot(6, 60, 0, 0, 1);
				set_article_color_slot(7, 130, 0, 0, 1);
			}
			else if object_index == asset_get("stage_HUD") {
				set_ui_element(UI_HUD_ICON, sprite_get("hud_genesis"));
			}
		}
		break;
}

// multi-alt

// fix face shading
set_character_color_shading(6, shader_alt == 0);




/*

//sword 1 color range thing
 

//sword 2 color range thing
 

//fur (s) color range thing
 
	
	if (get_player_color(player) == 14) {

	
	        set_victory_portrait(sprite_get("portrait_gb"));
set_victory_sidebar(sprite_get("sidebar_gb"))
	}
	
	
	if (get_player_color(player) == 24) {

	
	        set_victory_portrait(sprite_get("portrait_prism"));
set_victory_sidebar(sprite_get("sidebar_prism"))

	
	}
	
alts_25 = [28, 29]
alts_26 = [ 31, 32, 33, 34, 35]
alts_27 = [27, 34]
 
 
 
 if (get_player_color(player) == 26 || get_player_color(player) == 27 || get_player_color(player) == 25) {
	
	alt = get_player_color(player);
	
	if (alt = 25) {
		
		set_synced_var(player, get_synced_var(player)%2)
	    alt_to_reference = alts_25[get_synced_var(player)]
	    
	}
	
	if (alt = 26) {
		set_synced_var(player, get_synced_var(player)%5)
	    alt_to_reference = alts_26[get_synced_var(player)]
	}
	
	if (alt = 27) {
		set_synced_var(player, get_synced_var(player)%2)
	    alt_to_reference = alts_25[get_synced_var(player)]
	}
	
	
	
	for (var i = 0; i < 8; i++) {
    var r = get_color_profile_slot_r(alt_to_reference, i),
        g = get_color_profile_slot_g(alt_to_reference,i),
        b = get_color_profile_slot_b(alt_to_reference,i)
    set_color_profile_slot(get_player_color(player), i ,r,g,b);
    
    if (alt_to_reference != 28) {
    set_article_color_slot(i, r, g, b, 1);
}
}
	
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

if (get_player_color(player) == 0)
{

    set_character_color_slot( 3, 28, 96, 158 );
    set_article_color_slot( 3, 28, 96, 158 );
	
	set_character_color_slot( 5, 22, 26, 43 );
	set_article_color_slot( 5, 22, 26, 43 );
	
	set_character_color_slot( 6, 112, 100, 138 );
	set_article_color_slot( 6, 112, 100, 138 );

    } else
    
    
    {
    	 set_character_color_shading( 6, 0 );
    	
    	
    }
    
    
    

     

if (get_player_color(player) == 14) {
    
    
    outline_color = [35, 67, 49];
} 





if (get_player_color(player) == 24) {
    
    
    outline_color = [32, 32, 32];
	if (!variable_instance_exists(id, "hue_offset")){

hue_offset=0; }
hue_speed=1; //change this to change the speed of the hueshift




hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(255, 27, 24); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(24, 0, 215,215,215); //uses that variable to set the slot's new colours
set_article_color_slot(0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

color_rgb_2=make_color_rgb(255, 145, 208); //input rgb values here, uses rgb to create a gamemaker colour variable
hue_2=(color_get_hue(color_rgb_2)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv_2=make_color_hsv(hue_2,color_get_saturation(color_rgb_2),color_get_value(color_rgb_2)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot(24, 1, color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2)); //uses that variable to set the slot's new colours
set_article_color_slot(1, color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2)); //uses that variable to set the slot's new colours

    
    
}


if object_index == oPlayer || object_index == oTestPlayer { //removes playtesting hellscape

// init_shader.gml
if (get_player_color(player) == 25 && get_synced_var(player) == 0) {
	
    set_character_color_slot(0, 255, 255, 255, 0);  // Change the shade slot to whatever you need
    set_character_color_slot(1, 255, 255, 255, 0);  // Change the shade slot to whatever you need
	set_article_color_slot(0, 50, 0, 0, 1);
	set_article_color_slot(1, 130, 0, 0, 1);
	
	set_article_color_slot(2, 130, 0, 0, 1);
	set_article_color_slot(3, 60, 0, 0, 1);
	set_article_color_slot(4, 130, 0, 0, 1);
	set_article_color_slot(5, 60, 0, 0, 1);
	set_article_color_slot(6, 60, 0, 0, 1);
	set_article_color_slot(7, 130, 0, 0, 1);





}




}
*/

#define get_fake_alt
true_alt = get_player_color(player);
fake_alt = true_alt;
var test_alt = get_player_color(player);
for (var i = 0; i < 4; i += 1) {
    if get_color_profile_slot_r(test_alt, 0) == round(colorO[0] * 255)
    && get_color_profile_slot_g(test_alt, 0) == round(colorO[1] * 255)
    && get_color_profile_slot_b(test_alt, 0) == round(colorO[2] * 255)
    {
        fake_alt = test_alt;
        break;
    }
    test_alt += 1;
    if test_alt >= 6 { test_alt = 0; }
}
//print(get_player_name(player) + " " + string(true_alt) + " " + string(fake_alt))
