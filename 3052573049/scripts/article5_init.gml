//regular star
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("star");

//more variables
timer = 0;
depth = 10;

//spawn hfx on spawn
spawn_hit_fx(x, y, 144);

//delay before players can pick up the star
time_before_grabbable = 60;