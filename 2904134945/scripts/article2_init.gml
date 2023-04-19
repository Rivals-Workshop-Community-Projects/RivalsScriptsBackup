sprite_index = asset_get("empty_sprite");
image_xscale = 0;
image_yscale = 0;
depth = player_id.depth+2;

with (obj_article2) if (other != self && other.player_id == player_id) instance_destroy();