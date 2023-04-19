//Resets the Mark when you die
if (instance_exists(beaded_player)){
	beaded_player.bead_marked = false;
	marked_timer = 0;
}

//Despawns the Point when you die
if (instance_exists(point)){
	spawn_hit_fx(point.x, point.y, point_die_vfx);
	instance_destroy(point);
}

//Despawns the Point when you die
if (instance_exists(bead_article)){
	instance_destroy(bead_article);
}


