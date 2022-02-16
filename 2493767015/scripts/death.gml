star_meter = 0;
times_countered = 0;

if(!muted && !hitpause){
    if (get_player_stocks(player) <= 0){
        sound_play(sound_get("voice_defeat"));
    } else{
        var randomvoice = random_func(0, 2, true);
        if(randomvoice == 0){
            sound_play(sound_get("voice_ko1"));
        }else if(randomvoice == 1){
            sound_play(sound_get("voice_ko2"));
        }
    }
}