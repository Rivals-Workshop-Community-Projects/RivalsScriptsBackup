move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_FSPECIAL_AIR] = 0;

with(oPlayer)
{
    if (desirae_timelock) {
        white_flash_timer = 10;
        sound_play(asset_get("sfx_coin_collect"));
        desirae_timelock = false;
        desirae_rewind_state = 0;
        desirae_rewind_spots = 0;
        desirae_time_state = 0;
    }
}

if (nspec_shells > 0) {
    nspec_shells -= 1;
}