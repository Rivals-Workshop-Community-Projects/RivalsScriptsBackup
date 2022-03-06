//post-draw

//====> NEUTRAL B STUN #######################################################

if (elec_target != noone)
{
    try
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
            outline_color = [ _r, _g, _b ];         // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            init_shader();        
            outline_color = [ 0, 0, 0 ]; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        }
    }
    catch (e)
    {
        elec_target = noone // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    }
}
        
//====> DOWN B #######################################################

if (dspecial_symbol_contA > 0)
{
    draw_sprite(dspecial_symbol_spr, nspecial_mode, x, y + dspecial_currY);
}

//Genesis glitchy thing
if(get_player_color(player) == alt_gen8)
{
    var rand_x, rand_y;
    rand_x = random_func(3,50,true);
    rand_y = random_func(6,75,true); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
    shader_start();
    if(random_func(2, 100, false) > 95)
        draw_sprite_part_ext(sprite_index,image_index,75+rand_x,50+rand_y,random_func(8,200,true),random_func(2,200,true),x-50*spr_dir+(random_func(6,20,true)+rand_x)*spr_dir,y-100+random_func(10,20,true)+rand_y,spr_dir,1,c_white,1);
    shader_end();
}