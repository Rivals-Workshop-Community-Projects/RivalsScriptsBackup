// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DAIR){
	if (has_hit)
  {
		can_fast_fall = true;
	}
}

if (attack == AT_FSPECIAL)
{
 if was_parried = false
 {
 
 if (has_hit)
	{
     can_attack = true;
     old_vsp = 1;
      if window = 1
      {
       can_fast_fall = false;
      }
      if window = 2
      {
       can_fast_fall = true;
      }
	}

	can_wall_jump = true;
	old_vsp = -7;

 }

  if ((window == 2 || window == 3 || window == 4 || window == 5) && !free)  && (was_parried = false)
  {
    set_state( PS_LANDING_LAG );
    landing_lag_time = 16;
    hsp = hsp / 1.5;
  }
}

if (attack == AT_USTRONG)
{
	if (has_hit)
	{
	 can_fast_fall = false
	}
}

if (attack == AT_USPECIAL)
{ 
  move_cooldown[AT_USPECIAL] = 25;	
 
  if (was_parried = false)
  {
	can_wall_jump = true;
  if ((window == 3 ) && !free)
  {
    set_state( PS_LANDING_LAG );
    landing_lag_time = 16 / 2;
    hsp = hsp / 2;
  }
 }
  if (window = 1 || window = 2)
  {
   can_fast_fall = 0;
  }
  if (window = 3)
  {
   can_fast_fall = 1;
  }

  if (window == 1) and (window_timer < 11)
  {
   upb_dir = joy_dir; 
   set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (16 * cos(degtorad(upb_dir)) ) * spr_dir);
   set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-16 * sin(degtorad(upb_dir)) ));
   if (joy_pad_idle = true)
   {
    upb_dir = 90;
    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -16);
   }
  }

  if (window == 3)
  { 
   set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, (2 * cos(degtorad(upb_dir)) ) * spr_dir);
   set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, (-2 * sin(degtorad(upb_dir)) ));
  }

  if (has_hit)
  {
   set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
  }
  else
  {
   set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
  }

  if (special_down = true)
  {
   fall_through = true;
  }
  else
  {
   fall_through = false;
  }
  
}



if (attack == AT_NSPECIAL)
{
  if (left_down) and (window = 2)
  {
   spr_dir = -1;
  }                                                                                                                                                // Turning during charge
   if (right_down) and (window = 2)
  {
   spr_dir = 1;
  }
  can_wall_jump = true;
  if (special_down = true) and (window != 3)
  { 
   set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
   var spin_timer = state_timer / 2;
   set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, spin_timer);
   set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, spin_timer * 1.9);                                                                           // Loop and timer init
   set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, spin_timer * 1.9);
  }

  if (special_down = false )
  {
   set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);                                                                                            // Loop end
   spin_timer = 0;
  }

  if (spin_timer > 18) 
  {
   set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 18);
   set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);                                                                                         // speed charge limit 
   set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 18);
  }

  if (window == 4)
  {
   state_timer = 0;
   off_edge = 0;                                                                                                                                    // End timer
  }

  if ((shield_down) and (window == 2) || (shield_down) and (window == 3)) || (was_parried)
  {
   window = 4;   
   state_timer = 0;
   instance_destroy(pHitBox);                                                                                                                       // Charge and speed cancel
  } 

  if (has_hit) and (window == 3) and (was_parried = false) //or (has_hit) and (window == 2) and (was_parried = false)
  {
   can_jump = true;                                                                                                                                 // Jump cancel
  }
}

//After-image

if (attack == AT_FSPECIAL)
{
	if (window == 2) || (window == 3) || (window == 3)
	{
		if(state_timer % 4 == 0)
    {
			trail = instance_create(x, y, "obj_article1");
			trail.image_index = image_index;
		}
	}
}

if (attack == AT_USPECIAL)
{
  if (window == 2)
  {
    if(state_timer % 4 == 0)
    {
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
  }
}

if (attack == AT_NSPECIAL)
{
  if (window == 3)
  {
    if(state_timer % 4 == 0)
    {
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
  }
}

if (attack == AT_FSTRONG)
{
 if (strong_charge > 18) 
 {
   if (window == 3) || (window == 4)
   {
    if(state_timer % 4 == 0)
    {
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
  }
 }
}

//Down B Ring

if (attack == AT_DSPECIAL)
{
  if (has_hit) and (special_down)
  {
   old_vsp = -10;
  }
  if (window == 3)
  {
    if (window_timer == 4)
    {
      move_cooldown[AT_DSPECIAL] = 120;
      var ring = instance_create(x+(spr_dir * 30), y-80, "obj_article2");
      ring.player_id = id;
      ring.player = player;
      ring.spr_dir = spr_dir;
    }
  }
}

//Taunt 1 cancel

if (attack == AT_TAUNT)
{
  if (window == 2) && (window_timer > 2)
  {
   can_jump = true;
   can_attack = true;
  }
}

// Fstrong charge

if (attack == AT_FSTRONG)
{
   wsh = 10 + (strong_charge / 4.0)
   set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, wsh);

   if wsh > 20
   {
    set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 20);                 // Speed limit       
   }
}

// Fstrong woo

if (attack == AT_FSTRONG) && (hsp > 13 || hsp < -13) && (window == 3) && (window_timer > 1) && (window_timer < 3)
{
  random = random_func( 0, 10, false );

 if (random < 5)
 {
  sound_play( sound_get( "ah" ) );
 }

 if (random > 5)
 {
  sound_play( sound_get( "uwa" ) );
 }
}

//Dattack

if (attack == AT_DATTACK)
{
  if (has_hit) and (was_parried = 0)
  {
    can_jump = 1;
  }
}

//Nair

if (attack == AT_NAIR)
{
	if (attack_down)
	{
	 set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 9);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 13);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

	 if (!free)
	 {
	  set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
	  set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 15);

	  if (window_timer > 1) and (!was_parried)
	  {
	   hsp = (spr_dir * 7) + (hsp / 3);
	   set_state( PS_LANDING_LAG );
	   landing_lag_time = 3;
	   can_attack = true;
	   can_special = true;
	   can_jump = true;
	   can_strong = true;
	   can_shield = true;
	  }
	 }
	}
	else
	{
	 set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 15);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
	 set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

	 if (!free) and (!was_parried)
	 {
	  set_state( PS_LANDING_LAG );
	  if (has_hit)
	  {
	   landing_lag_time = 5;
	  }
	  else
	  {
	   landing_lag_time = 7.5;
	  }
	 }
	}
}