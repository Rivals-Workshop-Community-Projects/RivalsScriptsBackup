if (my_hitboxID.attack == AT_FSPECIAL) 
{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.draw_xscale *= -1
}

if (instance_exists(madara)){
    madara.image_index = 9;
	madara.state = 4;
}