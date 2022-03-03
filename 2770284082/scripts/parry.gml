//parry.gml

sound_stop(cur_sound);
shake_camera(6, 6)
sound_play(sound_get("v_BAYBE"),false,noone,1,1.05 - random_func(1,10,true)/100)
sound_play(sound_get("parried"),false,noone,1,1.05 - random_func(1,10,true)/100)