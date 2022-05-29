//article2_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
depth = 20;
sprite_index = asset_get("empty_sprite");
image_index = 0;


initial_radius = 10;
intermediate_radius = 150; // Held at this radius briefly, like if you tap the button
final_radius = 200;
accrued_time = 0;
time_to_reach_intermediate = 6; // If you adjust this, update min_gravity_time in init.gml
time_to_hold = 2; // How long to hold at intermediate
time_to_reach_final = 8;
max_measured_time = time_to_reach_intermediate + time_to_hold + time_to_reach_final; // Total time to reach max radius
raw_gravity_image_radius = 89;
current_radius = initial_radius;
gravity_image_index = 0;
drawn_radius = current_radius / raw_gravity_image_radius;
gravity_circle_sprite = sprite_get("gravity_circle");
total_sprite_frames = 6;
permanent = false;
h_pull = 0.8;
v_pull = 0.8;