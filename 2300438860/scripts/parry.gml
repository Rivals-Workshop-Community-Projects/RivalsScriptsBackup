

	     spawn_hit_fx(x,y,lighten2)
        		sound_stop(cur_sound)
                sound_play(sound_get("buzzing"),false,noone,0.4)		
             attackbar = 88
        	barpause = 300
        	sound_play(sound_get("tauntflash"),false,noone,1.2)
        	sound_play(sound_get("fspec2"),false,noone,1.2)
        	sound_play(sound_get("fspec3"),false,noone,1.2)
        	move_cooldown [AT_NSPECIAL] = 300