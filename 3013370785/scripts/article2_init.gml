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

draw_sprite_index = sprite_get("arrow_proj")
draw_image_index = image_index
draw_image_angle = image_angle
draw_image_angle = draw_image_angle
wiggle_timer = 0

trail_segments = 16
trail_element = [undefined, undefined, 0] //x, y, angle
trail_arr = array_create(trail_segments, trail_element)
trail_index = 0 //incrementing index