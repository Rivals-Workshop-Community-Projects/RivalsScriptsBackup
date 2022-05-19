// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DAIR)
{
  if (was_parried == false)
  {
    can_wall_jump = 1;
  }
  if (window == 1)
  {
    hsp = hsp / 1.1;
    //vsp = vsp / 1.1;
  }
  if ((window == 3) and (window_timer > 4) and (was_parried == false))
  {
    can_jump = 1;
    can_dodge = 1;
    can_special = 1;
  }
  /*
  if (window == 3) and (has_hit == true)
  {
    can_jump = 1;
    can_dodge = 1;
    can_special = 1;
  }
  */

  if (window == 1) and (window_timer == 9)
  {
     sound_play( sound_get( "swing_medium2" ) );
  }
}

if (attack == AT_FSPECIAL)
{
 can_wall_jump = true;
 if (window == 1) and (window_timer == 1)
 {
     sound_play( asset_get( "sfx_swipe_medium2" ) );
 }
 if (was_parried = false)
 {
  if (has_hit)
	{
     can_attack = true;
     old_vsp = 1;
     can_fast_fall = true;
     destroy_hitboxes();
	}
	else
	{
	  if window == 1
      {
       can_fast_fall = false;
      }
      if window = 5
      {
       can_fast_fall = true;
      }
	}
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
  if (window == 1)
  {
  	if (window_timer == 21)
  	{
  		sound_play( asset_get( "sfx_swipe_medium1" ) );
  	}
  	if (window_timer < 20) and (window_timer > 10)
  	{
  		can_shield = true;
  	}
  }
  if (was_parried = false)
  {
	can_wall_jump = true;
  if ((window == 2 ) && (!free) && (window_timer > 5))
  {
    set_state( PS_LANDING_LAG );
    landing_lag_time = 17; //15
    hsp = hsp / 3;
  }
 }
  if (window = 1 || window = 2)
  {
   can_fast_fall = 0;
  }

  if (window == 1) and (window_timer < 11)
  {
   upb_dir = joy_dir; 
   set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (24 * cos(degtorad(upb_dir)) ) * spr_dir);
   set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-24 * sin(degtorad(upb_dir)) ));
   if (joy_pad_idle = true)
   {
    upb_dir = 90;
    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -22);
   }
  }

  if (window == 3)
  { 
   set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, (3 * cos(degtorad(upb_dir)) ) * spr_dir);
   set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, (-3 * sin(degtorad(upb_dir)) ));
  }

  if (window == 4)
  {
   if (has_hit)
   {
    destroy_hitboxes();
    if (has_hit_player)
    {
      old_vsp = (old_vsp / 2.1) - 5; // 2.1 - 5.5
      old_hsp = (old_hsp / 1.2); //1.2
    }
    else
    {
      old_vsp = (old_vsp / 2.1) - 5; 
      old_hsp = (old_hsp / 1.7); 
    }
   }
  }

  if (has_hit)
  {
    window = 4;
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

  if (window == 2) and (window_timer == 12)
  {
    sound_play( asset_get( "sfx_swipe_medium2" ) );
  }
  
}

if (attack == AT_NSPECIAL)
{
  if (was_parried == true)
  {
  	window = 4;
  	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 0);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0)
  }

  can_wall_jump = true;

  if (window == 1)
  {
    spindash_timer = spindash_timer_start;
  }

  if (spindash_timer > spindash_limit)
  {
    spindash_timer = spindash_limit;
  }

  if (has_hit == true)
  {
    can_fast_fall = true;
    if (window == 3)
    {
      can_jump = 1;
    }
  }
  else
  {
    can_fast_fall = false;
  }

  if (shield_down == true)
  {
    if (window == 2)
    {
      window = 4;
    }
    if (window == 3)
    {
      window_timer = spindash_timer;
    }
  }

  if (window == 2)
  {
    if (right_down == true)
    {
      spr_dir = 1;
    }
    if (left_down == true)
    {
      spr_dir = -1;
    }

    if (special_down == true)
    {
      spindash_timer += spindash_force;
      set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
    }
    else
    {
      set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
      set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, spindash_timer);
      set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, spindash_timer);
      set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, clamp(spindash_timer/1.5, 3, 10))
      set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, clamp(spindash_timer/1.5, 1, 7));

      if (free)
      {
      	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, spindash_timer / 1.27);
      }
      else
      {
      	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, spindash_timer);
      }
    }
  }

  if (window == 4)
  {
    off_edge = 0; 
    destroy_hitboxes();
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
    if(state_timer % 3 == 0)
    {
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
  }
  if (window == 3)
  {
    if(state_timer % 7 == 0)
    {
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
  }
}

/*
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
*/

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
      move_cooldown[AT_DSPECIAL] = 160;
      var ring = instance_create(x+(spr_dir * 38), y-62, "obj_article2");
      ring.player_id = id;
      ring.player = player;
      ring.spr_dir = spr_dir;
    }
  }
}

//Taunt

if attack == AT_TAUNT 
{
  if window <= 2 
  {
    if (window == 1 && window_timer == 5 && shield_down) 
    {
      attack = AT_TAUNT_2;
    }
  }
}

    //Taunt cancel

if (attack == AT_TAUNT) or (attack = AT_TAUNT_2)
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

//Fstrong woo

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

//Dstrong cancel

if (attack == AT_DSTRONG)
{
	if (window == 1) and (window_timer == 1)
	{
		dstrong_cancel = 0;
	}
	if (dstrong_cancel = 1) and (was_parried = false)
	{
		set_state( PS_IDLE );
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

//Final smash

if attack == 49
{

   //hsp = -2 * (cos(degtorad(joy_dir))) * spr_dir;
   vsp = -5 * (sin(degtorad(joy_dir)));
  can_fast_fall = 0;
  can_move = 1;

  if has_hit and window == 4 and window_timer == 1
  {
    sound_play( sound_get( "argh" ) );
  }
}

//Alternative cosmetics effects with Alt colors

//Normal, Scourge, and Blue Sonic

if (get_player_color( player ) == 0) or (get_player_color( player ) == 5) or (get_player_color( player ) == 7) 
{
  var effect = 196;
  set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, effect);
}

//Fire Sonic
if (get_player_color( player ) == 1)
{
  var effect = 253;
  set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, effect);
}

//Dark spine
if (get_player_color( player ) == 2)
{
  var effect = 204;
  set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, effect);
}

//Shadow
if (get_player_color( player ) == 3)
{
  var effect = 129;
  set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, effect);
}

//Blaze
if (get_player_color( player ) == 4)
{
  var effect = 148;
  set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, effect);
}

//Batman
if (get_player_color( player ) == 6)
{
  var effect = 197;
  set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, effect);
  set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, effect);
}



