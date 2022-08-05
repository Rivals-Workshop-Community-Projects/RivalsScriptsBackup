//asd
if (get_gameplay_time() == 126)
{
    if is_aether_stage()
    {
        switch(stagesong)
        {
            case 0:{music_play_file( "a_music_loop" );}break;
            case 1:{music_play_file( "a_music_loop2" );}break;
            case 2:{music_play_file( "a_music_loop3" );}break;
            case 3:{music_play_file( "a_music_loop4" );}break;
        }
    }
    else
    {
        switch(stagesong)
        {
            case 0:{music_play_file( "music_loop" );}break;
            case 1:{music_play_file( "music_loop2" );}break;
            case 2:{music_play_file( "music_loop3" );}break;
            case 3:{music_play_file( "music_loop4" );}break;
        }
    }
}

