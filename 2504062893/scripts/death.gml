// article1 = throwable ghost projectile
var article1_count = 0;
var article1 = noone;
with(asset_get("obj_article1")){
        if (player_id == other.id){
            article1_count++;
            article1 = id;
        }
    }

if (article1_count > 0){
    with (article1){
        lifespan = 0; // depending on script order, might only work if changed to 1?   
    }
} 

// uspec_cancel_alarm = -1;
// atk_cooldown = 0;

// print("ded")