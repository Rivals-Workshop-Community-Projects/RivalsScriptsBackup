

if (cards >= cards_max)
{
    cards = 0;

}

if (cur_card == 3)
{
    max_djumps = 2;
}

if (cur_card > 3 || cur_card < 3)
{
    max_djumps = 1;
}

if (invin_timer > 0)
{
	    var outlineclr = abs((sin((get_gameplay_time() - 100) * 0.15) * 150)) + 255
    	outline_color = [ outlineclr * 0.3, outlineclr * 0.5, outlineclr * 1];
    	init_shader();
    	if (current_time % 8 < 4)
    	{
			invin_timer -= 1;
    	}
        walk_speed = 4.4;
        dash_speed = 7.0;
        invincible = true;
        hurtbox_spr = asset_get("ex_guy_hurt_box");
        crouchbox_spr = asset_get("ex_guy_crouch_box");
     
}

if (invin_timer <= 0)
{
		outline_color = [0,0,0]
        init_shader();
		invin_timer = 0;
        walk_speed = 3.25;
        dash_speed = 5.5;
        hurtbox_spr = asset_get("ex_guy_hurt_box");
        crouchbox_spr = asset_get("ex_guy_crouch_box");
     
}

if (attack == AT_EXTRA_2 && window == 6 & window_timer == 1)
{
	slashed = false;
}

