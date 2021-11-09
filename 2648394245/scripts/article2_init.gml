sprite_change_offset("spotlight", 64, 32);
sprite_index = sprite_get("spotlight");
exist_timer = 0;
base_angle = lerp(-20, 20, (x % 7) / 6);
turn_period = lerp(40, 70, (x % 9) / 8);
depth = 31;

parallax_x = -.45;
parallax_y = -.45;