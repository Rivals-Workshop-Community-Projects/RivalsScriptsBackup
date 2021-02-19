with(asset_get("obj_article_platform")) if (player_id == other){
	parried_flag = true;
}

elytra = 0;
sound_stop(sfx_minecraft_elytra);

with my_hitboxID if attack == AT_NTHROW && hbox_num == 3 hitbox_timer = 0;



if held_item && !phone_cheats[cheat_tmi]{
	held_item = 0;
	sound_play(sfx_minecraft_break_tool);
}



if (my_hitboxID.type == 2){
	if ("steve_arrow_advancement" not in hit_player_obj){
		hit_player_obj.steve_arrow_advancement = 1;
		var name = ("muno_char_name" in hit_player_obj) ? hit_player_obj.muno_char_name : get_char_info(hit_player_obj.player, INFO_STR_NAME);
		with chat_owner{
			ds_list_add(chat_txt, name + " has completed the challenge [Not Today, Thank You]");
			ds_list_add(chat_tmr, chat_tmr_max);
			ds_list_add(chat_col, c_white);
		}
	}
}