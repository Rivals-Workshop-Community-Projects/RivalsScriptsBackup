var alt_cur = room != asset_get("network_char_select") || object_index == oTestPlayer ? get_player_color(player) : get_player_color(0)
if "css_char" not in self && room == asset_get("network_char_select") && object_index == asset_get("cs_playerbg_obj") exit; //prevents a crash.
//Init Shader

// Split the synced var. For more info on this function, see:
// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
if "__syncvar" not in self __syncvar = split_synced_var(1);
var tag_pal_value = __syncvar[0]; //change the 0 to the synced var index for the tag palette.
// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
var tag_pal = player_tag_palettes(12, tag_pal_value);

// This is your final alt value, which is the current alt palette the player has selected.
real_alt = tag_pal != -1 ? tag_pal : alt_cur; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.

set_character_color_slot(3, 
	get_color_profile_slot_r(real_alt, 8),
	get_color_profile_slot_g(real_alt, 8),
	get_color_profile_slot_b(real_alt, 8)
)

/*switch(string_lower(get_player_name(player))){
	case "equi":
		break;
	case "giga":
		break;
	case "gear":
		break;
}*/

switch(real_alt){
    case 0:
        // set_character_color_slot(3, 153, 163, 169);     // Metal
        set_character_color_slot(4, 74, 98, 69);       // Shirt
        set_character_color_slot(5, 49, 57, 69);        // Pants
        set_character_color_shading( 5, 0.45 );
        break;
    case 1:
    	// set_character_color_slot(3, 70, 112, 194 ); //Metaru
        set_character_color_shading( 2, 0.75 );
        break;
    case 2:
    	// set_character_color_slot(3, 156, 31, 31 ); //Metaru
        set_character_color_shading( 5, 0.45 );
        break;
    case 3:
    	// set_character_color_slot(3, 126, 167, 89 ); //Metaru
        set_character_color_shading( 3, 0.75 );
        set_character_color_shading( 5, 0.5 );
        break;
    case 4:
    	// set_character_color_slot(3, 182, 187, 189 ); //Metaru
    	set_character_color_shading( 5, 0.5 );
    	break;
    case 5:
    	// set_character_color_slot(3, 238, 190, 0 ); //Metaru
    	if ("penny_install" in self){
	        if penny_install{
				set_character_color_slot( 0, 167, 46, 82 ); //Fur
				set_character_color_slot( 1, 219, 162, 182 ); //Fur Light
				set_character_color_slot( 2, 167, 46, 82 ); //Hair
				set_character_color_slot( 7, 99, 12, 68 ); //That Single FUCKING HAIR PARTICLE
	        } else {
	            set_character_color_slot( 0, 99, 99, 166 ); //Fur
	            set_character_color_slot( 1, 201, 201, 240 ); //Fur Light
	            set_character_color_slot( 2, 90, 90, 150 ); //Hair
	            set_character_color_slot( 7, 47, 42, 99 ); //That Single FUCKING HAIR PARTICLE
	        }
        }
        break;
    case 10: // Vaporwave
    	// set_character_color_slot(3, 131, 81, 194 ); //Metaru
        set_character_color_shading( 5, 0.5 );
        set_article_color_slot(0 , get_color_profile_slot_r(10, 0), get_color_profile_slot_g(10, 0), get_color_profile_slot_b(10, 0));
        set_article_color_slot(6 , get_color_profile_slot_r(10, 6), get_color_profile_slot_g(10, 6), get_color_profile_slot_b(10, 6));
        break;
    case 11:
        switch(get_match_setting(SET_SEASON)){
            case 1: // Valentines
                set_character_color_slot( 0, 232, 142, 228 ); //Fur
                set_character_color_slot( 1, 214, 214, 214 ); //Fur Light
                set_character_color_slot( 2, 176, 45, 45 ); //Hair
                set_character_color_slot( 3, 242, 140, 225 ); //Metal
                set_character_color_slot( 4, 184, 75, 165 ); //Shirt
                set_character_color_slot( 5, 171, 32, 32 ); //Pants
                set_character_color_slot( 6, 222, 202, 202 ); //Belts
                set_character_color_slot( 7, 102, 6, 48 ); //Hair Particle
                break;
            case 2: // Summer
                set_character_color_slot( 0, 214, 176, 154 ); //Fur
                set_character_color_slot( 1, 255, 229, 205 ); //Fur Light
                set_character_color_slot( 2, 214, 117, 43 ); //Hair
                set_character_color_slot( 3, 214, 117, 43 ); //Metal
                set_character_color_slot( 4, 70, 195, 196 ); //Shirt
                set_character_color_slot( 5, 70, 195, 196 ); //Pants
                set_character_color_slot( 6, 232, 232, 232 ); //Belts
                set_character_color_slot( 7, 140, 16, 5 ); //Hair Particle
                break;
            case 3: // Halloween
                set_character_color_slot( 0, 214, 214, 214 ); //Fur
                set_character_color_slot( 1, 255, 255, 255 ); //Fur Light
                set_character_color_slot( 2, 115, 115, 115 ); //Hair
                set_character_color_slot( 3, 154, 158, 166 ); //Metal
                set_character_color_slot( 4, 95, 85, 85 ); //Shirt
                set_character_color_slot( 5, 95, 86, 86 ); //Pants
                set_character_color_slot( 6, 66, 64, 64 ); //Belts
                set_character_color_slot( 7, 73, 73, 73 ); //Hair Particle
                break;
            case 4: // Christmas
                set_character_color_slot( 0, 214, 214, 214 ); //Fur
                set_character_color_slot( 1, 255, 255, 255 ); //Fur Light
                set_character_color_slot( 2, 168, 34, 34 ); //Hair
                set_character_color_slot( 3, 88, 184, 93 ); //Metal
                set_character_color_slot( 4, 112, 40, 41 ); //Shirt
                set_character_color_slot( 5, 112, 40, 41 ); //Pants
                set_character_color_slot( 6, 209, 209, 209 ); //Belts
                set_character_color_slot( 7, 102, 6, 48 ); //Hair Particle
                break;
        }
        break;
    case 12: // GB
    	// set_character_color_slot(3, 211, 226, 154 ); //Metaru
        for (var slot_num = 0; slot_num < 8; slot_num++) {
            set_character_color_shading( slot_num, 0 );
        }
        break;
    case 14: // Yang
        set_character_color_shading( 5, 0.5 );
        break;
    case 15: // Hitfall
    	// set_character_color_slot(3, 219, 219, 219 ); //Metaru
        set_character_color_shading( 5, 0.5 );
		set_article_color_slot(0 , get_color_profile_slot_r(15, 0), get_color_profile_slot_g(15, 0), get_color_profile_slot_b(15, 0));
		set_article_color_slot(6 , get_color_profile_slot_r(15, 3), get_color_profile_slot_g(15, 3), get_color_profile_slot_b(15, 3));
        break;
    case 16: // Genesis
    	// set_character_color_slot(3, 219, 219, 219 ); //Metaru
        set_character_color_shading( 5, 0.5 );
        break;
    case 17: // Pool Party
    	set_character_color_slot( 5, 235, 236, 242, 0.1); //Pants
    	set_character_color_shading( 5, 2 );
    	break;
    case 19: // Heatwave
    	set_article_color_slot(0, 96, 2, 2);
    	set_article_color_slot(4, 136, 171, 124);
    	set_article_color_slot(6, 101, 50, 49);
    	break;
    case 23: // Lumi
    	set_shading([1, 2, 1, 1, 1, 1, 1, 1, 1])
    	break;
    case 26: // Awoo
    	// set_character_color_slot(3, 250, 176, 194 ); //Metaru
        set_character_color_shading( 5, 0.5 );
        break;
    case 27: // Gingo
    	set_character_color_shading( 0, 2 );
    	set_character_color_shading( 1, 2 );
    	set_character_color_shading( 3, 0.75 );
		set_article_color_slot(0 , get_color_profile_slot_r(27, 0), get_color_profile_slot_g(27, 0), get_color_profile_slot_b(27, 0));
		set_article_color_slot(6 , get_color_profile_slot_r(27, 3), get_color_profile_slot_g(27, 3), get_color_profile_slot_b(27, 3));
    	break;
    case 30: // Luka
    	set_character_color_shading( 2, 0.75);
    	set_character_color_shading( 3, 0.75);
    	break;
}

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == asset_get("network_char_select")) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;

#define set_shading(arr)
for (var i = 0; i < min(8,array_length(arr)); i++) set_character_color_shading(i, arr[i])