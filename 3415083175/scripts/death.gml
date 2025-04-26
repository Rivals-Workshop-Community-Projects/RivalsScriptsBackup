// called when the character gets KO'd

if laser_state > 0 sound_stop(sound_get("laser_loop"))
laser_state = 0
laser_timer = 0
laser_angle = 0
laser_dist = 0
laser_end_pos = [0, 0]
laser_pos_max = [0, 0]
laser_hit = false