if(ring_out != noone){
    killarticles = true;
}

with (asset_get("pHitBox")){
    if(player_id == other && attack == AT_NSPECIAL_2){
        destroy_fx = 1;
        destroyed = true;
    }
}

if(ring_equipped != -1){
    ring_equipped = -1;
    ring_timer = -1;
    ring_follow = -1;
    hud_close = 4;
}

for(var i = 0; i < 3; i++){
    ring_cd[i] = -1;
    ring_cd_max[i] = ring_time_cd;
}

suppress_hud = false;