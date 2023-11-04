blook_record = 0;
dspecial_used = false;
fspecial_used = false;
fspecial_usage_cooldown = 0
dspecial_placement_cooldown = 0;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;

if (instance_exists(record_player_obj)){
    spawn_hit_fx(record_player_obj.x, record_player_obj.y, table_destroyed_vfx)
    instance_destroy(record_player_obj)
}