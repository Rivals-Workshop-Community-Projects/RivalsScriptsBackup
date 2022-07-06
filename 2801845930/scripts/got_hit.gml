// called when hit

// NSpecial Sounds

if (hit_player == player && enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.hbox_num >= 2) {
    if (SpamNeoPipisSound == false) {
        sound_play(asset_get("sfx_zetter_upb_hit"));
        SpamNeoPipisSound = true;
    }
}

if (enemy_hitboxID.type != 2 || (enemy_hitboxID.plasma_safe == true && enemy_hitboxID.damage > 3 && enemy_hitboxID.effect != 9)) {
    
    if (hit_player_obj.SpamNeoStringCharge > 0 && hit_player_obj.SpamNeoStringMultiCooldown <= 0) {
            hit_player.SpamNeoStringMultiCooldown = 20;
            print_debug("e");
            if (hit_player_obj.SpamNeoStringCharge < 3) {
                
                hit_player_obj.SpamNeoStringCharge -= 1;
                
            } else {
                
                hit_player_obj.SpamNeoStringCharge -= 1;
                hit_player_obj.SpamNeoString = false;
                hit_player_obj.SpamNeoStringStop = true;
                hit_player_obj.SpamNeoStringStopTimer = 0;
                
            }
    } else if (hit_player_obj.SpamNeoString == true && hit_player_obj.SpamNeoString < 5) {
        hit_player_obj.SpamNeoStringMultiCooldown = 5;
    }
}
