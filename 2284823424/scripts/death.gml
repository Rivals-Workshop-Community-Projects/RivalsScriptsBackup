sound_play(sfx_minecraft_oof, false, noone, 2, 1);



if starman starman = 2;
if mushroom mushroom = 2;



with(asset_get("obj_article_platform")) if (player_id == other){
	break_stage = break_timer_max + 1;
	parried_flag = true;
}

if practice with asset_get("hit_fx_obj") if ("steve_manip_id" in self && steve_manip_id == other && type == 4){
	has_landed = true;
	exist_timer = 1000;
}




var death_message = "Steve fell out of the world";

if (x != clamp(x, blastzone_l, blastzone_r)){
	death_message = "Steve experienced kinetic energy";
}

if (y < blastzone_t){
	death_message = "Steve went off with a bang";
}

if (state_cat == SC_HITSTUN && stored_death_message != ""){
	death_message = stored_death_message;
}

with chat_owner{
	ds_list_add(chat_txt, death_message);
	ds_list_add(chat_tmr, chat_tmr_max);
	ds_list_add(chat_col, c_white);
}



strength_pot = 0;
taunt_stored = 0;



if elytra{
	elytra = 0;
	sound_stop(elytra_sound);
}



if held_item && !phone_cheats[CHEAT_TMI]{
	held_item = 0;
	sound_play(sfx_minecraft_break_tool);
}

if !held_item && !has_container{
	// sound_play(sfx_minecraft_ding2);
	// has_container = 1;
	
	sound_play(sfx_minecraft_ding1);
	var hfx = spawn_hit_fx(clamp(x, 0, room_width), clamp(y, 0, room_height), vfx_exp);
	hfx.steve_manip_id = self;
	hfx.type = 5;
	hfx.depth = depth - 10;
	hfx.num = 1;
}