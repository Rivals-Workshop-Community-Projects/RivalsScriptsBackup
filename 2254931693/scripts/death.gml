// called when the character gets KO'd

sprite_change_offset("hurt", 92, 128);

if (attack == AT_FSPECIAL && hit_player_obj.hitstop > 0){
    with (hit_player_obj){
        self.hitstop = 0;
    }
}

if (frog_deathtimer > -1){
    frog_deathtimer = 1;
}

sound_stop(asset_get("sfx_death1"));
sound_stop(asset_get("sfx_death2"));
sound_play( sound_get( "brawl_death" ) );