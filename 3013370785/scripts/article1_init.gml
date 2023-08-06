//article1_init

is_hittable = true
old_hsp = 0
old_vsp = 0

totk_item = true

timer = 0

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

is_link_plat = false
//is_ascend_plat = false //true when a link tries to ascend into it

ascend_timer = 0

state = 0
state_timer = 0

temp_mask = asset_get("empty_sprite")

die = false
die_timer = 0

destroy = false

sprite_index = asset_get("empty_sprite")
mask_index = asset_get("empty_sprite")

//recall stuff
script = 0
user_event(0)

y_offset = 0 //offset for centre of item, used for draw stuff

prev_vsp = 0

player_id.fuse_item = 0