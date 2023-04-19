//Resets the Mark if parried
if (instance_exists(beaded_player)){
	beaded_player.bead_marked = false;
	marked_timer = 0;
}

//Despawns the Point if parried
if (instance_exists(point)){
	spawn_hit_fx(point.x, point.y, point_die_vfx);
	instance_destroy(point);
}

if (my_hitboxID.attack = AT_FSPECIAL){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.draw_xscale *= -1;
}



