//death.gml



//Destroy clouds

with (asset_get("obj_article1")){
    if (player_id == other.id && state == 0){
        shoulddie = true;
    }
}



//Dry people off

with (asset_get("oPlayer")){
    if (soaked && soaked_id == other.id){
        unsoak = true;
    }
}



//Reset cooldown

rain_cooldown = 0;
cooldown_anim = 0;



//Kill clouds

killclouds = true;
shouldreset = true;