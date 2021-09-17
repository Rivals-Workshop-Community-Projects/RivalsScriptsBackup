//other_pre_draw.gml

if (lightstun)
{
    var fx_lightstunned = -1;

    with (other_player_id)
    {
        fx_lightstunned = sprite_get("fx_lightstunned");
        if (get_player_color(player) == 31 || (theikos_active || godpower || od_already_active) && !is_8bit) fx_lightstunned = sprite_get("theikos_fx_lightstunned");
        shader_start();
    }
    if (fx_lightstunned != -1)
    {
        draw_sprite_ext(fx_lightstunned, fx_lightstunned_frame, x, y - (char_height / 2 + 6), 1, 1, fx_lightstunned_rot, c_white, fx_lightstunned_alpha);
    }
    
    with (other_player_id)
    {
        shader_end();
    }
}