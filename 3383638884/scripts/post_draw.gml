var attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
//attacking = phone_attacking;

if(attacking && attack == AT_FSTRONG) 
{
	if((window == 1 && window_timer == 29 && state_timer != 29) || (window == 2 && window_timer == 0))
	    draw_sprite_ext(sprite_get("fstrong_brown"), image_index, x, y, spr_dir*2, 2, 0, strong_charge%10 < 5? $009BCF : $0038A0, 1);
	else
	    draw_sprite_ext(sprite_get("fstrong_brown"), image_index, x, y, spr_dir*2, 2, 0, $0038A0, 1);
}

//combo words
if(combo_words_timer > 0)
{
	if(combo_very)
		draw_sprite_ext(sprite_get("combo_very"), 0, x - 82, y - 10, 2, 2, 0, c_white, min((combo_words_timer > 200)? 1 : combo_words_timer/30, (250-combo_words_timer)/20, 0.9));
    draw_sprite_ext(sprite_get("combo_words"), combo_words_id, x - 80, y + 10, 2, 2, 0, c_white, min((combo_words_timer > 200)? 1 : combo_words_timer/30, (250-combo_words_timer)/20, 0.9));
}

//debug
if(has_supertaunt)
{
	shader_start();
    draw_sprite_ext(sprite_get("sparks"), floor(get_gameplay_time()/3), x, y, 2, 2, 0, c_white, 1);
	shader_end();
}
if(phone_cheats[CHEAT_DEBUG])
{
	draw_debug_text( x - 20, y + 40, "window: " + string( window ));
	draw_debug_text( x - 20, y + 52, "window timer: " + string( window_timer ));
	draw_debug_text( x - 20, y + 64, "state timer: " + string( state_timer ));
	draw_debug_text( x - 20, y + 76, "dash timer: " + string(dash_timer));
	draw_debug_text( x - 20, y + 88, string(strong_charge));
	draw_debug_text( x - 20, y + 100, string(combo_timer));
}

//MunoPhone Touch
muno_event_type = 4;
user_event(14);
