// get the alt palette number (accounting for the online bug)
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

switch ( alt_palette ) {
  case 12: // Swap palettes on the tournament alt
    var sync = get_synced_var(player);
    if room == 4 { user_event(2); } // set swappable colours during stage select
    var ptp = tournament_list[floor(sync/10)-1];

    set_color_profile_slot(alt_palette, 0, ptp[1][0], ptp[1][1], ptp[1][2]);
    set_color_profile_slot(alt_palette, 1, ptp[2][0], ptp[2][1], ptp[2][2]);
    set_color_profile_slot(alt_palette, 2, ptp[3][0], ptp[3][1], ptp[3][2]);
    set_color_profile_slot(alt_palette, 3, ptp[4][0], ptp[4][1], ptp[4][2]);
    set_color_profile_slot(alt_palette, 4, ptp[5][0], ptp[5][1], ptp[5][2]);
    break;
  case 11: // Swap palettes on the playtester alt
    var sync = get_synced_var(player);
    if room == 4 { user_event(2); } // set swappable colours during stage select
    var ptp = playtester_list[sync-10*floor(sync/10)];

    set_color_profile_slot(alt_palette, 0, ptp[1][0], ptp[1][1], ptp[1][2]);
    set_color_profile_slot(alt_palette, 1, ptp[2][0], ptp[2][1], ptp[2][2]);
    set_color_profile_slot(alt_palette, 2, ptp[3][0], ptp[3][1], ptp[3][2]);
    set_color_profile_slot(alt_palette, 3, ptp[4][0], ptp[4][1], ptp[4][2]);
    set_color_profile_slot(alt_palette, 4, ptp[5][0], ptp[5][1], ptp[5][2]);
    break;
  case 9: // Early Access
      for (var i = 0; i <= 8; i++) { // Loop through every shade slot
          set_character_color_shading(i, 0); // Remove shading from shade slot i
      }
      break;
}
