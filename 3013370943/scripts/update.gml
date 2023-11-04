//update
timer++
if timer mod 3001 == 1 {
    instance_create(-128, 250 + random_func_2(0, 100, true), "obj_stage_article", 1)
    //print('a')
}
/*
if (is_laststock()) {
    music_play_file("music_laststock_loop");
}
*/