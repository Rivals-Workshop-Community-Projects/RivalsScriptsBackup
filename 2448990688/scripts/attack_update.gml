//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//if (attack == AT_NSPECIAL){
//    if (window == 3){
//        if (special_pressed){
//            window = 1;
//            window_timer = 0;
//        }
//    }
//}

//Cooldowns
if (attack == AT_FSPECIAL){
        move_cooldown[AT_FSPECIAL] = 45;
        can_move = true;
        can_wall_jump = true;
    }
if (attack == AT_USPECIAL){
        can_wall_jump = true;
    }
if (attack == AT_NSPECIAL){
        move_cooldown[AT_NSPECIAL] = 25;
    }

//Can Move and Jump
if (attack == AT_FSPECIAL && window > 2 && special_down){
        vsp = -2;
        
    }
//LMAO
/*
if (attack == AT_FSPECIAL && window > 2 && special_down && down_down){
        set_attack(AT_DSPECIAL);
        destroy_hitboxes();
        
    }
*/
if (attack == AT_DSPECIAL && window == 2){
        can_shield = true;
        
    }

//if (attack == AT_NAIR && has_hit){//jump cancel nairs
//        can_jump = true;
//    }
    
//Extra Taunt    
if (attack == AT_TAUNT && down_down){
    set_attack(AT_TAUNT_2);}
    

//Dspecial Laugh
if (attack == AT_DSPECIAL && window == 3 && window_timer == 14){
        sound_play( sound_get( "sfx_amogus" ) );
    }
//Troll Taunt Sfx    
if (attack == AT_TAUNT && window == 2 && window_timer == 1){
        sound_play( sound_get( "sfx_amogus" ) );
    }
    
//SFX for Strongs
if (attack == AT_FSTRONG && window == 1 && window_timer == 18){
        sound_play( asset_get( "sfx_forsburn_consume" ) );
    }    
if (attack == AT_DSTRONG && window == 1 && window_timer == 13){
        sound_play( asset_get( "sfx_forsburn_consume" ) );
    }    
if (attack == AT_USTRONG && window == 1 && window_timer == 17){
        sound_play( asset_get( "sfx_forsburn_consume" ) );
    }    
    
// Deals damage to self:
if (attack == AT_DSPECIAL && window == 4 && window_timer == 1 && !has_hit) {
    set_player_damage( player, clamp(get_player_damage(player)+25, 0 , 999) ); 

    }

//Ledge Snap    
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR && window == 3){
    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED);
    }
    if (window == 3){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 40; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
}
}