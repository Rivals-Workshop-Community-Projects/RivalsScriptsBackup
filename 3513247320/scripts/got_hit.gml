sound_stop(fstrong_sfx);
sound_stop(nspec_sfx);
nspec_charge = 0;
nspec_lemon_timer = 0;
nspec_lemon_buffer_timer = 0;
fspec_grab = [];
if !instance_exists(my_grab_id) has_rock = false;
else if my_grab_id != dspec_rock{
	my_grab_id.invincible = false;
	my_grab_id.invince_time = 0;
	var hfx = spawn_hit_fx(round(my_grab_id.x), round(my_grab_id.y + (my_grab_id.char_height / -2)), 302);
	sound_play(asset_get("sfx_bird_sidespecial_start"));
	print(hfx.y)
	var dthrow = create_hitbox(AT_DSPECIAL_2, 1, round(my_grab_id.x), round(my_grab_id.y + (my_grab_id.char_height / -2)));
	print(dthrow.y)
	for (var h = 0; h < array_length(dthrow.can_hit); h++;) if h != my_grab_id.player dthrow.can_hit[h] = false;
	my_grab_id = noone;
	has_rock = false;
}