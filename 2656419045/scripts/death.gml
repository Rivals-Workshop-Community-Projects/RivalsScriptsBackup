//Death

if(neo_state != "Cutscene" || neo_substate != "Death") {
	sound_play(sound_get("death"));
	if(y > phone_blastzone_b && y > room_height)
		queue_voice = "fall";
	else if((x < phone_blastzone_l && x < 0) || (x > phone_blastzone_r && x > room_width))
		queue_voice = "side";
	else if(y < phone_blastzone_t && y < 0)
		queue_voice = "death";
}

neo_statetimer = 0; neo_substatetimer = 0;
neo_substatetimer = 0;

if(!phone_cheats[CHEAT_SUPPRESS_POWERCHANGE])
	neo_power = POWER_OBJ.fire_flower;
neo_state = "Respawn Plat";
neo_substate = "Roulette Selection";
neo_animstate = "idle";
skid_timer = 0;
override_anim_timer = 0;
neo_animtimer = 0;
p_speed = 0;

nspecial_leniency_timer = 0;

spr_dir = 1;
if(invincible == 2) invincible = 1;
animation_is_flickering = false;
give_flicker_frames = 0;
visible = false;

hud_shake_time = get_gameplay_time() + 45;

// debug_match_analysis += `defeated with ${neo_points}p/`;
// if(debug_get_match_analysis && get_player_stocks(player) == 1) get_string("It looks like you're out of stocks. Please copy and paste this match report to a text document so Floral can analyze it:", debug_match_analysis);


consecutive_stomps = 0;
neo_points = 0; prev_reward_value = 0;
score_old_render_images = array_create(7, -1);
queue_update_score = true;

if(instance_exists(carry_obj)) {
	carry_obj.mark_for_destruction = true;
}