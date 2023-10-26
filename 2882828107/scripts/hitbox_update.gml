//hitbox_update
if (attack == AT_DSPECIAL && hitbox_timer == 1){
	vsp = obj_article1.vsp
}

if (attack == AT_FSPECIAL && hitbox_timer == 1){
	vsp = obj_article2.vsp
	Hsp = obj_article2.hsp
}

if (attack == AT_DSPECIAL && hitbox_timer == 1){
	if (was_parried){
		instance_destroy();
	}
}