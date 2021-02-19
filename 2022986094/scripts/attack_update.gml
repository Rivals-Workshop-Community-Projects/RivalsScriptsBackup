//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL && window == 1 && window_timer <= 3){ //>
	trigger_b_reverse();
}
if (attack == AT_USPECIAL){
	if (window == 9 && free == false){
		prat_land_time = 10000000;
	}
	can_fast_fall = true;

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
    }
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    if (attack == AT_FSPECIAL_AIR && window < 3 && !free){
        attack = AT_FSPECIAL;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    if (attack == AT_FSPECIAL && window < 3 && free){
        attack = AT_FSPECIAL_AIR;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }

    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        reset_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED);
    }
    if (window == 2){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 20; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
        //TRANSITION INTO WINDOW 4 ON HIT
        var should_swing = has_hit;
        with (asset_get("obj_article1")){
            if (player_id == other.id && state == 1){
                with (asset_get("pHitBox")){
                    if (player == other.player && attack == other.player_id.attack && hbox_num == 1
                    && instance_position(x, y, other.id)){
                        should_swing = true;
                        break;
                    }
                }
            }
        }
        with (asset_get("pHitBox")){
            if (type == 2 && player_id == other.id && attack == AT_USPECIAL){
                with (asset_get("pHitBox")){
                    if (player == other.player && attack == other.player_id.attack && hbox_num == 1
                    && instance_position(x, y, other.id)){
                        should_swing = true;
                        other.hitstop = 4;
                        other.in_hitpause = true;
                        break;
                    }
                }
            }
        }
        if (should_swing){
            window = 4;
            window_timer = 0;
            destroy_hitboxes();
            has_hit = false;
            has_hit_player = false;
        }
    }
    
    if (window < 3 || (window == 3 && !free) || window == 5){
        can_move = false;
    }
    
    can_wall_jump = false;
    if (window == 2 || window == 3 || window == 6)
        can_wall_jump = true;
    
    //END OF WINDOW CODE
    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        if (window == 4 || window == 5){
            window++;
            window_timer = 0;
            if (window == 6){
                //since the window is changed manually, the speed boost is not automatically applied
                hsp = get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
                vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
            }
        }
    }
}

if attack == AT_USPECIAL{
    if ((window = 2 || window = 3) && has_hit_player = true){
    destroy_hitboxes();
    window = 6
    has_hit_player = false
        }
    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        if (window == 6 || window == 7){
        	invincible = true
            window++;
            window_timer = 0;
            if (window == 6 || window == 7){
                //since the window is changed manually, the speed boost is not automatically applied
                hsp = get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
                vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
            }
            }
        }
    }
if attack == AT_DSPECIAL_AIR{
	can_fast_fall = false
	if free == false{
	destroy_hitboxes();
	window = 5;
	create_hitbox( AT_DSPECIAL_AIR, 4, x - 5, y - 10)
	}
}

if attack == AT_DSPECIAL && window == 3 && free == true{
	state = PS_IDLE_AIR
}

//meteor smash sfx
if (attack == AT_UTILT && has_hit_player == true){
if (get_player_damage ( hit_player ) > 29 ){
    sound_play( sound_get( "meteor" ) );
    has_hit_player = false
    }
}