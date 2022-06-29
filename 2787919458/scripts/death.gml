sound_stop(airhorn_sfx)
if(!trigger_warning)
    sound_play(sound_get("sad_airhorn"))

if(get_player_stocks(player) != 1){
    if(instance_exists(doge)){
        doge.destroyed = true;
    }
    if(instance_exists(shrek_door)){
        shrek_door.destroyed = true;
    }
    if(instance_exists(dat_boi)){
        dat_boi.destroyed = true;
    }
}
curspd_override = false;
need_to_reload = false;
respawnplat = 1;

move_cooldown[AT_USPECIAL] = 0;upb = false;sanic_uspec_count=0;dspec_stall = false;
nspec_stall = false;
move_cooldown[AT_FSPECIAL] = 0;