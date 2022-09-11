// make the nametag go higher while ustrong's fist is raised
// if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
// 	hud_offset = lerp(hud_offset, 180, 0.5);
// }
if (is_nana){
	go_through = true;
	force_depth = true;
    depth = popo.depth+1;
    draw_indicator = false;
}else{
	go_through = true;
	if (tsp_success){
	force_depth = true;
    depth = popo.depth+1;	
	}


}





// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

//placeholder hurtbox for attacks
if (state == PS_ATTACK_GROUND &&
(attack == AT_FSTRONG_2 ||
attack == AT_USTRONG_2 ||
attack == AT_DSTRONG_2)

)
{
	hurtboxID.sprite_index = asset_get("cat_hurtbox");
}

//crouch dash into crouch transition
if (prev_state==PS_ATTACK_GROUND && state==PS_CROUCH && state_timer<4){
	image_index = 1;
	hurtboxID.sprite_index = asset_get("cat_crouchbox");
}

//hurtbox and animation overrides
if (state == PS_ATTACK_GROUND){

	switch (attack){
	case AT_EXTRA_1:

		if (window == 1 || (window == 2 && window_timer < 8))
		hurtboxID.sprite_index = sprite_get("crouchdash_hurt");
		else
		hurtboxID.sprite_index = asset_get("cat_crouchbox");

	break;

	case AT_DSTRONG_2:
		hurtboxID.sprite_index = asset_get("cat_crouchbox");
	break;

	case AT_FSTRONG_2:
		if (window < 4)
		hurtboxID.sprite_index = asset_get("cat_crouchbox");
		else
		hurtboxID.sprite_index = asset_get("cat_hurtbox");
	break;

	case AT_USTRONG_2:
		if (window == 1) && (!hellsweepdgf)
		hurtboxID.sprite_index = sprite_get("crouchdash_hurt");
	break;


	}
}






//faster attack update lmao
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{

switch(attack)
{
	case AT_FSPECIAL_2:
		if (has_hit_player && hitpause){
			image_index = 3;
		}
	break;


	case 48:
		if (!is_nana){
			if (instance_exists(tsp_enemy)){
				force_depth = true;
				depth = tsp_enemy.depth-1;
			}
		}
	break;
    
    
    case AT_FTILT:
    case AT_DTILT:
    case AT_NAIR:
    case AT_DAIR:
    case AT_FSTRONG:
    case AT_DSTRONG:
         if (electrified)
        {
            if (window == 1 && window_timer > 4 && (attack_held || strong_held)){
            	if (instance_exists( field_obj ) && !elec_active)
            	elec_charge -= elec_drain;

            	elec_active = true;
            	elec_vfx = true;
            }
        }
        

	    with(pHitBox){
	    	if (player == other.player && type == 1 && attack == other.attack && other.elec_active){
	    		effect = 11;
	    		other.electrified = false;
	    	}
	    	
	    	if (player == other.player && type == 1 && attack == AT_FSTRONG){
        		damage += damage * (other.rg_meter*0.05)
        		other.rg_meter = 0;
        		
	    	}
	    	
	    }	
	        
        

    break;

    case AT_USTRONG:
         if (electrified)
        {
            if (strong_charge > 0){

            	if (strong_charge == 1) && (instance_exists( field_obj ) && !elec_active)
            	elec_charge -= elec_drain;

            	elec_active = true;
            	elec_vfx = true;
            }
        }
        
        if (elec_active)
        {
	        with(pHitBox){
	        	if (player == other.player && type == 1 && attack == other.attack){
	        		effect = 11;
	        	}
	        }	
	        electrified = false;
        }

    break;
       
    case AT_JAB:
         if (electrified)
        {
            if (window == 7 && window_timer > 4 && attack_down){
            	if (instance_exists( field_obj ) && !elec_active)
            	elec_charge -= elec_drain;

            	elec_active = true;
            	elec_vfx = true;
            }
        }

        if (elec_active)
        {
	        with(pHitBox){
	        	if (player == other.player && type == 1 && hbox_num == 3 && attack == other.attack){
	        		effect = 11;
	        	}
	        }	
	        electrified = false;
        }

    break;
    
    case AT_FAIR:
        if (electrified)
        {
            if (window == 1 && window_timer > 4 && attack_held){
            	if (instance_exists( field_obj ) && !elec_active)
            	elec_charge -= elec_drain;

            	elec_active = true;
            	elec_vfx = true;
            }
        }

        if (elec_active)
        {
	        with(pHitBox){
	        	if (player == other.player && type == 1 && hbox_num == 1 && attack == other.attack){
	        		effect = 11;
	        	}
	        }	
	        electrified = false;
       	}
        
    break;
    
    
    case AT_FSTRONG_2:
        if (electrified && !ewgf_real)
        {
            if (window == 1 && window_timer > 3 && attack_held){
            	if (instance_exists( field_obj ) && !elec_active)
            	elec_charge -= elec_drain;

            	elec_active = true;
            	elec_vfx = true;
            }
        }
        
        if (elec_active)
        {
	        with(pHitBox){
	        	if (player == other.player && type == 1 && attack == other.attack){
	        		effect = 11;
	        	}
	        }	
	        electrified = false;
        }

    break;
    
    case AT_USTRONG_2:
        if (electrified && !omen)
        {
            if ( window == 1 && window_timer > 4 && strong_held ){
            	if (instance_exists( field_obj ) && !elec_active)
            	elec_charge -= elec_drain;

            	elec_active = true;
            	elec_vfx = true;
            }
        }


        if (elec_active)
        {
	        with(pHitBox){
	        	if (player == other.player && type == 1 && hbox_num == 1 && attack == other.attack){
	        		effect = 11;
	        	}
	        }	
	        electrified = false;
        }

    break;

    case AT_NSPECIAL:
    	if (right_down){
			image_index += 5;
		}
		if (left_down){
			image_index += 5;
		}
    break;

    case AT_DSPECIAL:

	if (instance_exists(crosshair)){
		if (instance_exists(crosshair.target)){
			if (crosshair.target.y < y - 80){
				sprite_index = sprite_get("gunup");
				if (window == 3 && window_timer == 0)
	    		spawn_hit_fx(x + spr_dir*80, y - 70, muzzle_flash_u);
			}
			else if (crosshair.target.y > y + 50){
				sprite_index = sprite_get("gundown");
				if (window == 3 && window_timer == 0)
	    		spawn_hit_fx(x + spr_dir*75, y - 10, muzzle_flash_d);
			}
			else
			{
				if (window == 3 && window_timer == 0)
	    		spawn_hit_fx(x + spr_dir*90, y - 40, muzzle_flash);
			}
		}
		else if (window == 3 && window_timer == 0)
		{
		spawn_hit_fx(x + spr_dir*90, y - 40, muzzle_flash);
		}
	}


    break;
    
    case AT_EXTRA_3:



	if (right_down || left_down){
		sprite_index = sprite_get("dirtplacewalk");

		if (!place_block)
		sprite_index = sprite_get("walk");
	}else
	{
		if (!place_block)
	    image_index = 0;
	}

    break;

}



//faster hitbox update lmao

if (!is_nana){
	with(pHitBox){

		if (player == other.player && !other.is_nana){
				if (hitbox_timer == 0){
				damage += other.attack_buff;
					if (other.arsene && effect != 11){
						kb_scale += 0.2;
						kb_value += 1;
						hitpause *= 2;
						hitpause_growth += 0.5;
						sound_effect = asset_get("sfx_absa_uair");
					}
				}
			}

		if (player == other.player && type != 2){
			if (hitbox_timer == 0 && !in_hitpause && effect != 11){

			    damage = round(damage/2);

			    if (damage <= 0)
			    	damage = 1;

			if (player_id == other.nana ){
				hbox_group += 1;
			}

			}

		}




	}
}


}




//auto turn animations
if (spr_dir != looking)
{
	switch (state){
		case PS_WALK_TURN:
		hurtboxID.sprite_index = sprite_get("idlehurtback");
		set_state(PS_WALK);
		break;
		case PS_WALK:
		hurtboxID.sprite_index = sprite_get("idlehurtback");
		sprite_index = sprite_get("walkback");
		image_index = animtimer;
		animtimer += 0.13;
		if (animtimer>4) animtimer=0;
		break;
		case PS_DASH_START:
		sprite_index = sprite_get("backdash");
		if (down_down && state_timer==4)
		set_state(PS_CROUCH);
		break;
	}
}else
{
	if (state == PS_IDLE)
	hurtboxID.sprite_index = asset_get("cat_hurtbox");
}


//rolling anims
switch (state){
case PS_ROLL_FORWARD:
case PS_ROLL_BACKWARD:
case PS_TECH_FORWARD:
case PS_TECH_BACKWARD:
	sprite_index = sprite_get("roll");
break;
}

// //change outline if electrified
// if (electrified){
// var col_r;
// var col_g;
// var col_b;
    
//     switch (get_player_color( player )){
	
// 	case 8:
// 		col_r = get_color_profile_slot_r( get_player_color(player), 4);
// 		col_g = get_color_profile_slot_g( get_player_color(player), 4);
// 		col_b = get_color_profile_slot_b( get_player_color(player), 4);
// 	break;
// 	case 9:
// 		col_r = get_color_profile_slot_r( get_player_color(player), 7);
// 		col_g = get_color_profile_slot_g( get_player_color(player), 7);
// 		col_b = get_color_profile_slot_b( get_player_color(player), 7);
// 	break;
// 	case 10:
// 		col_r = get_color_profile_slot_r( get_player_color(player), 7);
// 		col_g = get_color_profile_slot_g( get_player_color(player), 7);
// 		col_b = get_color_profile_slot_b( get_player_color(player), 7);
// 	break;
	
// 	default:
// 	col_r = get_color_profile_slot_r( get_player_color(player), 4);
// 	col_g = get_color_profile_slot_g( get_player_color(player), 4);
// 	col_b = get_color_profile_slot_b( get_player_color(player), 4);
// 	break;
	
	
// 	}
    
//     init_shader();
//     outline_color = [col_r, col_g, col_b];
// }

// else{
// init_shader();

// switch (get_player_color( player )){
	
// 	case 8:
// 		outline_color = [26, 16, 16];
// 	break;
// 	case 9:
// 		outline_color = [35, 67, 49];
// 	break;
// 	case 10:
// 		outline_color = [207, 207, 207];
// 	break;
	
// 	default:
// 	outline_color = [ 0, 0, 0 ];
// 	break;
// }


// }


if (get_training_cpu_action() == CPU_FIGHT){
	if (intro_timer < 60 * 2 && intro_timer > 60){
		
		if (animtimer < 9){
		sprite_index = sprite_get("intro");
		image_index = animtimer;
		animtimer += 0.23;
		

		
		}
		
		if (intro_timer == 75){
		sound_play(asset_get("sfx_blow_heavy2"));
		sound_play(sound_get("ki_charge"));
		shake_camera( 4, 6 );
		}
	}
}


//screwattack



