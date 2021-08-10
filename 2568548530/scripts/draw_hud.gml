
// override the color swapped UI char with default one

/*
//not in selection screen
if(variable_instance_exists(self, "spr_dir"))
{
    //draw_sprite_ext(sprite_get("hud"),0,0,0,1,1,0,c_white,1);
    //draw_sprite(sprite_get("hud"),0,0,0);
    
    //temp_x and temp_y -> hud coods
    //draw_sprite(sprite_get("hud"),0,temp_x + 32,temp_y + 8 -50);
    
    
    //print_debug(string(state == PS_HITSTUN));
    
    //if (sprite_index == sprite_get("hurt")) 
    //if (state == PS_HITSTUN) 
    if (state_cat == SC_HITSTUN) 
        draw_sprite(get_char_info(player, INFO_HUDHURT),0,temp_x + 32,temp_y + 8 -50);
    else
        draw_sprite(get_char_info(player, INFO_HUD),0,temp_x + 32,temp_y + 8 -50);
}
*/


//not in selection screen
if(variable_instance_exists(self, "spr_dir") && "canAttack" in self)
{
    //TODO: put more diractional hurts?
        
    var icon_type = 0;
    
    //if (state_cat == SC_HITSTUN) //TODO: on hit, shake HUD icon * curr%
    //    print_debug(y);

	var offX = 0;
	var offY = 0;
	var maxShakeOff = 5;
	var traumaFallOff = 0.02;
	var powerOfAllShakes = 2;
	
	if(get_local_setting(SET_HUD_SHAKE))
	{
		//shake on hit, based on %
		//shake much on death
		
        traumaX = clamp(traumaX-traumaFallOff,0,1);
        shakeX = power(traumaX, powerOfAllShakes);

        traumaY = clamp(traumaY-traumaFallOff,0,1);
        shakeY = power(traumaY, powerOfAllShakes);
        
		offX = shakeX * maxShakeOff * (random_func(0,3,false)-1);
		offY = shakeY * maxShakeOff * (random_func(1,3,false)-1);
		//TODO: add perlin noise for smoothness
	}

	shader_start();
	if (!canAttack)
    {
        icon_type = 1;
        
        if (state_cat == SC_HITSTUN && free) //launched 
            draw_sprite(sprite_get("hudSkinny_hurt_bad"),0, temp_x + 28 + offX, temp_y + 8 + offY);
        else if (state_cat == SC_HITSTUN) //attacked
            draw_sprite(sprite_get("hudSkinny_hurt"),0, temp_x + 28 + offX, temp_y + 8 + offY);
        else
            draw_sprite(sprite_get("hudSkinny"),0, temp_x + 28 + offX, temp_y + 8 + offY);
    }
    else
    {
        if (state_cat == SC_HITSTUN && free) //launched 
            draw_sprite(sprite_get("hud_hurt_bad"),0, temp_x + 28 + offX, temp_y + 8 + offY);
        else if (state_cat == SC_HITSTUN) //attacked
            draw_sprite(sprite_get("hud_hurt"),0, temp_x + 28 + offX, temp_y + 8 + offY);
        else
            draw_sprite(sprite_get("hud"),0, temp_x + 28 + offX, temp_y + 8 + offY);
    }
	shader_end();
    
    var leeway = 0;
	var yy = y;// - 21;//(char_height / 2);
	var xx = x;// + 1;
	xx -= view_get_xview();
	yy -= view_get_yview();
	
	var off_l = xx < -leeway;
	var off_r = xx > view_get_wview() + leeway;
	var off_u = yy < -leeway;
	var off_d = yy > view_get_hview() + leeway;
	
	var idx = noone;
	if (off_l)
	{
		idx = 0;
		if (off_u) idx = 1;
		if (off_d) idx = 7;
	}
	else if (off_r)
	{
		idx = 4;
		if (off_u) idx = 3;
		if (off_d) idx = 5;
	}
	else if (off_u) idx = 2;
	else if (off_d) idx = 6;
	
	//var margin = 34;
	
	if (idx != noone)
	{
	    var markerX = clamp(xx, 34, view_get_wview() - 34) + 1;
	    var markerY = clamp(yy, 54, view_get_hview() - 64) - 21;//(char_height / 2);
        //-> left and top (0,0) doesnt clamp properly? or is player pos just wrong? oh player has 2d bounds? also the margins arent the same for each edge?
    	//-> corners still broken, but now bcz of stuff above?
    	//-> no x constraint while out of y
    	//-> or rather if i am out of x but the icon can be seen, only constraint to y and not x
    	//if(off_u || off_d)
    	if((off_u || off_d) && (!off_l && !off_r))
	    	markerX = xx + 1;
    		
		//draw_debug_text(xx,yy, "P");
		//draw_debug_text(16,16, "0,0");
		//draw_debug_text(view_get_wview()-16, view_get_hview()-16, "1,1");

		draw_sprite_ext(sprite_get("article_offscreen"), idx, markerX, markerY, 1, 1, 0, get_player_hud_color(player), 1);
		shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8 + icon_type, markerX, markerY, 1, 1, 0, c_white, 1);
		shader_end();
	}
}

/* org phone:
with obj_article1 if player_id == other{
	var leeway = 0;
	var z = y - 24;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = z < view_get_yview() - leeway;
	var off_d = z > view_get_yview() + view_get_hview() + leeway;
	
	var margin = 34;
	var idx = noone;
	
	if off_l{
		idx = 0;
		if off_u idx = 1;
		if off_d idx = 7;
	}
	else if off_r{
		idx = 4;
		if off_u idx = 3;
		if off_d idx = 5;
	}
	else if off_u idx = 2;
	else if off_d idx = 6;
	
	if idx != noone{
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8 + wisp_type, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}

user_event(11);
*/