//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 25;
} 

//no mud dspecial && moist code
if attack == AT_DSPECIAL {
    //mud & mudless sprites
    if on_mud == false {
        set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_no_mud"));
         set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_no_mud"));
    }
    else {
        reset_attack_value(AT_DSPECIAL, AG_SPRITE);
        reset_attack_value(AT_DSPECIAL, AG_AIR_SPRITE);
    }
    //gaining moist
    if window == 2 && !moist_gained && on_mud && window_timer == 1 {
        moist_rn += 35;
        moist_gained = true;
    } if (window_timer == 25 && special_down){
    	window_timer = 1;
    	if (on_mud = true){
    	moist_rn += 40;
    	}
    }
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL || attack == AT_FSPECIAL){
	can_hitfall = false;
}

if (attack == AT_TAUNT)
{
	if (window == 1 && window_timer == 1 && down_down && !up_down)
	{
		if (spr_dir = 1){
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("down_taunt"));
		} else {
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("reverse_down_taunt"));
		}
		// Different Taunt while holding down.
		set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
		set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 100);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 29);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 20);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0);


      }
	else if (window == 1 && window_timer == 1 && !down_down)
	{
		reset_attack_value(AT_TAUNT, AG_SPRITE);
		reset_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE);
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES);
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);	
		reset_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX);

	}
}
      
if (attack == AT_TAUNT
     && window_timer == 70
     && taunt_down && down_down)
{
   window_timer = 45 //restarts loop    
}

if (attack == AT_TAUNT && taunt_down && down_down)
{
	{
		suppress_stage_music(.1, 0.02);
	}
     if (window_timer == 70)
     {
        window_timer = 45 //restarts loop
     }
     else if (window_timer == 44)
     {
         sound_play(sound_get("sfx_no_anime"), true, noone, 1, 1)
     }
     else if (window_timer > 70)
     {
          sound_stop(sound_get("sfx_no_anime"))
     }
}

if(attack == AT_TAUNT_2){
	suppress_stage_music(0, 0.02);
}

switch moist_level {
    case 1:
    
     //reset ftilt kb
     reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
     reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
     reset_attack_value(AT_FTILT, AG_SPRITE);
  //reset friction
    ground_friction = 0.5;
   
      //thicc
    knockback_adk = 0.95
   
   //reset wavedash
wave_land_adj = 1.15;

    //reset dash turn / walk turn
    dash_turn_time = 8;
    walk_turn_time = 6;
   
   //reset ustrong 
    reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);
        reset_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED);
    
    //reset dtilt stuff
    reset_hitbox_value(AT_DTILT, 1, HG_LIFETIME);
    reset_attack_value(AT_DTILT, AG_SPRITE);
    reset_attack_value(AT_DTILT, AG_HURTBOX_SPRITE);
    reset_hitbox_value(AT_DTILT, 1, HG_HITBOX_X);

 reset_hitbox_value(AT_USTRONG, 2, HG_EFFECT);
 reset_hitbox_value(AT_USTRONG, 3, HG_EFFECT);
 reset_hitbox_value(AT_USTRONG, 4, HG_EFFECT);

    break;
    case 2:
    //dtilt jc on hit
    if(attack == AT_DTILT){
        if(has_hit_player = true){
         can_jump = true;   
        }
    }
    

    //wavenyoom
    wave_land_adj = 1.75;
    
    //anti thicc
    knockback_adk = 1.0
    
    //slow dash turn / walk turn
    dash_turn_time = 14;
    walk_turn_time = 10;
    
     //stronk ftilt kb
 set_num_hitboxes(AT_FTILT, 1);
                set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.7);
     set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_mud"));

     
    //dtilt off ledge
    if(attack == AT_DTILT){
        set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 12);
    	reset_attack_value(AT_DTILT, AG_SPRITE);
    	reset_attack_value(AT_DTILT, AG_HURTBOX_SPRITE);
  		reset_hitbox_value(AT_DTILT, 1, HG_HITBOX_X);


    }

  //low friction
ground_friction = 0.25;

if (attack == AT_FSTRONG){
	ground_friction = 0.4;
} else {
	ground_friction = 0.25
}

   //wavenyoom
   wave_land_adj = 1.25

//reset ustrong / remove hspeed
    reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);
    reset_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED);
    
    if(attack == AT_USTRONG){
  if( 30 > random_func(0, 100, true)){
    set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, 1);
  } else {
      set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, 0);
  }
}

if(attack == AT_USTRONG){
  if( 30 > random_func(0, 100, true)){
    set_hitbox_value(AT_USTRONG, 3, HG_EFFECT, 1);
  } else {
      set_hitbox_value(AT_USTRONG, 3, HG_EFFECT, 0);
  }
}

if(attack == AT_USTRONG){
  if( 30 > random_func(0, 100, true)){
    set_hitbox_value(AT_USTRONG, 4, HG_EFFECT, 1);
  } else {
      set_hitbox_value(AT_USTRONG, 4, HG_EFFECT, 0);
  }
}

 if(attack == AT_USPECIAL || attack == AT_USPECIAL_2){
        if(window = 3){
            can_jump = true;
            can_shield = true;
        }
    }

    break;
    case 3:
  //dtilt jc / off ledge
    if(attack == AT_DTILT){
        can_jump = true;
        set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 12);
  		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_mud"));
  		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_mud_hurt"));
  		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 0);


    }
    
    //stronk ftilt kb
 set_num_hitboxes(AT_FTILT, 1);
                set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 9);
                set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.7);
                set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_mud"));
                
  //low friction
ground_friction = 0.25;
 
 if (attack == AT_FSTRONG){
	ground_friction = 0.4;
} else {
	ground_friction = 0.25
}

   
   //wavenyoom
   wave_land_adj = 1.5;
   
      //anti thicc
    knockback_adk = 1.05
   
   //slow dash turn / walk turn
   dash_turn_time = 14;
   walk_turn_time = 10;
   
   //fast ustrong / remove hspeed
    if(attack == AT_USTRONG){
        if(window == 2){
            set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
        }
    }
    
    if(attack == AT_USTRONG){
        if(window == 3){
                set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 0);
        }
    }
    
    if(attack == AT_USTRONG){
          set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, 1);
            set_hitbox_value(AT_USTRONG, 3, HG_EFFECT, 1);
              set_hitbox_value(AT_USTRONG, 4, HG_EFFECT, 1);
    }
    
    if(attack == AT_USPECIAL || attack == AT_USPECIAL_2){
        if(window = 3){
            can_jump = true;
            can_shield = true;
        }
    }
    
    break;
}

if (attack == AT_FSPECIAL_AIR){ 
    if(window == 3){
        can_wall_jump = true;
        if window_timer == 8 && free {
            set_state(PS_PRATFALL);
        }
    }
}

if(attack == AT_DSPECIAL_2)
{
        //can_move = false;
        //Garebear: i actually like that lol - 09102020
        if(window == 2 && down_down){
            fall_through = true;
        }
        if(window == 2){
        	can_wall_jump = true;
        }
        if((window == 2 && !free)){
            window = 3;
            window_timer = 0;
        }
        if(window == 2 && window_timer >= 20){
        	can_jump = true;
        }
        if(window == 3 && window_timer == 1){
            destroy_hitboxes();
        }
        if(window == 3 && window_timer == 4 && on_mud && !hitpause){
            create_hitbox(AT_DSPECIAL_2,4,x - 4 * spr_dir,y -30);
        }
        if(window == 3 && window_timer == 6 && !on_mud && !hitpause){
            create_hitbox(AT_DSPECIAL_2,3,x - 2 * spr_dir,y -10);
        }
    }

if(attack == AT_NSPECIAL && special_down){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -8);
} else {
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4);
}

if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP){
	if (attack_pressed && down_down){
	attack = AT_DTILT;
	clear_button_buffer ( PC_ATTACK_PRESSED)
}}

//training mud toggle
if (get_training_cpu_action() != CPU_FIGHT) {
    if attack == AT_TAUNT {
        if attack_pressed {
            mud_training_level = 1;
        } else if special_pressed {
            mud_training_level = 2;
        }
    }
}


 if (phone_cheats[cheat_moist_meter] == 0) {
	 	   mud_training_level = 0;
	  } else if (phone_cheats[cheat_moist_meter] == 1){
	  	mud_training_level = 1;
	  } else if (phone_cheats[cheat_moist_meter] == 2){
	  	mud_training_level = 2;
	  } 
	  