//post-draw

//====> NEUTRAL B STUN #######################################################

if (elec_target != noone)
{
    shader_start();
    draw_sprite(
        sprite_get("electricity"), 
        (elec_timer / 3) % 11,
        elec_target.x,
        elec_target.y
    );
    shader_end();
    
    var _r = get_color_profile_slot_r( get_player_color(player), 0)/2
    var _g = get_color_profile_slot_g( get_player_color(player), 0)/2
    var _b = get_color_profile_slot_b( get_player_color(player), 0)/2
    
    with (elec_target)
    {
        outline_color = [ _r, _g, _b ];        init_shader();        outline_color = [ 0, 0, 0 ];    }} // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
//====> DOWN B #######################################################

if (dspecial_symbol_contA > 0)
{
    draw_sprite(dspecial_symbol_spr, nspecial_mode, x, y + dspecial_currY);
}