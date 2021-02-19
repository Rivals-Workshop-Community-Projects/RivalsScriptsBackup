//crash prevention

if (attack == AT_NSPECIAL){ 
    if (hbox_num == 7){
        if (hitbox_timer >= 71 && player == orig_player){
            sprite_index = sprite_get("proj_fireball_die") //death animation for fireballs so they don't just blip out of existence
        }
    }
}



if (attack == AT_USPECIAL){
    if (hbox_num == 5){
        if (free == false){
            destroyed = true; //destroys these projectiles if they touch the ground
        }
    }
    
    if (hbox_num == 6){
        if (free == false){
            destroyed = true;
        }
    }
}