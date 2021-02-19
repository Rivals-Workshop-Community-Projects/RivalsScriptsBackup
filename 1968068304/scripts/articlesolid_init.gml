//article_solid_init
//epinel spawns one article_solid instance outside the map and uses it for inertia-status logic.


sprite_index = asset_get("empty_sprite");
mask_index = asset_get("empty_sprite");
visible = false;

can_be_grounded = false;
ignores_walls = true;
free = true;

var sfx;
with (player_id) {
    sfx = sound_get("release");
}
sfx_release = sfx;