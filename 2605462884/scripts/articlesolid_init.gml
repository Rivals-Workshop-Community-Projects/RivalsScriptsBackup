//articlesolid_init - solid

init = 0;
sprite_index = sprite_get("solid");
mask_index = asset_get("empty_sprite");
image_alpha = 1;
image_xscale = 2;
image_yscale = 2;

image_index = get_player_color( player_id.player );
//image_index = player_id.solid_img;

depth = 1;
moved = false;
not_recover = false;

state_timer = 0;
state_end = 180;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;