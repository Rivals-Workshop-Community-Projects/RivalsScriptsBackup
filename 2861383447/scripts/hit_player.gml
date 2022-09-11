// code for kamehameha

// if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1{
// create_hitbox( attack, 2, my_hitboxID.x, my_hitboxID.y );
// }





// if !(instance_exists( field_obj )){
// elec_charge += my_hitboxID.damage * 1.25;
// elec_charge = (elec_charge > 100) ? 100 : elec_charge;
// }

hit_player_obj.witch_hit = false;

if (my_hitboxID.effect == 11) &&
(attack != AT_USPECIAL &&
attack != AT_FSPECIAL &&
attack != AT_DSPECIAL &&
attack != AT_NSPECIAL)
{
    switch (attack){

    case AT_FTILT:
    case AT_DTILT:
    case AT_FAIR:
    case AT_NAIR:
    
        hit_player_obj.hitstop *= elecstun_mult_strong;
        hit_player_obj.hitstop_full *= elecstun_mult_strong;
        hit_player_obj.chaos_curse_timer = 6 *60;

    break;

    case AT_FSTRONG_2:
    case AT_USTRONG_2:
    case AT_FSTRONG:
    case AT_USTRONG:
    case AT_DSTRONG:
    case AT_JAB:
    case AT_DAIR:

        hit_player_obj.hitstop *= elecstun_mult_weak;
        hit_player_obj.hitstop_full *= elecstun_mult_weak;
        hit_player_obj.chaos_curse_timer = 6 *60;
    break;

    }
}

if (tekken_mode)
{
    hit_player_obj.hitstop = 0;
    hit_player_obj.hitstop_full = 0;
    hitstop = 0;
    hitstop_full = 0;
    
    if (my_hitboxID.effect == 11)
    {
    hit_player_obj.hitstun *= 2;
    hit_player_obj.hitstun_full *= 2;
    }
    

    
    
}



switch (attack){

case AT_EXTRA_2:
    hit_player_obj.tk_screw = true;
    break;

case AT_FSTRONG_2:
    if (ewgf && abs(hit_player_obj.y - y) < 6 ){
        hit_player_obj.y -= 6;
    }
case AT_JAB:
    if (my_hitboxID.hbox_num < 3){
        is_safe = true;
    }

    break;

case AT_FAIR:

    if (my_hitboxID.hbox_num == 1 && !fast_falling)
    old_vsp = -5;
    old_hsp = 3 * spr_dir;

    if (my_hitboxID.hbox_num == 2)
        is_safe = true;

    break;
    
case AT_DSTRONG:
    if (my_hitboxID.hbox_num == 2){
        hit_player_obj.bound = true;
        hit_player_obj.bound_timer = 6;
    }
    break;

case AT_FSPECIAL_2:

    old_hsp = -2 * spr_dir;
    old_vsp = - 5;
        
    window = 3;
    window_timer = 9;

break;
}



if (!is_nana){



//sai M

    if (ink_ring_v = 1 && ink_ring_h = 1 && ink_ring_n = 1) && (my_hitboxID.effect != 11) && trigger_all_hit{
        all_hit = 30;

        var target_middle = round((hit_player_obj.hurtboxID.bbox_top + hit_player_obj.hurtboxID.bbox_bottom)/2);

        turpix = instance_create(hit_player_obj.x,target_middle,"obj_article3");

        turpix.spr_dir = my_hitboxID.spr_dir;
        turpix.target = hit_player_obj;
        turpix.target_x = hit_player_obj.x;
        turpix.target_y = hit_player_obj.y;

        turpix.last_hit_angle = my_hitboxID.kb_angle;
        turpix.last_hit_kb =    my_hitboxID.kb_value;
        turpix.last_hit_kbg =   my_hitboxID.kb_scale;

        ink_ring_v = 0;
        ink_ring_h = 0;
        ink_ring_n = 0;

        if !(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
        cinematic = 30;

        set_state(PS_IDLE);

        old_hsp = -6 * (spr_dir);

        old_vsp = -5;
        hitpause = true;
        hitstop = 10;
        }
    }

    if (all_hit == 0){
            switch (my_hitboxID.attack){

            case AT_FTILT:
            case AT_FAIR:
            case AT_BAIR:
            case AT_FSTRONG:
            case AT_FSPECIAL:
            case AT_DATTACK:
            case AT_FSTRONG_2:
            case AT_DSTRONG_2:
            case AT_USTRONG_2:

                if (ink_ring_h = 0)
                ink_ring_h_flash = 30;

                ink_ring_h = 1;

            break;


            case AT_JAB:
            case AT_NAIR:
            case AT_NSPECIAL:
            case AT_DSPECIAL:

            if !(AT_DSPECIAL && my_hitboxID.hbox_num > 1){
                if (ink_ring_n = 0)
                ink_ring_n_flash = 30;

                ink_ring_n = 1;
            }


            break;

            case AT_UTILT:
            case AT_UAIR:
            case AT_USTRONG:
            case AT_USPECIAL:
            case AT_DTILT:
            case AT_DAIR:
            case AT_DSTRONG:

                if (ink_ring_v = 0)
                ink_ring_v_flash = 30;

                ink_ring_v = 1;
            break;

            default:



            break;

            }

        }


//baseball
        if (!is_safe){
            if (base_cd == 0){
                
                bases++;
                if (bases > 3){
                    bases = 3;

                    if (runs < 55)
                    runs++;
                    
                    if (runs == 10)
                    sound_play(sound_get("se_rage"));
                }

            }
            base_cd = 10;
        }
        else if (is_safe){
            balls++;
            if (balls > 3){
                balls = 0;
                if (bases != 3)
                bases++;
                if (bases = 3)
                runs++;
            }
        }
















}else{


        if (!is_safe){
            if (base_cd == 0){
                
                popo.bases++;
                if (popo.bases > 3){
                    popo.bases = 3;

                    if (popo.runs < 55)
                    popo.runs++;
                    
                }

            }
            popo.base_cd = 10;
        }
        else if (is_safe){
            popo.balls++;
            if (popo.balls > 3){
                popo.balls = 0;

                if (popo.bases != 3)
                popo.bases++;
                if (bases = 3)
                popo.runs++;
            }
        }

}




if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
    shake_camera( 15, 10 );
    bullet_hit = true;
    hit_player_obj.chaos_curse_timer -= 45;
    crosshair.aiming_cd = 30;
}

if (my_hitboxID.attack == 46 && my_hitboxID.evidence == 6){
my_hitboxID.galaga_lockout = 20;
my_hitboxID.hit_count++
}