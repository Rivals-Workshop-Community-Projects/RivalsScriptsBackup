//


    sound_play(sound_get("slam1"),false,noone,.6, 2 - min((hitstop*hitstop)/100 , 1.5)  )
    sound_play(sound_get("slam1"),false,noone,.5, 1)
    
if (my_hitboxID.type == 1 && hit_player_obj.free == false) {
     hit_player_obj.y -= 1;
}