ds_list_destroy(particles);

with (oPlayer) {
    if ds_list_valid(roke_mark_id) ds_list_destroy(roke_mark_id);
    if ds_list_valid(roke_mark_anim) ds_list_destroy(roke_mark_anim);
}
print_debug("successfully unloaded rokesha have nice day");