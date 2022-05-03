var fx_image_index = get_gameplay_time() / 2.2;
var temp_x = x;
var temp_y = y;
if (other_combo_marked and other_combo_num != 0)
{
    with other_player_id
    {
        draw_sprite_ext(sprite_get("combo_circle_front"+string(other.other_combo_num)),fx_image_index,temp_x - 63,temp_y - 60,2,2,0,c_white,0.7);
    }
}