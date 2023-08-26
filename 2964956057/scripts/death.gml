flowey_saves_used = flowey_saves_max;
flowey_grapples_used = 0;
move_cooldown[AT_USPECIAL] = flowey_savecooldown + 1;

sound_play(sound_get("death"));
if instance_exists(flowey_save){
    instance_destroy(flowey_save);
}