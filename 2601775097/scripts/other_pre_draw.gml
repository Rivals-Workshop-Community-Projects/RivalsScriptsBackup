//other_pre_draw.gml

//make it so it changes colors depending on the alt
//thanks Frtoud!
if (holyburning && holy_burned_by == other_player_id) outline_color = other_player_id.burn_outline;
init_shader();


if (lightstun)
{
    var fx_lightstunned = -1;

    with (other_player_id)
    {
        fx_lightstunned = sprite_get("fx_lightstunned");
        if ("user_event_1_active" in self && user_event_1_active) fx_lightstunned = sprite_get("theikos_fx_lightstunned");
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