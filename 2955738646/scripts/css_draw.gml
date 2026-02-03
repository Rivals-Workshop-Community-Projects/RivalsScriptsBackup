//draw_sprite(voice_icon, voice_state+2, temp_x + 164, temp_y + 94);
//draw_sprite(voice_icon, voice_button, temp_x + 164, temp_y + 94);

//if (get_player_color(player) == 8){ draw_sprite(sprite_get("_cannot"), 0, temp_x + 115, temp_y + 56); }

//draw_sprite(emerald_icon, emerald_state+2, temp_x + 115, temp_y + 56);
//draw_sprite(emerald_icon, emerald_button, temp_x + 115, temp_y + 56);

draw_sprite(attack_icon, attack_state+2, temp_x + 115, temp_y + 56);
draw_sprite(attack_icon, attack_button, temp_x + 115, temp_y + 56);

//draw_sprite(attack_icon, attack_state+2, temp_x + 155, temp_y + 56);
//draw_sprite(attack_icon, attack_button, temp_x + 155, temp_y + 56);

//set_synced_var(player, !voice_button);
//set_synced_var(player, !emerald_button);
set_synced_var(player, !attack_button);