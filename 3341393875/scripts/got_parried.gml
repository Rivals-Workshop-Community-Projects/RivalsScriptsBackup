if (instance_exists(active_minion)){
    active_minion.state = "DEATH";
}

if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 1 && instance_exists(pizzaHeadTV)){
    var debris1 = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 60, TV_debrisVFX);
	debris1.originalImage = 0;
	debris1.hsp = 5;
	debris1.vsp = -7.5;

	var debris2 = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 60, TV_debrisVFX);
	debris2.originalImage = 1;
	debris2.hsp = -5;
	debris2.vsp = -7.5;

	var debris3 = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 80, TV_debrisVFX);
	debris3.originalImage = 2;
	debris3.hsp = 0;
	debris3.vsp = -7.5;

    instance_destroy(pizzaHeadTV);
}

if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 9){
	my_hitboxID.hitbox_timer = 0

    my_hitboxID.image_index = 0

    my_hitboxID.hsp *= 1.5;

    my_hitboxID.length *= 0.75;

    my_hitboxID.draw_xscale *= -1;

    my_hitboxID.transcendent = true;
}

if (my_hitboxID.attack == AT_USPECIAL_GROUND){
	sprite_index = sprite_get("pizzahead_grounded");
}