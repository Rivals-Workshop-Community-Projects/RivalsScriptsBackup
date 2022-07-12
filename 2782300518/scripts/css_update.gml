if !(instance_exists(cursor_id)) exit;

css_timer++;
alt_cur = get_player_color(player);
txt = "#" + string(alt_cur);

if get_synced_var(player) > 1 {
    set_synced_var( player, 0)
}

if (player == 0)
{
	voice_button_position_x = x + 25;
	voice_button_position_y = temp_y + 149;
}
else
{
	if (get_player_hud_color(player) == 8421504)
	{
		voice_button_position_x = x + 60;
		voice_button_position_y = temp_y + 169;
	}
	else
	{
		voice_button_position_x = x + 75;
		voice_button_position_y = temp_y + 169;
	}
}
if (alt_cur != alt_checker)
{
	alt_checker = alt_cur;
	css_timer = 0;
    drawing = floor(alttime % 8);
    drawtime = 0;
	sound_stop(sound_get("motorbike_wheelie"));
    sound_play(sound_get("motorbike_wheelie"));
}

drawtime += 1;
alttime += 1;

//Voice selection with new global variables - A fusion of code from Dr;Flux with adjustments made by myself
if voicebutton == 2 || voicebutton == 5 {
    if cssframes == 0{
    sound_stop(sound_get("intro"));
		switch (voicebutton)
		{
			case 2:
				set_synced_var(player, 1);
				sound_stop(sound_get("intro"));
				sound_play(sound_get("intro"));
			break;
			case 5:
				set_synced_var(player, 0);
			break;
		}

    }
    cssframes++;
    if cssframes == 5{
        cssframes = 0;
        voicebutton += 1;
        if voicebutton > 5 {
            voicebutton -= 6;
        }
        voicebuttoncurrent = voicebutton;
    }
}

if (get_instance_x(cursor_id) >= voice_button_position_x && get_instance_x(cursor_id) <= voice_button_position_x + 30 
&& get_instance_y(cursor_id) >= voice_button_position_y && get_instance_y(cursor_id) <= voice_button_position_y + 26)
{
    if voicebutton == voicebuttoncurrent {
        if voicebutton == 0 || voicebutton == 3{
            voicebutton += 1;
        }
    }
}else{
    if voicebutton == 1 || voicebutton == 4 {
        voicebutton -= 1;
    }
    voicebuttoncurrent = voicebutton;
}
if voicebutton == 1 || voicebutton == 4 {
    if menu_a_pressed{
        voicebutton += 1;
        voicebuttoncurrent = voicebutton;
    }
}
