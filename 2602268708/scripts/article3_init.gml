// sprites
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("uspecial_articlemask");
uses_shader = true;

// other stuff
free = player_id.free;
ignores_walls = false;
grav_speed = .6;
ground_frict = 1.2;
cannon_dir = player_id.cannon_dir;
can_be_grounded = true;
landed = 0;

// yeah
disappear_time_max = 180;
disappear_time = 0;

grab_disabletime_max = 45;
grab_disabletime = 0;

disable_hitboxes = 0;

with (player_id) {
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
}