//hitbox_update.gml

//rotation sprite code for uspec air
if (attack == AT_USPECIAL_2) {
	proj_angle += (5 * spr_dir);
	if (hitbox_timer == 49){
		spawn_hit_fx( x, y - 2, 144 );
	}
}