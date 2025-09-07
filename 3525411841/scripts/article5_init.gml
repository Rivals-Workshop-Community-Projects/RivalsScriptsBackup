// Article 5 -- Grid Marker
sprite_index = sprite_get("solid_hitbox");
depth = 1000;
queued_destruction = false;
grid_x = 0;
grid_y = 0;
owned_by = -1;
if (object_index == obj_stage_article_platform)
{
    //print_debug("switched to platform");
    //sprite_index = sprite_get("platform_hitbox");
}
