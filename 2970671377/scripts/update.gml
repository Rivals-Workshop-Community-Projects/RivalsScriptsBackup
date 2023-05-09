//	The randomizer for the stage's music, set up under an if statement to prevent update from running it every frame.
//	The number within the randomizer (in this case, 4) is the total number of songs.
//	Edit this value to adjust how many songs are randomized.
if (cur_song == -1) 
{
	cur_song = random_func(current_second, 8, true)+1;
}

//	This is the actual line of code that plays the selected song.
//	"music_track" can be adjusted to whatever you prefer but make sure you rename the song files to match.
music_play_file("music_track" + string(cur_song));