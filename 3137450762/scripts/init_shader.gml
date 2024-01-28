// get the alt palette number (accounting for the online bug)
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

switch ( alt_palette ) {
    case 9: // Early Access
        for (var i = 0; i <= 8; i++) { // Loop through every shade slot
            set_character_color_shading(i, 0); // Remove shading from shade slot i
        }
        break;
}
