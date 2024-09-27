//init_shader.gml

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 0: //default
        set_character_color_slot(7, 81, 145, 251);
	break;
    case 2:
	set_shading([1.5, 1, 1, 1, 1.5, 1, 1, 1])
	break;
    case 3:
	set_shading([1, 1, 0.5, 1, 1, 1, 1, 1])
	break;
    case 5:
	set_shading([1, 1, -0.5, 0, 1, 1, 1, 1])
	break;
    case 6:
	set_shading([1, 1, 0.5, 1, 1, 1, 1, 1])
	break;
    case 10:
	set_shading([0.5, 1, 1, 1, 1, 1, 1, 1])
	break;
    case 13:
	set_shading([-1, 1, 1, 1, 1, 1, 1, 1])
	break;
    case 18:
	set_shading([-0.5, 1, 1, 1, 1, 1, 1, 1])
	break;
    case 19:
	set_shading([1.5, 1, 1, 1, 1, 1, 1, 1])
	break;
    case 21:
	set_shading([0, 1, 1, 1, 1, 1, 1, 1])
	break;
    case 23:
	set_shading([1, 1.5, 1, 1, 1, 1, 1, 1])
	break;
	case 30:
	set_shading([1, 1, 0.5, 1, 1, 1, 1, 1])
	break;
	case 31:
	set_shading([0.8, 1.5, 1, 1, 1, 1, 1, 1])
	break;
}

if (object_index == oPlayer) if (state == PS_SPAWN && spawn_timer < 2) || (was_reloaded && spawn_timer < 2)
{
    
    set_color_profile_slot_range( 0, 1, 1, 1 ); // Hair
    set_color_profile_slot_range( 1, 1, 1, 1 ); // Shirt
    set_color_profile_slot_range( 2, 1, 1, 1 ); // Bow
    set_color_profile_slot_range( 3, 1, 1, 1 ); // Skin
    set_color_profile_slot_range( 4, 1, 1, 1 ); // Pants
    set_color_profile_slot_range( 5, 1, 1, 1 ); // Sword
    set_color_profile_slot_range( 6, 1, 1, 1 ); // Gold
    set_color_profile_slot_range( 7, 1, 1, 1 ); // Waist
}

#define set_shading(arr)
for (var i = 0; i < array_length(arr); i++) set_character_color_shading(i, arr[i]);