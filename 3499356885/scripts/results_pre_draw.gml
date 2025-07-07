//Victory screen song loop
if (winner == player){
    
    //Results loop is nothing
    if ("custom_results_loop" not in self) custom_results_loop = -1;
    
    //When results start looping...
    if (results_loop_active){
        
        //Make base game music quiet
        suppress_stage_music(0, 1);
        
        //Make the results loop not nothing
        if custom_results_loop == -1 {
            custom_results_loop = sound_play(sound_get("victory_loop"), true, 0, (3-get_local_setting(3)) * get_local_setting(4))
        }
        
    }
    
    //Stop the loop when it advances to next screen
    if (end_charselect || end_rematch){
        sound_stop(custom_results_loop);
    }
    
}