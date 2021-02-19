// set attack

has_hit_player_article = false;
hit_player_article_obj = noone;
my_hitboxID_player_article = noone;

switch(attack){
    case AT_UAIR: // set up Uair variable
        finishUair = false;
    case AT_BAIR:
    case AT_FAIR:
        doStrong = true;
    case AT_UTILT:
    case AT_FTILT:
        doAttack = true;
        break;
    case AT_DSPECIAL: // change to batitless dspecial
        if(batitDelay > 0){
            attack = AT_DSPECIAL_AIR;
            attack_end();
            if (free){
                reset_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE_FLIPPER);
            } else{
                set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 8);
                if(move_cooldown[AT_DSPECIAL_AIR] <= 0){
                    vsp = -short_hop_speed;
                }
            }
        }
        break;
    case AT_USPECIAL: // change to batitless uspecial
        if(batitDelay > 0 && !runeJ){
            if(dontSwitchToUspecial){
                dontSwitchToUspecial = false;
                window = 3;
            } else {
                attack = AT_USPECIAL_2;
                clear_button_buffer(PC_SPECIAL_PRESSED);
            }
        }
        break;
    case AT_FSPECIAL: // change to batitfull fspecial (this is reversed because batitless was made first)
        if(batitDelay < 1){
            attack = AT_FSPECIAL_2;
        }
        opponentHitOutOfGrab = false;
        grabbedArticleId = noone;
        grabbedid = noone;
        break;
    case AT_NSPECIAL: // nspecial batit projectile
        if (batitDelay > 0 && (move_cooldown[AT_NSPECIAL] < 1 || runeE)){
            if(batitPlaced){
                with batitArticle{
                    switch(state){
                        case 3:
                            if(bumpBox != noone){
                                bumpBox.length = 0;
                                bumpBox = noone;
                            }
                        case 0:
                            state = 9;
                            state_timer = 0;
                            other.move_cooldown[AT_NSPECIAL] = other.BATIT_NSPECIAL_COOLDOWN;
                            break;
                        case 1:
                        case 7:
                        case 9:
                        case 10:
                        case 11:
                            if(other.runeN){
                                state = 9;
                                other.move_cooldown[AT_NSPECIAL] = other.BATIT_NSPECIAL_COOLDOWN;
                                state_timer = 0;
                            } else {
                                other.move_cooldown[AT_NSPECIAL] = 2;
                            }
                            break;
                        default:
                            other.move_cooldown[AT_NSPECIAL] = 2;
                    }
                }
            } else move_cooldown[AT_NSPECIAL] = 2;
        }
        break;
    case AT_FSTRONG: // batit fstrong
        if (batitDelay > 0 && !runeA){
            attack = AT_FSTRONG_2;
            doStrong = true;
        }
        doStrong = true;
        break;
    case AT_USTRONG: // batit ustrong
        if (batitDelay > 0 && !runeB){
            attack = AT_USTRONG_2;
            doStrong = true;
        }
        doStrong = true;
        break;
    case AT_DSTRONG:
        prevSprDir = spr_dir;
        break;
    case AT_TAUNT: //reverse compatibility taunts
        if(compatibleUrl && down_down){
            attack = AT_EXTRA_1;
        } else if(batitDelay > 0){
            attack = AT_TAUNT_2;
        }
        if(practiceMode){
            sound_stop(sound_get("tauntMono"));
            sound_stop(asset_get("sfx_orca_shake_water"));
        }
        break;
}