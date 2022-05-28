if attack == AT_NSPECIAL{
    move_cooldown [AT_DSPECIAL] = 120;
}

if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 5){
        puddle = instance_create(x, y, "obj_article2");
    }
}

if (attack == AT_NSPECIAL){
    if (window == 1 && window_timer == 5){
    	bubble = instance_create(x, y, "obj_article1");
    }
}

        if (attack == AT_EXTRA_1){
	if (instance_exists(bubble)){
		x = bubble.x;
		y = bubble.y - 30;
    }
}


if (attack == AT_DSPECIAL && instance_exists(puddle)){
	if (window == 1 && window_timer == 4){
	    create_hitbox (AT_EXTRA_1, 1, puddle.x, puddle.y - 20);
        create_hitbox (AT_EXTRA_1, 2, puddle.x, puddle.y - 20);
            create_hitbox (AT_EXTRA_1, 3, puddle.x, puddle.y - 20);
                create_hitbox (AT_EXTRA_1, 4, puddle.x, puddle.y - 20);
                    create_hitbox (AT_EXTRA_1, 5, puddle.x, puddle.y - 20);
                        create_hitbox (AT_EXTRA_1, 6, puddle.x, puddle.y - 20);
                            create_hitbox (AT_EXTRA_1, 7, puddle.x, puddle.y - 20);
                            instance_destroy(puddle);
	}
}

if (attack == AT_DSPECIAL_AIR && instance_exists(puddle)){
	if (window == 1 && window_timer == 4){
	    create_hitbox (AT_EXTRA_1, 1, puddle.x, puddle.y - 20);
        create_hitbox (AT_EXTRA_1, 2, puddle.x, puddle.y - 20);
            create_hitbox (AT_EXTRA_1, 3, puddle.x, puddle.y - 20);
                create_hitbox (AT_EXTRA_1, 4, puddle.x, puddle.y - 20);
                    create_hitbox (AT_EXTRA_1, 5, puddle.x, puddle.y - 20);
                        create_hitbox (AT_EXTRA_1, 6, puddle.x, puddle.y - 20);
                            create_hitbox (AT_EXTRA_1, 7, puddle.x, puddle.y - 20);
                            instance_destroy(puddle);
	}
}

        if (attack == AT_USPECIAL){
	if (instance_exists(puddle)){
		x = puddle.x;
		y = puddle.y - 30;
		create_hitbox (AT_USPECIAL, 10, x, y)
    }
}