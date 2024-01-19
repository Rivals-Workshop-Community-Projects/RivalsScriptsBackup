// got_hit.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#got-hit-gml
// Called when you get hit

sound_stop(geyser_indicator_sound);

if(hit_player_obj != self){
    if(hit_player_obj.sludged_id != noone){
        if(enemy_hitboxID.type == 1) hit_player_obj.sludge_amount -= round(enemy_hitboxID.damage * (12 - has_rune("M") * 6));
        if(!has_rune("M")){
            hit_player_obj.sludge_decay_lockout = min(hit_player_obj.sludge_decay_lockout, 30);
            if(hit_player_obj.sludge_amount <= 0){
                hit_player_obj.sludge_decay_lockout = 0;
                hit_player_obj.sludge_amount = 0;
                hit_player_obj.sludged_id = noone;
            }
        } else {
            hit_player_obj.sludge_amount = max(hit_player_obj.sludge_amount, 1);
        }
    }
    
    // if(hit_player_obj.diseased_id != noone){
    //     take_damage(player, hit_player_obj.player, max(0, floor(enemy_hitboxID.damage*.3)));
    // }

}

if (state_cat == SC_HITSTUN) sound_stop(sound_get("rhubarb_taunt_v3"))