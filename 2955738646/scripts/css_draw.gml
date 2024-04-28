draw_sprite(voice_icon, voice_state+2, temp_x + 174, temp_y + 94);
draw_sprite(voice_icon, voice_button, temp_x + 174, temp_y + 94);

set_synced_var(player, !voice_button);
