//base
orig_player = player; // thank you ori :/
medium_spr = sprite_get("poison_mid");
large_spr = sprite_get("poison_big");

is_large = (player_id.fspecial_level >= 3);
is_aerial = player_id.free;
depth = player_id.depth-1;

var i = 1 + is_large;
spr_dir = player_id.spr_dir;
hsp = is_aerial ? player_id.poison_air_hsp[i]*spr_dir : player_id.poison_ground_hsp[i]*spr_dir;
vsp = is_aerial ? player_id.poison_air_vsp[i] : 0;
free = 1;
uses_shader = false;
sprite_index = is_large ? large_spr : medium_spr;
mask_index = sprite_index;
image_index = 0;
max_image = sprite_get_number(sprite_index);
max_active_image = max_image - 3;
anim_speed = max_active_image/player_id.fspecial_lifetime[i];
hbox_rate = player_id.fspecial_hbox_rate[i];

ignores_walls = true;
can_be_grounded = false;

state = 0;
state_timer = 0;
destroyed = false;

was_reflected = false;
reflect_owner = noone;

image_angle = is_aerial ? player_id.poison_air_angle*spr_dir : 0;

var hbox = create_hitbox(AT_FSPECIAL, 3+is_large, x, y);
hbox.hsp = hsp;
hbox.vsp = vsp;
hbox.image_angle = image_angle;
hbox.cloud_obj = self;