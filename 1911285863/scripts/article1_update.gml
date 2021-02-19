//oof
image_index =  get_gameplay_time() / (60 / 6);
sprite_index = sprite_get(song_game + "ground");

  if (game_index = 0 && song_index = 0){
    game_index = 1 + current_second%3;
    song_index = 1 + current_second%5;

    }
    else if (!is_laststock()){
                if (game_index = 1){
                    switch (song_index){
                        //P5
                        case 1: music_play_file( "Aria of the Soul" );//
                        with (obj_stage_article)
                        visible = false;
                        break;
                        
                        case 2: music_play_file( "Blooming Villain" );//
                        with (obj_stage_article)
                        visible = false;
                        break;
                        
                        case 3: music_play_file( "Last Surprise" );//
                        with (obj_stage_article)
                        visible = false;
                        break;
                        
                        case 4: music_play_file( "Rivers in the Desert" );//
                        with (obj_stage_article)
                        visible = false;
                        break;
                        
                        case 5: music_play_file( "Take Over" );//
                        with (obj_stage_article)
                        visible = false;
                        break;
                    }
                }
                
                else if (game_index = 2){
                    switch (song_index){
                        //P4
                        case 1: music_play_file( "Reach Out to the Truth" );//
                        with (obj_stage_article)
                        song_game = "p4";
                        break;
                        
                        case 2: music_play_file( "I'll Face Myself -Battle-" );//
                        with (obj_stage_article)
                        song_game = "p4";
                        break;
                    
                        case 3: music_play_file( "I'll Face Myself -Smash-" );//
                        with (obj_stage_article)
                        song_game = "p4";
                        break;
                        
                        case 4: music_play_file( "Time to Make History" );//
                        with (obj_stage_article)
                        song_game = "p4";
                        break;
                        
                        case 5: music_play_file( "The Almighty" );//
                        with (obj_stage_article)
                        song_game = "p4";
                        break;
                    }    
                }
                else if (game_index = 3){
                    switch (song_index){
                        //P3
                        case 1: music_play_file( "Mass Destruction FES" );//
                        with (obj_stage_article)
                        song_game = "p3";
                        break;
                        
                        case 2: music_play_file( "Mass Destruction" );
                        with (obj_stage_article)
                        song_game = "p3";
                        break;
                        
                        case 3: music_play_file( "The Battle for Everyone's Souls" );//
                        with (obj_stage_article)
                        song_game = "p3";
                        break;
                        
                        case 4: music_play_file( "Master of Shadows" );//
                        with (obj_stage_article)
                        song_game = "p3";
                        break;
                        //P3P
                        case 5: music_play_file( "Wiping All Out" );//
                        with (obj_stage_article)
                        song_game = "p3p";
                        break;
                    }
                    
                }
    }
    
    
    
    
if (game_index = 1 && song_index = 3){
    
if (is_laststock()) {
music_play_file( "Life Will Change" );
}
    
}





    