//got_hit
if laser_state > 0 sound_stop(sound_get("laser_loop"))
laser_state = 0
laser_timer = 0
laser_angle = 0
laser_dist = 0
laser_end_pos = [0, 0]
laser_pos_max = [0, 0]
laser_hit = false

fireblast_state = 0
fireblast_timer = 0
fireblast_angle = 0
fireblast_dist = 0
fireblast_end_pos = [0, 0]
fireblast_pos_max = [0, 0]
fireblast_hit = false

move_cooldown[AT_NSPECIAL] = 0

fire_stance = false
fire_amount = 0