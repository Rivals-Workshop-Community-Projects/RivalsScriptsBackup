if ("waryowl" in self && waryowl >= 500)
{
	shader_start();
    draw_sprite ( sprite_get("dspecwind2"), get_gameplay_time() * 0.5, x, y );
	shader_end();
}

if (attack == AT_TAUNT and window == 2)
{
    /*if window_timer == 1
    {
        //var taunt_shockwave = spawn_hit_fx(x, y, hit_fx_create( sprite_get( "shockwave" ), 1));
       // taunt_shockwave.depth = depth - 3;
    }*/
    if has_rune("A")
	{
		draw_sprite_ext( sprite_get( "shockwave" ) , 0, x, y - 56, window_timer * .08, window_timer * .08, 0, c_white, 1 - (window_timer * .05));
	}
    //draw_sprite_ext( sprite_get( "shockwave" ) , 0, x, y - 56, window_timer * .08, window_timer * .08, 0, c_white, 1 - (window_timer * .05));
}

/*if (attack == AT_NSPECIAL and nspec_charge >= 60 and window == 2 and window_timer == 1 and nspecial_perfect == false)
{
	if waryowl >= 1000
	{
		shader_start();
		//spawn_hit_fx( x, y, hit_fx_create( sprite_get( "nspecial_perfect" ), 50 ));
		draw_sprite(sprite_get("nspecial_perfect"), get_gameplay_time() * .5, x, y);
		nspecial_perfect = true
		shader_end();
	}
}