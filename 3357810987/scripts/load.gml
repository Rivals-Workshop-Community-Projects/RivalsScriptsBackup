//Sprites
sprite_change_offset("relics", 7, 15);
sprite_change_offset("relics_coll",7, 15);

sprite_change_offset("nspecial_proj", 36, 12);
sprite_change_offset("nspecial_proj_start", 28, 26);
sprite_change_offset("fx_nspecial", 28, 26);
sprite_change_offset("fx_nspecial_trail", 36, 12);
sprite_change_offset("fx_nspecial_destroy", 50, 48);

sprite_change_offset("fx_dspecial_sparks", 3, 3);

fx_nspecial = hit_fx_create(sprite_get("fx_nspecial"), 10);
fx_nspecial_trail = hit_fx_create(sprite_get("fx_nspecial_trail"), 15);
fx_nspecial_destroy = hit_fx_create(sprite_get("fx_nspecial_destroy"), 30);

sfx_hellfire_hit = sound_get("sfx_hellfire_hit");

sprite_change_offset("fx_mist_cloud", 42, 42);
sprite_change_offset("fx_mist_cloud_hit", 66, 22);
sprite_change_offset("fx_bat", 7, 7);
sprite_change_offset("fx_bat_small", 5, 5);

sprite_change_offset("gradient", 0, 200);

sprite_change_offset("drac_idle", 13, 41);

sprite_change_offset("fx_glass_part1", 5, 5);
sprite_change_offset("fx_glass_part2", 4, 4);
sprite_change_offset("fx_glass_part3", 1, 1);
sprite_change_offset("fx_blood_hit1", 40, 32);
sprite_change_offset("goblet", 4, 22);

fx_blood_hit1 = hit_fx_create(sprite_get("fx_blood_hit1"), 12);
fx_glass_part = [hit_fx_create(sprite_get("fx_glass_part1"), 25), hit_fx_create(sprite_get("fx_glass_part2"), 20), hit_fx_create(sprite_get("fx_glass_part3"), 15)];


//Extra random music
music = (random_func(5, 8, true));
mus = 10;
//print_debug(string(music));
final_stock = false;
final_stock_cont = -1;