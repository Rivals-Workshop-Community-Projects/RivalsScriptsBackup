if(get_player_stocks(player) != 1){
    if(instance_exists(doge)){
        if(doge.player == doge.player_id.player)doge.destroyed = true;
    }
    if(instance_exists(shrek_door)){
        if(shrek_door.player == shrek_door.player_id.player)shrek_door.destroyed = true;
    }
    if(instance_exists(dat_boi)){
       if(dat_boi.player == dat_boi.player_id.player)dat_boi.destroyed = true;
    }
}
curspd_override = false;
need_to_reload = false;
respawnplat = 1;

move_cooldown[AT_USPECIAL] = 0;upb = false;sanic_uspec_count=0;dspec_stall = false;
nspec_stall = false;
move_cooldown[AT_FSPECIAL] = 0;

sound_stop(airhorn_sfx)
if(!trigger_warning){
    if(alt == 15){sound_play(sound_get("help"));return;}
    sound_play(sound_get("sad_airhorn"))
}