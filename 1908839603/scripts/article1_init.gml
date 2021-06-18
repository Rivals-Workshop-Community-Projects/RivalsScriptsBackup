//
mode = 2+spawn_variables[0];

time = 300;

if spawn_variables[0] = 0 {
mask_index = sprite_get("delta_plat_mask");
sprite_index = sprite_get("delta_plat");
} else {
mask_index = sprite_get("delta_plat_mask");
sprite_index = sprite_get("delta_plat");
}

dest = y;

angle = 0;