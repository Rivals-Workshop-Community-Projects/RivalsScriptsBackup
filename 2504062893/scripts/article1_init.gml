//article1_init

lifespan = 60;
time_alive = 0;
grav = 0;

sprite_index = sprite_get("throwingstar"); //sprite_get("ghost_proj");
image_speed = 1;
mask_index = sprite_get("throwingstar");
//hurtbox_spr = asset_get("empty_sprite");

ignores_walls = true;
ghost_box = create_hitbox(AT_FSPECIAL, 1, x, y);

is_boosted = false;
has_bounced = false;

 state = "active";
 state_timer = 0;