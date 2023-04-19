

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num <= 2)
{
			hit_player_obj.wrap_time = 90;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
			hit_player_obj.x = x + 48 * spr_dir ;
		    hit_player_obj.y = y - 2;
}


    if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) 
    {
            destroy_hitboxes();
            hit_player_obj.wrap_time = 120;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
        	window = 5;
			window_timer = 0;
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
	}
	
    if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) 
    {
			hit_player_obj.x = x + 20 * spr_dir ;
		    hit_player_obj.y = y;
	}
	
	    if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2) 
    {
			hit_player_obj.x = x - 20 * spr_dir ;
	}
	
	
	
if (meter > 0) 
{
    //i forget the function its online
    //i think take_damage(hit_player_obj.player, <damage boost amount>);
    take_damage(hit_player_obj.player,player, 1);
}