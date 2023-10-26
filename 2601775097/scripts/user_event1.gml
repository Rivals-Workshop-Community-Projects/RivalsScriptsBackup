//user_event1
//theikos color stuff

if ("theikos_color_time" not in self) exit;

var theikos_alt = 26;

set_character_color_slot( //hair
    2,
    min(floor(lerp(get_color_profile_slot_r(theikos_alt, 2), get_color_profile_slot_r(theikos_alt, 2) + 100, theikos_color_time/theikos_color_time_max)), 255),
    min(floor(lerp(get_color_profile_slot_g(theikos_alt, 2), get_color_profile_slot_g(theikos_alt, 2) + 100, theikos_color_time/theikos_color_time_max)), 255),
    min(floor(lerp(get_color_profile_slot_b(theikos_alt, 2), get_color_profile_slot_b(theikos_alt, 2) + 100, theikos_color_time/theikos_color_time_max)), 255)
);

if (alt_cur != theikos_alt && get_color_profile_slot_r(alt_cur, 6) != get_color_profile_slot_r(theikos_alt, 6))
{
	set_character_color_slot( //holy light
		6, get_color_profile_slot_r(theikos_alt, 6), get_color_profile_slot_g(theikos_alt, 6), get_color_profile_slot_b(theikos_alt, 6)
	);
    set_article_color_slot( //holy light
		6, get_color_profile_slot_r(theikos_alt, 6), get_color_profile_slot_g(theikos_alt, 6), get_color_profile_slot_b(theikos_alt, 6)
	);

	set_character_color_slot( //holy fire
		7, get_color_profile_slot_r(theikos_alt, 7), get_color_profile_slot_g(theikos_alt, 7), get_color_profile_slot_b(theikos_alt, 7)
	);
    set_article_color_slot( //holy fire
		7, get_color_profile_slot_r(theikos_alt, 7), get_color_profile_slot_g(theikos_alt, 7), get_color_profile_slot_b(theikos_alt, 7)
	);
    set_character_color_shading(2, 1.5); //hair shading
}