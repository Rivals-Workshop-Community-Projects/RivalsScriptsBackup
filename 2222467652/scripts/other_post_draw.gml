if ("other_player_id" in self && instance_exists(other_player_id) && "birdluigifire" in self){
    if (birdluigifire && birdluigifire_id == other_player_id.id){
        draw_debug_text(round(x - (string_length(string(get_player_damage(player) - birdluigifire_damage) + "%") * 5)), round(y - char_height - hud_offset - 60), string(clamp(get_player_damage(player) - birdluigifire_damage, 0, 999)) + "%");
    }
}