//CALLED WHEN PARRIED

chargeCounter = 0;
hasCharge = -1;
chargeSpent = 0;
conserveCharge = 0;

if (my_hitboxID.attack == AT_DAIR){
    with (asset_get("obj_article3")){
        if (player_id == other.id){
            state = 1;
            state_timer = 0;
            vsp = 0;
            proj_speed = 0;
        }
    }
} 


if (my_hitboxID.attack == AT_FSPECIAL){ //if Fira is parried, send it in the opposite direction shot.
    with(asset_get("pHitBox")){
        fira_vspeed *= -1;
        image_angle -= 180;
        image_yscale = -1;
        
    }
}

with (asset_get("obj_article1")){
    if (player_id == other.id){
        state = 4;
        state_timer = 0;
        player_id.move_cooldown[AT_NSPECIAL] = 45;
    	player_id.move_cooldown[AT_NSPECIAL_2] = 45;
        
    }
}