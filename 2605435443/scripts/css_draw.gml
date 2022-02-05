//Fancy CSS template by Muno
//Put in css_draw.gml
 

// Checks if the seventh slot of the first skins blue shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method. 



if (get_color_profile_slot_b(0, 1) == 74) {
    sound_play(sound_get("css_select"));
  set_color_profile_slot(0, 1, get_color_profile_slot_r(0, 1), get_color_profile_slot_g(0, 1), get_color_profile_slot_b(0, 1) + 1);
}