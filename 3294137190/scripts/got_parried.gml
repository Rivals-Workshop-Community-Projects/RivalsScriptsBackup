if (my_hitboxID.attack == AT_FSPECIAL) 
{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.draw_xscale *= -1
}

//if (my_hitboxID.attack == AT_DSPECIAL){
	//silver_bullets -= 2; //(have to figure out some way to make Paleblood not lose QS Bullets if he parries his own snake)
//}

if (instance_exists(madara)){
    madara.image_index = 9;
	madara.state = 4;
}