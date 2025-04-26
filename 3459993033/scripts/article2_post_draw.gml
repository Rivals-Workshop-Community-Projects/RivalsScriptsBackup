for (var i = 0; i < ds_list_size(particles); i++) {
	var part = particles[| i]
	draw_sprite_ext(part.sprite, 0, part.x, part.y, part.xscale, part.yscale, part.angle, c_white, 1)
}

if instance_exists(player_id.toadie_obj) and player_id.toadie_obj.state == PS_ATTACK_AIR {
	depth = -4;
	draw_sprite_ext(sprite_get("toady_carry_arms"), player_id.toadie_obj.image_index, player_id.toadie_obj.x, player_id.toadie_obj.y, player_id.toadie_obj.spr_dir, player_id.toadie_obj.image_yscale, 0, c_white, 1)
}

if instance_exists (player_id.toadie_obj) and player_id.toadie_obj.state == PS_DEAD{
	player_id.toadie_obj.depth = 0;
}