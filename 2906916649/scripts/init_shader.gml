//init_shader.gml

// This code should go to the TOP of the script.
// The current alt palette, with a fix for the online CSS.
var alt_cur = get_player_color((room == 113 && object_index != oTestPlayer) ? 0 : player);

// Split the synced var. For more info on this function, see:
// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
__syncvar = split_synced_var(1,1,1);
var tag_pal_value = __syncvar[2]; //change the 0 to the synced var index for the tag palette.
// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
var tag_pal = player_tag_palettes(12, tag_pal_value);

// This is your final alt value, which is the current alt palette the player has selected.
var real_alt = tag_pal != -1 ? tag_pal : alt_cur;


//print(real_alt)
set_character_color_shading(7, 2.2);
switch (real_alt) {
	case 0:
		set_character_color_slot( 5, 66, 66, 66 ); //Shorts
		set_character_color_slot( 7, 66, 66, 66 ); //Shoes2
		break;
	case 1:
		break;
	case 2:
		break;
	case 3:
		break;
	case 4:
		break;	
	case 6:
		break;
	case 7:
		set_character_color_shading(1, -1.1);	
		break;
	case 8:
		set_character_color_shading(1, -1.5);	
		break;
	case 9:
		set_character_color_shading(1, 2);	
		break;
	case 10:
		set_character_color_shading(1, -1.1);	
		break;	
	case 12:
		set_character_color_shading(1, 0.8);	
		break;
	case 13:
		set_character_color_shading(1, .5);		
		break;	
	case 14:
		set_character_color_shading(1, 1);	
		break;	
	case 15:
		set_character_color_shading(1, 2);	
		break;	
	case 16:	
		break;	
	case 17:	
		break;		
	case 18:
		break;	
	case 19:	
		break;		
	case 20:
		set_character_color_shading(1, -1.1);
		break;		
	case 21:
		set_character_color_shading(1, 1.5);	
		set_character_color_shading(2, 1.2);		
		break;		
	case 22:
		set_character_color_shading(1, 1.5);	
		set_character_color_shading(2, 0.7);		
		break;			
	case 23:
		set_character_color_shading(1, 1.2);	
		set_character_color_shading(2, 1.2);		
		set_character_color_shading(4, -0.6);		
		set_character_color_shading(5, -0.6);		
		break;			
	case 24:
		set_character_color_shading(1, 1.2);	
		set_character_color_shading(2, 0.5);	
		set_character_color_shading(4, 0.5);		
		set_character_color_shading(5, 0.5);	
		//set_character_color_shading(4, sin((.23 * hue) + 1.5));		
		//set_character_color_shading(5, sin((.23 * hue) + 1.5));
		break;			
	case 25:	
		set_character_color_shading(0, 0);
		set_character_color_shading(1, 0);
		set_character_color_shading(2, 0);
		set_character_color_shading(3, 0);
		set_character_color_shading(4, 0);	
		set_character_color_shading(5, 0);	
		set_character_color_shading(6, 0);	
		set_character_color_shading(7, 0);	
		break;			
	case 26:	
	set_character_color_shading(1, -1.5);	
		break;			
	case 27:			
		set_character_color_shading(1, 0.6);	
		break;			
	case 28:			
		set_character_color_shading(1, -1);
		set_character_color_shading(2, -1);
		break;			
	case 29:			
		set_character_color_shading(1, -0.6);	
		break;	
	case 31:
		if(get_player_name(player) == "SEESAW"){
			set_color_profile_slot( 31, 0, 247, 242, 241 ); //Skin
			set_color_profile_slot( 31, 1, 103, 99, 153 ); //Hair
			set_color_profile_slot( 31, 2, 219, 213, 212 ); //JacketTop
			set_color_profile_slot( 31, 3, 147, 54, 94 ); //JacketBottom
			set_color_profile_slot( 31, 4, 68, 82, 82 ); //Goggles
			set_color_profile_slot( 31, 5, 181, 176, 175 ); //Shorts
			set_color_profile_slot( 31, 6, 78, 69, 113 ); //Shoes1
			set_color_profile_slot( 31, 7, 30, 38, 42 ); //Shoes2
			
		}else if(get_player_name(player) == "SUCC"){
			set_color_profile_slot( 31, 0, 251, 199, 174 ); //Skin
			set_color_profile_slot( 31, 1, 255, 149, 0 ); //Hair
			set_color_profile_slot( 31, 2, 255, 132, 0 ); //JacketTop
			set_color_profile_slot( 31, 3, 255, 251, 0 ); //JacketBottom
			set_color_profile_slot( 31, 4, 255, 149, 0 ); //Goggles
			set_color_profile_slot( 31, 5, 173, 41, 0 ); //Shorts
			set_color_profile_slot( 31, 6, 173, 41, 0 ); //Shoes1
			set_color_profile_slot( 31, 7, 173, 41, 0 ); //Shoes2
			set_character_color_shading(1, -1.1);	
			set_character_color_shading(2, -1.1);	
			
		}else if(get_player_name(player) == "LOWIEE"){
			// Vapor
			set_color_profile_slot( 31, 0, 247, 239, 252 ); //Skin
			set_color_profile_slot( 31, 1, 255, 255, 255 ); //Hair
			set_color_profile_slot( 31, 2, 172, 49, 90 ); //JacketTop
			set_color_profile_slot( 31, 3, 59, 59, 59 ); //JacketBottom
			set_color_profile_slot( 31, 4, 245, 122, 29 ); //Goggles
			set_color_profile_slot( 31, 5, 59, 59, 59 ); //Shorts
			set_color_profile_slot( 31, 6, 245, 122, 29 ); //Shoes1
			set_color_profile_slot( 31, 7, 59, 59, 59 ); //Shoes2
			
		}else if(get_player_name(player) == "PMINER"){
			// POWERMINERS
			set_color_profile_slot( 31, 0, 255, 204, 0 ); //Skin
			set_color_profile_slot( 31, 1, 122, 207, 76 ); //Hair
			set_color_profile_slot( 31, 2, 51, 45, 45 ); //JacketTop
			set_color_profile_slot( 31, 3, 255, 136, 0 ); //JacketBottom
			set_color_profile_slot( 31, 4, 255, 135, 0 ); //Goggles
			set_color_profile_slot( 31, 5, 150, 79, 0 ); //Shorts
			set_color_profile_slot( 31, 6, 255, 136, 0 ); //Shoes1
			set_color_profile_slot( 31, 7, 255, 255, 255 ); //Shoes2
			
		}else if(get_player_name(player) == "DEKU"){
			set_color_profile_slot( 31, 0, 251, 204, 181 ); //Skin
			set_color_profile_slot( 31, 1, 0, 59, 52 ); //Hair
			set_color_profile_slot( 31, 2, 36, 107, 80 ); //JacketTop
			set_color_profile_slot( 31, 3, 44, 130, 97 ); //JacketBottom
			set_color_profile_slot( 31, 4, 130, 130, 130 ); //Goggles
			set_color_profile_slot( 31, 5, 44, 130, 97 ); //Shorts
			set_color_profile_slot( 31, 6, 66, 66, 66 ); //Shoes1
			set_color_profile_slot( 31, 7, 234, 0, 101 ); //Shoes2
			
			
		}else{
			// MX
			set_color_profile_slot( 31, 0, 179, 179, 179 ); //Skin
			set_color_profile_slot( 31, 1, 0, 0, 0 ); //Hair
			set_color_profile_slot( 31, 2, 79, 0, 0 ); //JacketTop	
			set_color_profile_slot( 31, 3, 0, 0, 0 ); //JacketBottom
			set_color_profile_slot( 31, 4, 0, 0, 0 ); //Goggles
			set_color_profile_slot( 31, 5, 0, 0, 0 ); //Shorts	
			set_color_profile_slot( 31, 6, 0, 0, 0 ); //Shoes1
			set_color_profile_slot( 31, 7, 0, 0, 0 ); //Shoes2
			set_character_color_shading(0, 0);
			set_character_color_shading(1, 0);
			set_character_color_shading(2, 0);
			set_character_color_shading(3, 0);
			set_character_color_shading(4, 0);	
			set_character_color_shading(5, 0);	
			set_character_color_shading(6, 0);	
			set_character_color_shading(7, 0);	

		}

		break;
}


// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;
