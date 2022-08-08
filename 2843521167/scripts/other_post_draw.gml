if pastelle_soaked == true
{
with (other_player_id)
    {
        draw_sprite(sprite_get("soaked"), get_gameplay_time()/10, other.x, other.y-5)
    }
}
