//got_hit - called when you're hit by a hitbox



//Restart cooldown if active (unused)

/*if (rain_cooldown > cooldown_min){
    rain_cooldown = cooldown_max;
}*/



//Unsoak the enemy that hit you, unless it's a projectile

if (enemy_hitboxID.type == 1 && hit_player_obj.soaked && hit_player_obj.soaked_id == id && hit_player_obj.soaked_firsthit){
    if hit_player_obj.halfunsoaked{
        hit_player_obj.unsoak = true;
    }
    else{
        hit_player_obj.halfunsoaked = true;
    }
    hit_player_obj.soaked_firsthit = false;
}



//Make cloud no rain

with(asset_get("obj_article1")){
    if (player_id == other.id && state == 9){
        state = 2;
        state_timer = 0;
    }
}