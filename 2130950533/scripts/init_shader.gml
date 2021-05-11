if (object_index != oPlayer) {
    exit;
}

// Recolor the default Bloppi to have normal eyes
if (get_player_color(player) == 0) {
    set_character_color_slot(2, 255, 255, 255, 1); //Eyes
}