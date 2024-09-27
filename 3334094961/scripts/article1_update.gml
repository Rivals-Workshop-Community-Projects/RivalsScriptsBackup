//A sprite's image_index value controls what frame of animation the sprite displays.
//This is setup to change depending on cur_song, the variable used to pick which song is supposed to play.
image_index = obj_stage_main.cur_song

//This triggers after a short amount of time (about two seconds after the countdown) and destroys the article which removes the display.
if (get_gameplay_time() >= 300) instance_destroy();