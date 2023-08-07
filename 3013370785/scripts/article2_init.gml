//article2_init

//arrows

timer = 0

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

collision_timer = 0

hbox_has_hit = false
hbox_hit_id = undefined //hit player id

state = 0
state_timer = 0

destroy = false

sprite_index = asset_get("empty_sprite")
mask_index = sprite_get("arrow_hurt")
depth = -10
image_index = 1

draw_sprite_index = sprite_get("arrow_proj")
draw_image_index = image_index
draw_image_angle = image_angle
temp_image_angle = draw_image_angle
wiggle_timer = 0

trail_segments = 16
trail_element = [undefined, undefined, 0] //x, y, angle
trail_arr = array_create(trail_segments, trail_element)
trail_index = 0 //incrementing index


//initialise recall stuff
recall_array = []
recall_timer = 0
recall_active = false
recall_increment = 5 //number of frames betwen saves
recall_delay = 0
recall_timer_max = 100

recall_prev_x = x
recall_prev_y = y

recall_prev_hsp = hsp
recall_prev_vsp = vsp

draw_sprite_index = sprite_index
fake_angle = 0 //fake rotation angle

recall_cooldown = 0

y_offset = 0