//article1_update
if player_id.my_table_plat != self and player_id.my_table_plat != noone  instance_destroy()
if !instance_exists(player_id.my_table) instance_destroy()
y = player_id.my_table.y
x = player_id.my_table.x
if hitstop {
	hsp = 0
	vsp = 0
}
else {
	vsp = player_id.my_table.vsp
	hsp = player_id.my_table.hsp
}

state_timer += 1
if state = 1 {
	sprite_index = sprite_get("grilldie")
	image_index += 0.5
	if state_timer = 12 {
	instance_destroy()
	}
}