if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}

if (attack == AT_NSPECIAL && hbox_num == 3){
	proj_angle -= 5*spr_dir;
}