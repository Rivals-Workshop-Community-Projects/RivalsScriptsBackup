//The variable used to randomize the stage's music, set to -1 for the randomizer in update.gml to work.
cur_song = -1

//Used to give Aether Mode's music a different trigger, works the same way as above.
//Remove if you don't have Aether exclusive songs.
if is_aether_stage() {
    cur_song = -2
}