// called when the character gets KO'd

sprite_change_offset("hurt", 92, 128);

if (attack == AT_DSTRONG){
    with (hit_player_obj){
        self.hitstop = 0;
    }
}
