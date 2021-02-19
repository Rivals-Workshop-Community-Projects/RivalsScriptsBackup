//article3_init.gml

sprite_index = asset_get("empty_sprite");//sprite_get("dspecial_glow");
mask_index = sprite_get("dspecial_platform_hitbox");//sprite_get("dspecial_glow_health");
image_alpha = 0.5;
image_xscale = 0;
image_yscale = 200;

can_be_grounded = false;
ignores_walls = true; 
free = true;

lifetime = 250;
activated = 0;
max_xscale = 1;
collision_poll = 0;
follow_object_id = noone;