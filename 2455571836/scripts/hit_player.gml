//if (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_DTILT ||
//my_hitboxID.attack == AT_DSTRONG && my_hitboxID.type == 4 || my_hitboxID.attack == AT_BAIR && my_hitboxID.type == 1 ||
//my_hitboxID.attack == AT_DAIR && my_hitboxID.type == 1 || my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 6/* ||
//my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.type == 1*/){
//    if (!hit_player_obj.glace_Freeze) {
//        sound_play(sound_get("glace_tag")); // replace if using built-in SFX
//    }
//	hit_player_obj.glace_Freeze = true;
//    hit_player_obj.glace_Freeze_ID = id; // optional, but HIGHLY recommended
//	
//	hit_player_obj.glace_Freeze_TIMER = 600;
//}
//
//if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.type == 2){
//	hit_player_obj.glace_Freeze_TIMER = 0;
//	hit_player_obj.glace_Freeze = false;
//}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2 && attack == AT_NSPECIAL){
        has_hit_player = true;
    }