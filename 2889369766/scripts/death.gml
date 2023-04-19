//DEATH

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

with(obj_article2) {
    if (player_id == other.id){
        lifetime = 10;
    }

}

if (has_wings){
	wings_alpha = 1;
    wings_fading = 0;
    has_wings = 0;
    angelwingsAnimTimer = 0;
}