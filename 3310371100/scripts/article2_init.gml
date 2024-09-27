//article2 init

init = 0;
sprite_index = asset_get("empty_sprite");
//sprite_index = sprite_get("detectorhb");
mask_index = sprite_get("detectorhb"); //hopefully this works

image_xscale = 200;
image_yscale = 1;
image_alpha = 0;
//image_alpha = 1;

timer = 0;

discarded = false;

free = true;
can_be_grounded = false;
ignores_walls = true;
uses_shader = false;