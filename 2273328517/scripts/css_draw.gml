if (!variable_instance_exists(self, "charselect_frame")) {
    charselect_frame = 0;
}
charselect_frame += 0.1;
draw_sprite(sprite_get("charselect"), charselect_frame, x + 8, y + 8);
if "alt_cur" in self alt_cur_old = alt_cur;
else alt_cur_old = 0;
alt_cur = get_player_color(player);

if alt_cur != alt_cur_old {
    sound_stop(sound_get("static1"));
    sound_play(sound_get("static1"));
}