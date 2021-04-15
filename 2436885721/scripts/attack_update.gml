//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//shake the camera on jab 3
if (attack == AT_JAB && window == 9 && window_timer == 1) {
	shake_camera( 4, 2 );
}

//begin uspecial code
if (attack == AT_USPECIAL){
    can_fast_fall = false;
    pratall = false;
    can_wall_jump = true;
    usedUspecial = true;
    
    if(window == 1){
        if(window_timer == 1){
        canSpawnUSpecialFX = true;
            times_through = 0;
            vsp = -8;			//boost on the first frame of the move
			hsp = 0;
        }
        if(vsp >= 0){
            vsp = 0;    //if gravity would cause move to travel downward, prevent that
        }
    }
	if(window_timer == 9){
        canSpawnUSpecialFX = true;
		}
    
    if(window == 2){
        if(window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)){
            if(times_through < 2){
                times_through++;
                window_timer = 0;
            }
        }
        if(window_timer >= 8 && special_pressed){
            canSpawnUSpecialFX = false;
            window = 3;
            window_timer = 0;
        }
        if(shield_pressed) && (joy_pad_idle = false){
            canSpawnUSpecialFX = false;
            vsp -= 10;
            window = 6;
            window_timer = 0;
			can_fast_fall = true;
            set_state(PS_PRATFALL);
            spawn_hit_fx(x, y, uspecialcancel);
            sound_play(asset_get("sfx_ori_spirit_flame_2"));
        }
        if(shield_pressed) && (joy_pad_idle = true){
            canSpawnUSpecialFX = false;
            window = 6;
            window_timer = 0;
			can_fast_fall = true;
            set_state(PS_PRATFALL);
            spawn_hit_fx(x, y, uspecialcancel);
            sound_play(asset_get("sfx_ori_spirit_flame_2"));
        }
    }
    
    if(window == 3 && window_timer == 11){
        canSpawnUSpecialFX = false;
        spawn_hit_fx(x, y, uspecialfling);
        sound_play(asset_get("sfx_may_whip2"));
    }
    
    if(window < 4){
        can_move = false;
    }
	
	  if(window > 3){
        canSpawnUSpecialFX = false;
    }
    
}    //end uspecial code

if(attack == AT_DTILT){
    if(window == 4 && window_timer >= 3 && !hitstop && down_stick_pressed){	//tilt stick check
        window = 5;
        window_timer = 0;
    }
}

//DOWNSTRONG STUFF OH GOD

if attack == AT_DSTRONG {
	if window == 2 and window_timer == 1 {
		if !free {
			create_hitbox( AT_DSTRONG, 1, x+54*spr_dir, y-(84/2));
			sound_play(asset_get(""))
			move_cooldown[AT_DSTRONG] = 90;
		}
}
}

//ftilt mini special cancelling

if (attack == AT_FTILT && has_hit && window == 5 && window_timer >= 8){
	can_special = true
	}

//Specials homing and cancelling

if (attack == AT_NSPECIAL && window == 1 && window_timer == 1)
{
    move_cooldown[AT_NSPECIAL] = 180;
    if instance_exists(hexDebuffID)
    {
        /// IF DEBUFFED PERSON EXISTS, SPAWN A HITBOX AT THEIR LOCATION, OFFSET BY A CERTAIN AMOUNT

        var mult, apply_x, apply_y;
        //how far it spawns in a given direction
        mult = 250;

        // controls left/right
        apply_x = min(abs(hexDebuffID.hsp/12.5), 1)*mult*sign(hexDebuffID.hsp) 

        // controls up/down, whether to apply if x has already been applied
        apply_y = min(abs(hexDebuffID.vsp/60), 1)*mult*sign(hexDebuffID.vsp); 
		
		//print("apply_x: "+ string(apply_x))
		//print("apply_y: "+ string(apply_y))

        create_hitbox(AT_NSPECIAL, 1, floor(hexDebuffID.x + 18*hexDebuffID.spr_dir + apply_x), floor(hexDebuffID.y -32 + apply_y));  
    }
    else
    {
        ///IF NOT, SPAWN AT THIS LOCATION
        create_hitbox(AT_NSPECIAL, 1, floor(x + 200*spr_dir), floor(y - 60));
    }
}

if (attack == AT_NSPECIAL && window == 3 && window_timer >= 8){
	can_special = true
}
	
if (attack == AT_DSPECIAL && window == 1 && window_timer == 1)
{
	move_cooldown[AT_DSPECIAL] = 180;
    if instance_exists(hexDebuffID)
    {
        /// IF DEBUFFED PERSON EXISTS, SPAWN A HITBOX AT THEIR LOCATION, OFFSET BY A CERTAIN AMOUNT

        var mult, apply_x, apply_y;
        //how far it spawns in a given direction
        mult = 250;

        // controls left/right
        apply_x = min(abs(hexDebuffID.hsp/11.5), 1)*mult*sign(hexDebuffID.hsp) 

        // controls up/down, whether to apply if x has already been applied
        apply_y = min(abs(hexDebuffID.vsp/54), 1)*mult*sign(hexDebuffID.vsp); 
		
		//print("apply_x: "+ string(apply_x))
		//print("apply_y: "+ string(apply_y))

        create_hitbox(AT_DSPECIAL, 1, floor(hexDebuffID.x + 5*hexDebuffID.spr_dir + apply_x), floor(hexDebuffID.y -5 + apply_y));  
    }
    else
    {
        ///IF NOT, SPAWN AT THIS LOCATION
        create_hitbox(AT_DSPECIAL, 1, floor(x + 250*spr_dir), floor(y - 22));
    }
}

if (attack == AT_DSPECIAL && window == 3 && window_timer >= 8){
	can_special = true
	}
	
if (attack == AT_FSPECIAL && window == 1 && window_timer == 1)
{
    move_cooldown[AT_FSPECIAL] = 180;
    if instance_exists(hexDebuffID)
    {
        /// IF DEBUFFED PERSON EXISTS, SPAWN A HITBOX AT THEIR LOCATION, OFFSET BY A CERTAIN AMOUNT

        var mult, apply_x, apply_y;
        //how far it spawns in a given direction
        mult = 250;

        // controls left/right
        apply_x = min(abs(hexDebuffID.hsp/18), 1)*mult*sign(hexDebuffID.hsp) 

        // controls up/down, whether to apply if x has already been applied
        apply_y = min(abs(hexDebuffID.vsp/54), 1)*mult*sign(hexDebuffID.vsp); 
		
		//print("apply_x: "+ string(apply_x))
		//print("apply_y: "+ string(apply_y))

        create_hitbox(AT_FSPECIAL, 1, floor(hexDebuffID.x - 38*hexDebuffID.spr_dir + apply_x), floor(hexDebuffID.y - 54 + apply_y));  
    }
    else
    {
        ///IF NOT, SPAWN AT THIS LOCATION
        create_hitbox(AT_FSPECIAL, 1, floor(x + 290*spr_dir), floor(y - 54));
    }
}


if (attack == AT_FSPECIAL && window == 3 && window_timer >= 8){
	can_special = true
	}