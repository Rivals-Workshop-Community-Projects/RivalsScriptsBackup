//holy shit!!
sound_stop(dspecial_sfx);
ds_list_destroy(fspecial_stall_particle_array);

ds_map_destroy(name_to_ref_map);
ds_map_destroy(ref_to_name_map);

ds_list_destroy(dspecial_fx_list);
ds_list_destroy(dspecial_fx_list_add);

ds_list_destroy(update_perf);
ds_list_destroy(pre_draw_perf);
ds_list_destroy(attack_update_perf);
ds_list_destroy(animation_perf);

ds_map_destroy(active_runes);