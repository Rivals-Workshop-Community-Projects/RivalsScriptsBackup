//shader_start();

draw_sprite_ext( sprite_get("splatinkling_vicbg"), 0, x-64, y-112, 2, 2, 0, GetColourPlayer(4), 1 );

//shader_end();

#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}