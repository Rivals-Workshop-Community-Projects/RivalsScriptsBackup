//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer == 1 && block_ammo < 3 && !hitpause){        //Creates a block for each different slot
        lighting = false;
        if (block_ammo == 0){
            block_despawn = false;
            block1 = instance_create(x, y, "obj_article_platform");
            block1.number = 1;
        }
        if (block_ammo == 1){
            block2 = instance_create(x, y, "obj_article_platform");
            block2.number = 2;
        }
        if (block_ammo == 2){
            block3 = instance_create(x, y, "obj_article_platform"); 
            block3.number = 3;
        }
        
        block_ammo++;
        block_ammo_full++;
    }
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 15;
    if (window == 1 && window_timer == 1 && free && !hitpause && vsp >= 0){  //If in the air, jump up a bit
        vsp = -6;
    }
    if (window == 1 && window_timer == 1 && butterfly != noone){   //Destroys the previous butterfly
        butterfly.state = 9;
        butterfly.state_timer = 0;
        butterfly = noone;
    }
    if (window == 2 && window_timer == 1){      //Creates the butterfly
        lighting = false;
        butterfly = instance_create(x+20*spr_dir, y-30, "obj_article1");
    }

}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1 && free){      //Jumps up when in the air
        vsp = -9;
    }
    if (window == 2 && window_timer == 1 && butterfly == noone && !hitpause){  //Spawns the butterfly
        lighting = false;
        butterfly = instance_create(x, y-30, "obj_article1");
        butterfly.state = 1;
        butterfly.state_timer = 0;
    }

}

if (attack == AT_USPECIAL_2 && window == 1){
    if (window_timer < 20 && shield_pressed){   //Cancel the teleport with Parry
        vsp = -9;
        hsp = 6*spr_dir;
        state = PS_PRATFALL;
    }
    if (window_timer == 20){        //Changes the animation on the butterfly
        lighting = false;
        butterfly.state = 4;
        butterfly.image_index = 0;
    }
    if (window_timer == 29){        //Teleports to the butterfly location
        x = butterfly.x + 7*spr_dir;
        y = butterfly.y + 15;
        
    }
}

if (attack == AT_DSPECIAL){
    if (window == 3 && window_timer == 1){  //Activates the hazards
        lighting = true;
    }
    if (window >= 2 && window != 4){    //Grants super armor
        super_armor = true;
    }
    if (window == 4){       //Loses Super Armor
        super_armor = false;
    }
}


//if (attack == AT_NAIR){
//    if (window == 2){
//        if (window_timer < 5){
//            if (!hitstop && !hitpause && !was_parried){
//                vsp = -3;
//               
//            }
//        }
//    }
//}
if (attack == AT_UAIR){
    if (window == 6){
        if (window_timer < 5){
            if (!hitstop && !hitpause && !was_parried){
                vsp = -3;
               
            }
        }
    }
}
if (attack == AT_NSPECIAL){
    if (window == 1){
        if (window_timer < 5){
            if (!hitstop && !hitpause && !was_parried){
                vsp = -10;
               
            }
        }
    }
}


// if (attack == AT_FSTRONG){
//     if (window == 3)

//  off_ledge = false;
    
// }



//dair bounce
if (attack == AT_DAIR){
    if (window == 2){
        if  has_hit && hitpause && !fast_falling{
            can_move = true;
            old_vsp = -4;
        }
        
    }
}


//bair hitfall hit 1 prevention
if(attack == AT_BAIR){
    if(window == 2 && hitpause){
        can_fast_fall = false;
    }
}


////dattack jump cancel
//if (window == 3 && has_hit_player && attack = AT_DATTACK) {
//    can_jump = true;
//}
//if (window == 2 && has_hit_player && attack = AT_DATTACK) {
//    can_jump = true;
//   
//}

//if (window == 2 && has_hit_player && attack = AT_UTILT) {
//    can_jump = true;
//}


//dair jump cancel
// if (window == 2 && has_hit_player && attack == AT_DAIR) {
//     can_jump = true;
// }
// if (attack == AT_DAIR){
//     can_fast_fall = true;
// }

if(attack == AT_FSTRONG){
    can_wall_jump = false;
    if(free){
        set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
        set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 18);
    } else {
        set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
        set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 6);
    }
    if(window == 1 || window > 4){
        set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
        set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
    }
    if(window == 2){
        set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
        set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
    }
    if(window > 2 && window < 5){
        set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
        set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
    }
    if(window == 5){
        can_fast_fall = true;
        if(window_timer == 1){
            if(free){
                set_num_hitboxes(AT_FSTRONG, 4);
            } else {
                set_num_hitboxes(AT_FSTRONG, 2);
            }
        }
        if(!free && window_timer > 6){
            destroy_hitboxes();
        }
        if(hitpause){
            has_hit = false;
            has_hit_player = false;
        }
    } else {
        can_fast_fall = false;
    }
}

if (attack == AT_TAUNT)
{
 set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get ("eid_taunt"));
 suppress_stage_music( 0.01, 0.05 );   
}


