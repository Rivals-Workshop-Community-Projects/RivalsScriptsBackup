//article1_init

oPlayer_owner = undefined;

is_pitarticle = true;

destroy_cooldown = 140

sprite_index = asset_get("empty_sprite")

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

timer = 0;
state = PS_SPAWN;
state_timer = 0;
window = 0;
window_timer = 0;

shield_active = false;

shield_spawn_dist = 40;

move_range = 30;

base_hp = 10;

hp = base_hp;

spr_indicator = sprite_get("indicator")
spr_spawn = sprite_get("orbitars_spawn")
spr_spawn_white = sprite_get("orbitars_spawn_white")
spr_idle = sprite_get("orbitars_idle")
spr_attack = sprite_get("orbitars_attack")
spr_shield = sprite_get("orbitars_shield")
spr_shield_outline = sprite_get("orbitars_shield_outline")
spr_shield_break = sprite_get("orbitars_break")

depth = -4