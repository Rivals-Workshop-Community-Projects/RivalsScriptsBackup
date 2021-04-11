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

if (attack == AT_FSPECIAL && window == 2){
        can_move = true;
    }


if (attack == AT_NAIR && has_hit){
        can_jump = true;
    }
    
//Extra Taunt    
if (attack == AT_TAUNT && down_down){
    set_attack(AT_TAUNT_2);}
    

//Dspecial Laugh
if (attack == AT_DSPECIAL && window == 3 && window_timer == 18){
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
if (attack == AT_USTRONG && window == 1 && window_timer == 23){
        sound_play( asset_get( "sfx_forsburn_consume" ) );
    }    