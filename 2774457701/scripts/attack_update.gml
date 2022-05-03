if attack == AT_FTILT{
    move_cooldown [AT_FTILT] = 60;
}

if attack == AT_FSPECIAL{
    move_cooldown [AT_FSPECIAL] = 50;
}

if attack == AT_NSPECIAL{
    move_cooldown [AT_NSPECIAL] = 20;
}

if attack == AT_DSPECIAL{
    move_cooldown [AT_DSPECIAL] = 120;
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 2){
        puddle = instance_create(x, y, "obj_article2");
    }
}

        if (attack == AT_USPECIAL){
	if (instance_exists(puddle)){
		x = puddle.x;
		y = puddle.y - 30;
		create_hitbox (AT_USPECIAL, 1, x, y)
    }
}

if (attack == AT_DSPECIAL){
    if window == 1{
        create_hitbox (AT_EXTRA_1, 1, puddle.x, puddle.y - 20)
                create_hitbox (AT_EXTRA_1, 2, puddle.x, puddle.y - 20)
                        create_hitbox (AT_EXTRA_1, 3, puddle.x, puddle.y - 20)
                                create_hitbox (AT_EXTRA_1, 4, puddle.x, puddle.y - 20)
                                        create_hitbox (AT_EXTRA_1, 5, puddle.x, puddle.y - 20)
                                                create_hitbox (AT_EXTRA_1, 6, puddle.x, puddle.y - 20)
                                                        create_hitbox (AT_EXTRA_1, 7, puddle.x, puddle.y - 20)
    }
}