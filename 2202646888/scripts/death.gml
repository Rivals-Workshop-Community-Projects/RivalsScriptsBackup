//death
if (has_rune("O")){
    if (custom_clone){
        with (oPlayer){
            if (player == other.owner_player){
                if (!custom_clone){
                    eggdog_count--;
                }
            }
        }
    }
}