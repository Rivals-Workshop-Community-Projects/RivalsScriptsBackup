//post-draw

if (countDownFxFrame != 0){
    draw_sprite_ext(other_player_id.countClock, countDownFxFrame, x, y-32, 1, 1, 0, c_white, countDownFxAlpha)
        if (countDownFxFrame < 8 and frozenInTime){
            if (floor(countDownFxFrame) % 2 == 0){
                var currentFrame = floor(countDownFxFrame);
                if (currentFrame != prevFrame) {
                    if (!tickPlayed){
                        sound_play(other_player_id.tick);
                        tickPlayed = true
                    } else {
                        sound_play(other_player_id.tock);
                        tickPlayed = false                    
                    }
                    
                    prevFrame = currentFrame;
                }
            }
        }
}
