objectType = 0;
//0 = crystal, 1 = caltrop

sprite_index = sprite_get("crystalexp_small");
mask_index = sprite_get("crystal_mask");
image_index = 0;

fake_hsp = 0;
fake_vsp = 0;

hb = noone;
obj_timer = 0;
hitbox_lifetime = 10;

should_spawn_hb = 1;

decay_timer = 0;

can_be_grounded = true;
ignores_walls = false;

hasnt_landed = true;

article_mode = 0;

size = 0;
empowered = 0;

hitByOpponent = 0;
canDetonate = 0;

myOutlineColor = get_player_hud_color( player_id.player )

hitbox_hit = noone;
hitAngle = 0;
hitForce = 0;
hitMode = 0;
hitPlayer = noone;
hitAttack = 0;
hitHboxNum = 0;
hitDir = 0;
hit_lockout = 0;
hitPlayer = 0;

onPlat = false;

adventure_timer = 300;

gotParried = 0;
parriedPlayer = noone;
parryTarget = noone;