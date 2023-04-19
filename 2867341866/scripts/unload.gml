print_debug("Destroying particle lists.");

//ds_list_destroy(afterimage_list);
ds_list_destroy(sparkle_list);

// dan pls

if (get_player_color( player ) == 12) {
    // Neon (FTL)
    set_color_profile_slot( 12, 0, 25, 30, 59 ); //bodydark
    set_color_profile_slot( 12, 1, 51, 58, 97 ); //bodylight
    set_color_profile_slot( 12, 2, 51, 58, 97 ); //bodyshine
    set_color_profile_slot( 12, 3, 93, 105, 78 ); //pickdark
    set_color_profile_slot( 12, 4, 199, 197, 141 ); //pickmid
    set_color_profile_slot( 12, 5, 242, 255, 242 ); //picklight
    set_color_profile_slot( 12, 6, 88, 126, 133 ); //feet
    set_color_profile_slot( 12, 7, 85, 171, 186 ); //feetlight
}
init_shader();
