//	Each line of debug text is a different line within the display, feel free to edit the x and y values to change their posistions.

//	Song Name
draw_debug_text(x+60, y, "Track " + string(obj_stage_main.cur_song) + " - " + string(song_name_array[obj_stage_main.cur_song]));

//	Artist
draw_debug_text(x+60, y+20, string(song_artist_array[obj_stage_main.cur_song]));

//	Album/Source Game
draw_debug_text(x+60, y+40, string(song_album_array[obj_stage_main.cur_song]));