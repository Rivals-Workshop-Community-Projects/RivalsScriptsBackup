sprite_index = sprite_get("platforms");
mask_index = sprite_get("platform_mask");

state = 1;
state_timer = 0;

died = 0;
died_max = 4;

plat_num = spawn_variables[0];
plat_dir = (plat_num % 2) ? 1 : -1;

depth = 29;

crack_img = 0;

all_breaking = false;