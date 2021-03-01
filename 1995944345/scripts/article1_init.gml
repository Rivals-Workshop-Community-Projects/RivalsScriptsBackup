//article1_init
sprite_index = sprite_get("nodeidle");
mask_index = sprite_get("nodemask");

anim_speed = 0.15

damage = 0;


damagetick = 0;
damagelim = 20;
cloud = array_create(3, noone);

state = -1;
state_timer = 0;

grav = 0.25

damagemin = get_player_damage(player_id.player);

old_damage = damagemin;

can_be_grounded = 1;
ignores_walls = 0;
ignored_damage = 0;

transferred = 0;

old_player_id = player_id

init = 1;
