//CALLED WHEN HIT

if (!wings_fading && has_wings){
	wings_fading = 1;
}

if (specialEmpowered != 0){
	specialEmpowered = 0;
	flashVisible = 0;
	flashTimer = 0;
	outline_color = [0,0,0];
}

if (attack == AT_NSPECIAL && !instance_exists(obj_article2)){
	//move_cooldown[AT_NSPECIAL] = 0;
}

if (attack == AT_FSPECIAL){
	hide_fspecial = 1;
}