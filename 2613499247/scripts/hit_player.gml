//


    sound_play(sound_get("slam1"),false,noone,1, 2 - min((hitstop*hitstop)/100 , 1.5)  )
    sound_play(sound_get("slam1"),false,noone,.8, 1)
//sticky ledge
if (my_hitboxID.type == 1 && hit_player_obj.free == false) {
     hit_player_obj.y -= 1;
}