turbine_cont = 0;
whirlwind_cooldown = 90;

//Resets the Whirlwind Effect
whirlwind_player.whirlwind_effect = false;
whirlwind_punch_active = false;
whirlwind_punch_effect = false;

//Destroys the hitbox of the Whirlwind
with (asset_get("pHitBox")){
    if (attack == AT_DSPECIAL && hbox_num == 1){
        destroyed = true;
    }
    if (attack == AT_DSPECIAL && hbox_num == 10){
        destroyed = true;
    }
}

//Destroys the Whirlwind
whirlwind.state_timer = -30; 
whirlwind2.state_timer = -30; 

if(attack == AT_FSPECIAL && hbox == 6){
   was_parried = true;
}


