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

