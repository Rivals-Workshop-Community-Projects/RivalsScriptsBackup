//init
mantis_damage_array = array_create(3, 0)
mantis_attacking_array = array_create(3, 0) //0 = not attacking, 1 = attacking, 2 = dead
mantis_attack_queue = array_create(3, 0) //filled with indexes of current mantis attack
throne_dead_count = 0 //number of mantises wounded on throne

hitbox_view = false

in_trigger_range = false

pre_timer = 0

instance_create(x, y, "obj_stage_article", 4)
var mantis1 = instance_create(room_width/2 - 20, 208, "obj_stage_article", 5)
    mantis1.mantis_num = 1
    mantis1.orig_x = mantis1.x
    mantis1.orig_y = mantis1.y
var mantis2 = instance_create(room_width/2 + 112, 254, "obj_stage_article", 5)
    mantis2.spr_dir = -1
    mantis2.mantis_num = 2
    mantis2.orig_x = mantis2.x
    mantis2.orig_y = mantis2.y
var mantis3 = instance_create(room_width/2 - 134, 254, "obj_stage_article", 5)
    mantis3.mantis_num = 3
    mantis3.orig_x = mantis3.x
    mantis3.orig_y = mantis3.y

sfx_lower = sound_get("gate_lower")
sfx_close = sound_get("gate_close")
sfx_cover = sound_get("cover")
sfx_cover_metal = sound_get("cover_metal")

sfx_mantis_dash = sound_get("mantis_dash")
sfx_mantis_jump_ground = sound_get("mantis_jump_ground")
sfx_mantis_land_ground = sound_get("mantis_land_ground")

triggered = false
trigger_delay_timer = 0
timer = 0

num_players = 0

phase = 0 // 0 = normal, 1 = double, 2 = sisters

move_timer = 0; //used for timing stuff in double or triple attacks

rand_attack = 0; //index of random attack
attack_duration = 10 //duration of duo attack

pause_attack = 0

knight_ids = []

dead_timer = 0 //increments when all mantises are dead

game_end = false

dosa_mode = false
dosa_timer = 0