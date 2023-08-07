//articleplatform_init
totk_item = true
max_lifetime = 300

timer = 0

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

real_hsp = 0
real_vsp = 0

is_link_plat = true
is_ascend_plat = false //true when a link tries to ascend into it

ascend_timer = 0

state = 0
state_timer = 0

temp_mask = asset_get("empty_sprite")

die = false
die_timer = 0

destroy = false

sprite_index = asset_get("empty_sprite")

//recall stuff
script = 0
user_event(0)

y_offset = 0 //offset for centre of item, used for draw stuff

player_id.fuse_item = 0