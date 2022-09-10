///

hurted = true 

        
 move_cooldown[AT_FSTRONG] = 00
 sound_stop(beatbox)
 
 Kanosbeatbox = 0
 

if super_armor {
    sound_stop(sound_get("RI"))
    sound_play(sound_get("RI"),false,noone,0.85,1.25)
}