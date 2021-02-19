if dienextframe = 1 {instance_destroy() exit}

if attack = AT_NSPECIAL_AIR and !free {
	player_id.makecrow = 1
	player_id.makecrowx = x
	player_id.makecrowy = y
	dienextframe = 1 
}