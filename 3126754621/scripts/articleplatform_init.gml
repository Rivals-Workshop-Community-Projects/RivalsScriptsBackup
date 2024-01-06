//articleplatform_init
//wing

is_ascend_plat = false

vfx_energy = hit_fx_create(sprite_get("vfx_energy"), 24);

timer = 0
fake_hsp = 0
fake_vsp = 0

still_timer = 0
die = false

wing_hitbox = undefined

sprite_index = sprite_get("wing")
image_index = 0
mask_index = sprite_get("wing_mask")

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = 0
state_timer = 0
travel_spd = 0

//recall
script = 0
user_event(0)