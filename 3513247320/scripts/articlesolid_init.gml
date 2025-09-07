sprite_index = sprite_get("dspecial_rock");
mask_index = asset_get("empty_sprite");

uses_shader = false;

can_be_grounded = true;
ignores_walls = false;
is_hittable = true;

old_hsp = 0;
old_vsp = 0;
grav = 0.4;
max_fall = 10;
landed = false;

hp = 30;
max_hp = hp;
rock_damage_alpha = 0;

rock_hitbox = noone;
// rock_hitbox_player = 0;

for (var h = 0; h < 20; h++;) attack_hits[h] = true;
launcher = orig_player_id.player;

hittable_hitpause_mult = .5;