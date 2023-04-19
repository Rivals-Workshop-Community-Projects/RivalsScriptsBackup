//TAUNTS

if (has_rune("N") && attack == AT_TAUNT)
{
	if (window == 1 && window_timer == 94 && down_down && !up_down){
		shake_camera(8, 50);
            create_hitbox(AT_TAUNT,1,x - 2 * spr_dir,y -10);
	}}
	
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
		set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 118);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 29);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 15);
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

if (attack == AT_TAUNT)
{
     suppress_stage_music(.1, 0.02);
     if (window_timer == 94 && taunt_down && down_down)
     {
        window_timer = 45 //restarts loop
     }
     else if (window_timer == 44)
     {
         if has_rune("N"){
             sound_play(sound_get("sfx_down_taunt_2"), true, noone, 1, 1);
         } else if (taunt_down && down_down) {
         sound_play(sound_get("sfx_no_anime"), true, noone, 1, 1);
         }
     }
     if (window_timer > 94)
     {
         if has_rune("N"){
           sound_stop(sound_get("sfx_down_taunt_2"));
           shake_camera(0, 1000);
         } else {
            sound_stop(sound_get("sfx_no_anime"));
         }
     }   
}

if(attack == AT_TAUNT_2){
	suppress_stage_music(0, 0.02);
}



//METER CODE

switch moist_level {
	//LEVEL 1
    case 1:

     //reset DAttack
     reset_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED);
     reset_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED);
    
     //reset ftilt kb
     reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
     reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
     reset_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE);
     reset_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING);
     reset_attack_value(AT_FTILT, AG_SPRITE);
  //reset friction
    ground_friction = 0.5;
   wave_friction = .04;
   
   //reset wavedash
wave_land_adj = 1.15;

    //reset dash turn / walk turn
    dash_turn_time = 8;
    walk_turn_time = 6;
   
    //reset dtilt stuff
    reset_hitbox_value(AT_DTILT, 1, HG_LIFETIME);
    reset_attack_value(AT_DTILT, AG_SPRITE);
    reset_attack_value(AT_DTILT, AG_HURTBOX_SPRITE);
    reset_hitbox_value(AT_DTILT, 1, HG_HITBOX_X);
    reset_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);


        reset_attack_value(AT_USTRONG, AG_SPRITE);
        reset_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING);
       	reset_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING);
       	reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT);

    break;
    //LEVEL 2
    case 2:
    //wavenyoom
    wave_land_adj = 1.4;
    
    //slow dash turn / walk turn
    dash_turn_time = 14;
    walk_turn_time = 10;

     //DATTACK
     set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 7);
     set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);

    
     //FTILT
 set_num_hitboxes(AT_FTILT, 1);
                set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8.5);
                set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.7);
                set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
                set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
     set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_mud"));

	//DTILT
    if(attack == AT_DTILT){
  		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_mud"));
  		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_mud_hurt"));
  		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 0);
  		set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
    }
    
 
    //dtilt jc on hit
    if(attack == AT_DTILT){
        if(has_hit_player = true){
         can_jump = true;   
        }
    }
    

  //low friction
ground_friction = 0.25;

 if (attack == AT_FSTRONG){
	ground_friction = 0.4;
} else {
	ground_friction = 0.25
}


    break;
    //LEVEL 3
    case 3:
    
    
       set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_mud"));
       set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 10);
       set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
       set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.3);      
    	//DTILT
    if(attack == AT_DTILT){
  		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_mud"));
  		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_mud_hurt"));
  		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 0);
  		set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
    }       
                
     
    //dtilt jc on hit
    if(attack == AT_DTILT){
        if(has_hit_player = true){
         can_jump = true;   
        }
    }            
                
  //low friction
ground_friction = 0.25;
 
 if (attack == AT_FSTRONG){
	ground_friction = 0.4;
} else {
	ground_friction = 0.25
}
   

   
   //slow dash turn / walk turn
   dash_turn_time = 14;
   walk_turn_time = 10;
    
    break;
}

//TILTS
/*
if
    (attack_pressed && down_down){
	attack = AT_DTILT;
	clear_button_buffer ( PC_ATTACK_PRESSED)
}}
*/


//STRONGS

  //low friction
 if (attack == AT_FSTRONG){
	ground_friction = 0.4;
} else {
	ground_friction = 0.25
}


//SPECIALS


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL_2 && window == 3){
	can_jump = true;
	has_airdodge = true;
	if has_walljump = true {
		can_walljump = true;
	}
}

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 25;
} 



if (attack == AT_FSPECIAL_AIR){ 
    if(window == 3){
        can_wall_jump = true;
        if window_timer == 8 && free {
            set_state(PS_PRATFALL);
        }
    }
}


//no mud dspecial && moist code
if attack == AT_DSPECIAL {
    //mud & mudless sprites
    if (on_mud == false) {
        set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_no_mud"));
        set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_no_mud"));
    }
    else {
        reset_attack_value(AT_DSPECIAL, AG_SPRITE);
        reset_attack_value(AT_DSPECIAL, AG_AIR_SPRITE);
    }
    //gaining moist
    if window == 2 && !moist_gained && on_mud && window_timer == 1 {
        moist_rn += 25;
        if (has_rune("F")){
        	moist_rn += 45;
        }
        moist_gained = true;
    } 
    if (window_timer == 19 && special_down){
        attack_end(); //"ends" attack, really just frees hitboxes from "has already hit" status
    	window_timer = 0;

    	if (on_mud = true){
    	    moist_rn += 30;
    	}
    }
}


if (attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_FSPECIAL){
	can_fast_fall = false;
} 

if (attack == AT_USPECIAL || attack == AT_USPECIAL_2) && window == 4 {
	can_fast_fall = true;
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL_2) {
	can_wall_jump = true;
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
        if(window == 3 && window_timer == 4 && moist_level = 3 && !hitpause){
            create_hitbox(AT_DSPECIAL_2,4,x - 4 * spr_dir,y -30);
        }
        if(window == 3 && window_timer == 6 && moist_level != 3 && !hitpause){
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

//RUNES
	  
	  
if has_rune("C"){
	reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
	reset_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH);
	set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
} else {
	reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH);
}	  
	  
if has_rune("F") && (attack == AT_DSPECIAL){
			if (on_mud = true){
    	moist_rn += 40;
}}

if (has_rune("G") && attack == AT_DTILT){
	can_jump = true;
}

if has_rune("J") && attack == AT_FAIR{
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair2"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -2.5);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_num_hitboxes(AT_FAIR, 1);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK,  9);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 193);
} else {
reset_attack_value(AT_FAIR, AG_SPRITE);
reset_attack_value(AT_FAIR, AG_NUM_WINDOWS);
reset_attack_value(AT_FAIR, AG_HAS_LANDING_LAG);
reset_attack_value(AT_FAIR, AG_LANDING_LAG);
reset_attack_value(AT_FAIR, AG_HURTBOX_SPRITE);
reset_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY);

reset_window_value(AT_FAIR, 1, AG_WINDOW_TYPE);
reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);
reset_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES);
reset_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY);
reset_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX);
reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX);
reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME);

reset_window_value(AT_FAIR, 2, AG_WINDOW_TYPE);
reset_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH);
reset_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES);
reset_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START);
reset_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY);
reset_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED);

reset_window_value(AT_FAIR, 3, AG_WINDOW_TYPE);
reset_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH);
reset_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES);
reset_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START);
reset_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG);
reset_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY);

reset_num_hitboxes(AT_FAIR);

reset_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE);
reset_hitbox_value(AT_FAIR, 1, HG_WINDOW);
reset_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP);
reset_hitbox_value(AT_FAIR, 1, HG_LIFETIME);
reset_hitbox_value(AT_FAIR, 1, HG_HITBOX_X);
reset_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y);
reset_hitbox_value(AT_FAIR, 1, HG_WIDTH);
reset_hitbox_value(AT_FAIR, 1, HG_HEIGHT);
reset_hitbox_value(AT_FAIR, 1, HG_PRIORITY);
reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
reset_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING);
reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET);
reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET);
reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);
reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT);
}

if (has_rune("K") && attack == AT_NSPECIAL) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_splat"));
}

if has_rune("M") {
	reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
if (attack == AT_DSPECIAL && window == 2 && window_timer = 10 && on_mud = true && special_down){
	window_timer = 1;
	moist_rn += 30
}
	
} else {
	reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH);
}



if (has_rune("N") && attack == AT_TAUNT){
	if (window == 1 && window_timer == 94 && down_down && !up_down){
		shake_camera(8, 50);
            create_hitbox(AT_TAUNT,1,x - 2 * spr_dir,y -10);
	}}	  