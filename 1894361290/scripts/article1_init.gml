//article1_init

//is_hittable = true

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("wt_mask")
image_index = 0;

honk_sfx = undefined;
harmonica_sfx = sound_get("harmonica_wt")

shockwave_large_vfx = hit_fx_create(sprite_get("shockwave_large"), 24);
shockwave_small_vfx = hit_fx_create(sprite_get("shockwave_small"), 18);
sparks_vfx = hit_fx_create(sprite_get("wt_sparks"), 16);
sparks_small_vfx = hit_fx_create(sprite_get("wt_sparks_small"), 16);

timer = 0;
near_player = false; //true if player is in range to be pickd up by dspecial;

disabled_timer = 0;

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

unbashable = 0;

land_sound = true;

old_hsp = undefined
old_vsp = undefined

hit_lockout = 0