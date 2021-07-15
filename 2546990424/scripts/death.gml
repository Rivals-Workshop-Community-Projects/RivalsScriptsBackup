//Destroys the Whirlwind hitbox
with (asset_get("pHitBox")){
    if (attack == AT_DSPECIAL && hbox_num == 1){
        destroyed = true;
    }
    if (attack == AT_DSPECIAL && hbox_num == 10){
        destroyed = true;
    }
}

//Released the grabbed player and sends them up a bit
if (cargo_grab == true && grab_timer >= 0){
    hit_player_obj.y = y-60;
}

//Resets all varaibles
cargo_hit_right = false;
cargo_hit_left = false;
cargo_grab = false;
turbine_cont = 0;
whirlwind.state_timer = -30; 
whirlwind2.state_timer = -30; 



