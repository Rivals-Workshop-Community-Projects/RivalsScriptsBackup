//pre_draw
RELOADING_FUCK_SHIT_ABORT_ABORT = false;
print_debug("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
with obj_stage_article {
    if num == 1 {
        if !sprite_exists(sprite_index) other.RELOADING_FUCK_SHIT_ABORT_ABORT = true;
    }
}

if RELOADING_FUCK_SHIT_ABORT_ABORT {
    with obj_stage_article if num != 3 && num != 5 instance_destroy(id);
    with obj_stage_article_platform instance_destroy(id);
    with obj_stage_article_solid instance_destroy(id);
    RELOADING_FUCK_SHIT_ABORT_ABORT = false;
}