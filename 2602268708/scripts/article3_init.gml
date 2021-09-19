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

// yeah
disappear_time_max = 180;
disappear_time = 0;

grab_disabletime_max = 45;
grab_disabletime = 0;

disable_hitboxes = 0;
