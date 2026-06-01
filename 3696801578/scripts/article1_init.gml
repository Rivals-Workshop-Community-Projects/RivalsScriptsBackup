state = PS_IDLE
mask_index = sprite_get("jake_article_mask")
window = 0
window_timer = 0
lock_state = false

grab_opps = []

first_distance_max_threshold = 400;
first_distance_min_threshold = 70

normal_grav = 0.7

grav = normal_grav
max_fall_speed = 30
cached_vsp = 0
cached_hsp = 0

stretch_timer = 0
var state_data = player_id.detached_jake_data[? PS_RESPAWN].state_data
stretch_position = {x:0,  y:0}
stretch_max_timer = state_data[1].length + state_data[2].length

hit_player_obj = noone;

jump_horizontal_speed = 4
primed = false
attacking = false

hitbox = noone

can_be_grounded = true;
ignores_walls = false;
uses_shader=true;

initial_position = {x:x,y:y}
target_position = {x:x, y:y}


stretch_positions = []
current_stretch_position = 0

go_through_walls_timer = 0

hurtbox = instance_create(x,y,"obj_article2")
hurtbox.owner = self

invinc_timer = 30

vertical_attack = false

was_parried = false
attacked = false

cooldown_amounts = {
    attacked : 120,
    hurt : 150,
    parried : 180
}
target_cooldown = 0