/*
 * Articles					Depths			Notes
 * - 1: Ground				27				Handles the main logic
 * - 2: Ground side			26, 25
 * - 3: Platform			28
 * - 4: Combo Number		-10				
 * - 5: Bridge				28
 * - 6: Wall				27
 * - 7: Screen				29, -19			Changes depth when phone is active
 * - 8: Grid				29, 30
 * - 9: Gearbox				25, -20			Also draws the stage layout preview; changes depth when active
 *
 */



// TODO: update depths; stage objs 25-30 



sprite_change_offset("ground_1", 254, 16);
sprite_change_offset("ground_2", 350, 16);
sprite_change_offset("ground_sides", 2, 98);
sprite_change_offset("ground_sides_mask", 2, 98);
sprite_change_offset("ground_sides_mask_r", 138 + 48, 98);
sprite_change_offset("platforms", 16, 0);
sprite_change_offset("platform_beams", 20, 34);
sprite_change_offset("platform_mask", 8, 0);
sprite_change_offset("wall_mask", 640, 0);
sprite_change_offset("wall_mask_r", 32, 0);
sprite_change_offset("bridge_mask", 392, 0);
sprite_change_offset("bridge_mask_r", 392, 0);

sprite_change_offset("gearbox", 36, 10);
sprite_change_offset("grid", 640, 544);

sprite_change_offset("big_screen", -28, -4);
sprite_change_offset("small_screen", 96, 0);
sprite_change_offset("select_arrow", 5, 0);