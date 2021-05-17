//DEATH

chargeCounter = 0;
hasCharge = -1;
dspecialcharge = 0;
conserveCharge = 0;

with (asset_get("obj_article1")){
    if (player_id == other.id){
        state = 4;
        state_timer = 0;
        player_id.move_cooldown[AT_NSPECIAL] = 45;
    	player_id.move_cooldown[AT_NSPECIAL_2] = 45;
        
    }
}