//The variable used to randomize the stage's music, set to -1 for the randomizer in update.gml to work.
cur_song = -1

//Variables relating to the moving platform.
wood_state = 1
wood_timer = 1
wood_mode = 1
if is_aether_stage() {
    wood_mode = 2
}

//Timers for each article with animation, as using image_speed doesn't stop when paused.
sunflower_timer = 1
lilac_timer = 1
tornado_timer = 1
eggmobile_timer = 1
speedstar_timer = 1

//Variables that control the order, and state, of the cameos.
cameos_state = 1
cameos_timer = 1
chase = (random_func( 1, 4, true)+1);