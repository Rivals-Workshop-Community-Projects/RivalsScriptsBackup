
if (my_hitboxID.attack == AT_FTHROW && PP_charged == true)
{
			hit_player_obj.wrap_time = 90;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
			draw_plasma = true;
}

if (my_hitboxID.attack == AT_FTHROW && PP_charged == false)
{
			hit_player_obj.wrap_time = 24;
			hit_player_obj.state = PS_WRAPPED;
			hitplayer = hit_player_obj;
}


if (my_hitboxID.attack == AT_FSPECIAL_2)
{
	hit_player_obj.needles_hit = true;
    hit_player_obj.needles_hit_ID = id; 
    hit_player_obj.stucks += 1;
    hit_player_obj.stucks_ID = id;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 3)
{
	hit_player_obj.needles_hit = false;
    hit_player_obj.needles_hit_ID = id; 
    hit_player_obj.stucks = 0;
    hit_player_obj.stucks_ID = id;
}

if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 1)
{
	hit_player_obj.plasma_stuck = true;
    hit_player_obj.plasma_stuck_ID = id;
    plasma_timer = 50;
}

if (my_hitboxID.attack == AT_DSTRONG_2 && my_hitboxID.hbox_num == 2)
{
	hit_player_obj.plasma_stuck = false;
    hit_player_obj.plasma_stuck_ID = id;
    plasma_timer = 0;
}
