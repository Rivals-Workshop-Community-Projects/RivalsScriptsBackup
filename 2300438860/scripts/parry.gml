
if hit_player_obj != self {
	     spawn_hit_fx(x,y,lighten2)
        		sound_stop(cur_sound)
                sound_play(sound_get("buzzing"),false,noone,0.4)		
             attackbar = 2
        	sound_play(sound_get("tauntflash"),false,noone,1.2)
        	sound_play(sound_get("fspec2"),false,noone,1.2)
        	sound_play(sound_get("fspec3"),false,noone,1.2)
        	move_cooldown [AT_NSPECIAL] = 300
} else {
	set_state(PS_PRATLAND)
	state_timer = -120
}