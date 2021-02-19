//got_parried - called when an opponent parries your attack



//Dry people off

if (hit_player_obj.soaked && hit_player_obj.soaked_id == id){
    hit_player_obj.unsoak = true;
}



//Restart cooldown if active

if (rain_cooldown > 10){
    //rain_cooldown = 186;
}



//Trigger alternate pratfall and pratland anim

pratanim = true;



//Projectile duration refresh

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    my_hitboxID.hitbox_timer = 1;
}



//Stop movement if dspecial jump cancel

if (my_hitboxID.attack == AT_DSPECIAL || my_hitboxID == AT_DATTACK){
    hsp = clamp(hsp, -1, 1);
}

nerfedpratfall = true;



//Stun clouds

with(asset_get("obj_article1")){
    if (player_id == other.id && !(state == 2 || state == 3)){
        state = 3;
        state_timer = 0;
        stuntime = 300;
    }
}

parried = true;