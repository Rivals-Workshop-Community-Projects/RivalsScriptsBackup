var vfx_exists = 0;

with asset_get("hit_fx_obj") if ("steve_manip_id" in self && steve_manip_id == other && type == 5) vfx_exists = 1;

if (!has_container && !held_item && !vfx_exists){
	sound_play(sfx_minecraft_ding1);
	var hfx = spawn_hit_fx(clamp(x, 0, room_width), clamp(y, 0, room_height), vfx_exp);
	hfx.steve_manip_id = self;
	hfx.type = 5;
	hfx.depth = depth - 10;
	hfx.num = 1;
	var hfx2 = spawn_hit_fx(x, y - 32, vfx_exp_pickup);
	hfx2.depth = depth - 10;
}



if (enemy_hitboxID.type == 2){
	if !advancement_made_parry{
		advancement_made_parry = 1;
		with chat_owner{
			ds_list_add(chat_txt, "Steve has completed the challenge [Not Today, Thank You]");
			ds_list_add(chat_tmr, chat_tmr_max);
			ds_list_add(chat_col, c_white);
		}
	}
}