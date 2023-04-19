sprite_change_offset("idle", 72, 94);
sprite_change_offset("run", 72, 94);
sprite_change_offset("taunt", 72, 94);
sprite_change_offset("wait", 72, 94);
sprite_change_offset("ledge", 72, 94);
sprite_change_offset("turn", 72, 94);

sprite_change_offset("og_nova_face", 61, 68)
sprite_change_offset("nova_face", 244, 274)
sprite_change_offset("nova_complete", 244, 274)
sprite_change_offset("nova_complete_white", 244, 274)
sprite_change_offset("nova_eyelids_upper", 244, 274)
sprite_change_offset("nova_eyelids_lower", 244, 274)
sprite_change_offset("nova_vane_eyes", 244, 274)
sprite_change_offset("nova_pendulum", 40, 8)
sprite_change_offset("nova_first_hand", 12, 24)
sprite_change_offset("nova_second_hand", 32, 40)
sprite_change_offset("nova_big_gear", 68, 68)
sprite_change_offset("nova_small_gear", 48, 48)
sprite_change_offset("nova_silver_gear", 58, 58)
sprite_change_offset("nova_wind_up_thingy", 1, 46)
sprite_change_offset("star", 30, 30)
sprite_change_offset("super_star", 44, 44);
sprite_change_offset("lightning", 103, 15);
sprite_change_offset("fufu_nova", 122, 137);
sprite_change_offset("fufu_nova_face_incomplete", 122, 137);
sprite_change_offset("fufu_nova_eyelids_upper", 122, 137);
sprite_change_offset("fufu_nova_eyelids_lower", 122, 137);
sprite_change_offset("fufu_nova_pocketwatch", 122, 137);
sprite_change_offset("fufu_nova_base", 122, 137);
sprite_change_offset("fufu_nova_first_hand", 36, 37);
sprite_change_offset("fufu_nova_second_hand", 36, 37);
sprite_change_offset("fufu_nova_wind_up_thingy", 1, 22);
sprite_change_offset("fufu_nova_pendulum", 40, 6);
sprite_change_offset("fufu_nova_smaller_pendulum", 40, 6);
sprite_change_offset("fufu_nova_things", 122, 137);
sprite_change_offset("fufu_nova_pupils", 122, 137);
sprite_change_offset("fufu_nova_exploding", 122, 137);
sprite_change_offset("fufu_nova_keyboard", 122, 137);
sprite_change_offset("fufu_nova_trisquare", 122, 137);
sprite_change_offset("fufu_nova_telescope", 122, 137);
sprite_change_offset("fufu_nova_poky_things", 122, 137);
sprite_change_offset("fufu_nova_globe", 122, 137);
sprite_change_offset("fufu_nova_loop", 122, 137);
sprite_change_offset("fufu_nova_pupils_destruction", 122, 137);
sprite_change_offset("fufu_nova_small_gear", 47, 47);
sprite_change_offset("fufu_nova_big_gear", 49, 49);
sprite_change_offset("fufu_nova_silver_gear", 22, 22);
sprite_change_offset("dramatic_background", 320, 232);

sprite_change_offset("flash", 7, 7);

sprite_change_offset("wish_input", 7, 7);
sprite_change_offset("blackdrop", 540, 225);
sprite_change_offset("flying_nimbus", 20, 16);
sprite_change_offset("flying_nimbus_white", 20, 16);
sprite_change_offset("new_flying_nimbus", 20, 16);
sprite_change_offset("new_flying_nimbus_white", 20, 16);
sprite_change_offset("big_flying_nimbus", 50, 30);

sprite_change_offset("super_one_star", 44, 44);
sprite_change_offset("super_two_star", 44, 44);
sprite_change_offset("super_three_star", 44, 44);
sprite_change_offset("super_four_star", 44, 44);
sprite_change_offset("super_five_star", 44, 44);
sprite_change_offset("super_six_star", 44, 44);
sprite_change_offset("super_seven_star", 44, 44);

sprite_change_offset("spr_realisticexplosion_0", 35, 50)
sprite_change_offset("spr_realisticexplosion_1", 35, 50)
sprite_change_offset("spr_realisticexplosion_2", 35, 50)
sprite_change_offset("spr_realisticexplosion_3", 35, 50)
sprite_change_offset("spr_realisticexplosion_4", 35, 50)
sprite_change_offset("spr_realisticexplosion_5", 35, 50)
sprite_change_offset("spr_realisticexplosion_6", 35, 50)
sprite_change_offset("spr_realisticexplosion_7", 35, 50)
sprite_change_offset("spr_realisticexplosion_8", 35, 50)
sprite_change_offset("spr_realisticexplosion_9", 35, 50)
sprite_change_offset("spr_realisticexplosion_10", 35, 50)
sprite_change_offset("spr_realisticexplosion_11", 35, 50)
sprite_change_offset("spr_realisticexplosion_12", 35, 50)
sprite_change_offset("spr_realisticexplosion_13", 35, 50)
sprite_change_offset("spr_realisticexplosion_14", 35, 50)
sprite_change_offset("spr_realisticexplosion_15", 35, 50)
sprite_change_offset("spr_realisticexplosion_16", 35, 50)

idle_spr = sprite_get( "blank" )
icon_spr = sprite_get( "blank" )
run_spr = sprite_get( "blank" )
turn_spr = sprite_get( "blank" )
ledge_spr = sprite_get( "blank" )
wait_spr = sprite_get( "blank" )
taunt_spr = sprite_get( "blank" )

safe_mode = false
dragon_active = false
dragon_summoning = false
wish_made = false
wishing_player = 0
wishing_url = 0
voice_info = 0
wish = ""
wishing_player_x = 0
wishing_player_y = 0
summon_speed = 5
summon_progress = 0
disappear_progress = 0
beerus = false
wish_index = 0
immortality_clock = 0
extra_jumps = 5
aerial_strong_used = false
wishing_time = 300
nova_height = 300

four_list = [0, 0, 0, 0]
player_x = [0, 0, 0, 0]
player_y = [0, 0, 0, 0]
player_height = [0, 0, 0, 0]
player_stocks = [0, 0, 0, 0]
six_list = [0, 0, 0, 0, 0, 0]

dragon_ball_x = [0, 0, 0, 0, 0, 0, 0]
dragon_ball_y = [0, 0, 0, 0, 0, 0, 0]
dragon_ball_owners = [-2, -2, -2, -2, -2, -2, -2]
queuing_dragon_balls = [1,2,3,4,5,6,7]
dragon_ball_lifetime = [600, 600, 600, 600, 600, 600, 600]
dragon_ball_sprites = [sprite_get("one_star"), sprite_get("two_star"), sprite_get("three_star"), sprite_get("four_star"), sprite_get("five_star"), sprite_get("six_star"), sprite_get("seven_star")]
dragon_ball_taken = true
dragon_balls_in_queue = true
dragon_ball_on_nimbus = false
randomize_dragon_balls = true

flying_nimbus_x = -2500
flying_nimbus_y = 250
flying_nimbus_fallspeed = 3
flying_nimbus_dir = 0
use_old_nimbus = false

combo_damage_start = [0, 0, 0, 0]
combo_damage_current = [0, 0, 0, 0]
combo_drop_penalty = [0, 0, 0, 0]

enable_dramatic_finish = true
dramatic_finish_time = 0
dramatic_finish = false
dramatic_finish_checksum = 0
dramatic_finish_music_playing = false
dramatic_finish_url = 0
dramatic_finish_player_sprite = sprite_get("placeholder_character")
nova_color = c_white

explosion_x = []
explosion_y = []
explosion_index = []

pet_w = 0;			// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 0;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)