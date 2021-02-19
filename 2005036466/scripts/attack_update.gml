//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// OHC (on hit cancel) tiers are as followed: Tier 1 - 4. Specials count as Tier 4.
if babymode = 0{
    // Tier 1 - Can cancel into tilts, strongs, and specials
    if (attack == AT_JAB && window <= 3 && has_hit_player){
      can_strong = true;
      can_ustrong = true;
      can_special = true;
      can_jump = true;
      cancel_ready_tier1 = true;
      cancelable_active = true;
      move_cooldown[AT_JAB] = 20;
    }

    if (attack == AT_JAB && (window > 3 && window < 7) && has_hit_player){
      can_attack = true;
      can_strong = true;
      can_ustrong = true;
      can_special = true;
      can_jump = true;
      cancel_ready_tier1 = true;
      cancelable_active = true;
      move_cooldown[AT_JAB] = 20;
    }

    else if (attack == AT_DATTACK && has_hit_player){
      can_attack = true;
      can_strong = true;
      can_ustrong = true;
      can_special = true;
      can_jump = true;
      cancel_ready_tier1 = true;
      cancelable_active = true;
      move_cooldown[AT_JAB] = 10;
      // Prevents Dash Attack from sending the player flying
      if attack_pressed || special_pressed || up_strong_pressed || down_strong_pressed || right_strong_pressed || left_strong_pressed
        {
        old_hsp *= 0;
        }
    }

    // Tier 2 - Can cancel into strongs and specials
    if ((attack == AT_FTILT || attack == AT_UTILT || attack == AT_DTILT) && has_hit_player){
      can_strong = true;
      can_ustrong = true;
      can_special = true;
      cancel_ready_tier2 = true;
      cancelable_active = true;
    }

    // Tier 3 - Can cancel into specials
    if ((attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && has_hit_player){
      can_special = true;
      cancel_ready_tier3 = true;
      cancelable_active = true;
    }
    // Aerials are counted as Tier 3
    else if ((attack == AT_NAIR || attack == AT_FAIR || attack == AT_BAIR || attack == AT_UAIR || attack == AT_DAIR) && has_hit_player){
      can_special = true;
      cancel_ready_tier3 = true;
      cancelable_active = true;
    }

    //Turn off cancel ready when you can no longer cancel your strikes.
    if (window == get_attack_value(attack, AG_NUM_WINDOWS) and window_timer == get_window_value(attack, get_attack_value(attack, AG_NUM_WINDOWS), AG_WINDOW_LENGTH))
      {
      cancel_ready_tier1 = false;
      cancel_ready_tier2 = false;
      cancel_ready_tier3 = false;
      cancelable_active = false;
      }
}
// NORMAL MOVE THINGS

if (attack == AT_FAIR or attack == AT_USPECIAL or attack == AT_USPECIAL_2 or attack == AT_FSPECIAL_AIR or attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR) {
  can_wall_jump = true;
}

if (attack == AT_DTHROW){
  move_cooldown[AT_DTHROW] = 20;
  if window == 2{
    invincible = true;
  } else {
    invincible = false;
  }
  if window == 3 and window_timer <= 5{
      if babymode == 0{
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_special = true;
      }
  }
  if window == 3 and window_timer == 8{
    if babymode == 0{
        can_parry = true;
    }
  }
}

if (attack == AT_FSTRONG)
  {
    if (strong_charge < 10)
      {
      set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
      set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .5);
      }
    else
      {
      set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7.5);
      set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.5);
      }
  }

if (attack == AT_DTILT){
  if (window == 1){
    if (spr_dir == 1){
      // right.
      if (right_down && down_down){
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
      }
      else if (left_down && down_down){
        trigger_b_reverse();
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
      }
      else if (down_down && (!left_down && !right_down)){
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
      }
    }
    else if (spr_dir == -1){
      // right.
      if (left_down && down_down){
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
      }
      else if (right_down && down_down){
        trigger_b_reverse();
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
      }
      else if (down_down && (!left_down && !right_down)){
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
      }
    }
  }
}

if (attack == AT_DTILT && has_hit_player){
    if babymode == 0{
        can_jump = true;
    }
}

if (attack == AT_UTILT){
  can_fast_fall = false;
  // change the move category to prevent funny haha tilt spam
  if (window_timer >= 1){
    if (window >= 3){
      set_attack_value(AT_UTILT, AG_CATEGORY, 1);
    } else {
      set_attack_value(AT_UTILT, AG_CATEGORY, 2);
    }
  }

  if (has_hit_player){
    can_jump = true;
    if (free and babymode == 0){
      can_attack = true;
    } else {
      can_attack = false;
    }
  }
}

if (attack == AT_USTRONG && window <= 3){
  trigger_b_reverse();
}

if (attack == AT_USTRONG){
    if (window == 1 && window_timer <= 6){
        if (spr_dir == 1){
            if right_down{
                set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 3);
            } else {
                set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 2);
            }
        } else {
            if left_down{
                set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 3);
            } else {
                set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 2);
            }
        }
    }
    if ((has_hit_player && (window <= 6 && window > 5)) and babymode == 0){
    can_jump = true;
    }
    can_fast_fall = false;
    // change the move category to prevent funny haha tilt spam
    if (window_timer >= 1){
    if (window >= 4){
      set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
    } else {
      set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
    }
    }
}

if (attack == AT_DAIR){
  if window >= 4 and has_hit_player{
    can_fast_fall = true;
  } else {
    can_fast_fall = false;
  }

  if ((window < 3) and has_hit_player)
    {
    if ((down_pressed and attack_pressed) or (down_down and attack_pressed))
      {
      window = 3;
      window_timer = 0;
      }
    }
}

if (attack == AT_NSPECIAL or attack == AT_NSPECIAL_AIR){
  move_cooldown[AT_NSPECIAL] = 40;
  move_cooldown[AT_NSPECIAL_AIR] = 40;
}

if (attack == AT_NSPECIAL)
  {
  if (window == 3 and window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH))
    {
    set_state(PS_IDLE);
    }
  if (window == 4 and free)
    {
    vsp = -1.5;
    }
  }

if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR){
  if (has_hit_player){
    move_cooldown[AT_FSPECIAL] = 60;
    move_cooldown[AT_FSPECIAL_AIR] = 60;
  } else {
    move_cooldown[AT_FSPECIAL] = 30;
    move_cooldown[AT_FSPECIAL_AIR] = 30;
  }
}

if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR){
  if (spr_dir == 1){
    if (window == 1 && (left_down or left_pressed)){
      trigger_b_reverse();
    }
  }
  if (spr_dir == -1){
    if (window == 1 && (right_down or right_pressed)){
      trigger_b_reverse();
    }
  }
}

if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR)
{
  if (window == 2 and grabbedid != noone)
    {
        grabbedid.ungrab = 0;
        grabbedid.invincible = true;
        grabbedid.x = lerp(grabbedid.x, x + spr_dir * 50, .6);
        grabbedid.y = y;
        grabbedid.spr_dir = -spr_dir;
        grabbedid.wrap_time = 30;
        grabbedid.state = PS_WRAPPED;
        window = 4;
        window_timer = 0;
    }
  if (grabbedid != noone and window == 4 and window_timer == 16)
  {
    {
        grabbedid.ungrab = 0;
        grabbedid.state = PS_TUMBLE;
        grabbedid.X = lerp(grabbedid.x, x+(spr_dir * 45), .6);
        grabbedid.y = y;
        grabbedid = noone;
        //djumps = 0; //This is the Fun Jump Feature but Penny made me remove it T-T
        // Love you Ruby
    }
  }
  if (window == 4){
      can_fast_fall = true;
  } else {
      can_fast_fall = false;
  }
}

if (attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR){
  move_cooldown[AT_DSPECIAL] = 15;
  move_cooldown[AT_DSPECIAL_AIR] = 15;
}

if (attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR){
  if (window == 1 or window == 3){
    invincible = false;
  }
  if (window == 2){
    invincible = true;
  }
  if (window == 2 && window_timer >= 8){
    invincible = false;
    if babymode == 0{
        iasa_script();
    }
  }
  if window == 3 and babymode == 0{
    iasa_script();
  }
}

if (attack == AT_DSPECIAL_AIR or attack == AT_DSPECIAL){
  if (spr_dir == 1){
    if (window == 1 && (left_down or left_pressed)){
      trigger_b_reverse();
    }
  }
  if (spr_dir == -1){
    if (window == 1 && (right_down or right_pressed)){
      trigger_b_reverse();
    }
  }
}

if (attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR){
    if (window == 2 and babymode == 0){
        can_jump = true;
    }
    can_fast_fall = false;
    if babymode == 0{
        can_move = false;
    }
}

if (attack == AT_USPECIAL)
  {
  /*
  //Command grab, should the need arise. And I hope it does not.
  if (has_hit_player and (window >= 2 and window <= 9))
    {
    for (var i = 0; i < array_length(uspecial_playerlist); i++)
      {
      uspecial_playerlist[i].x = x + (30 * spr_dir);
      uspecial_playerlist[i].y = y;
      }
    }
  */
  if (window == 10)
    {
    var time_before_strike = get_window_value(attack,window,AG_WINDOW_LENGTH) - get_hitbox_value(attack,9,HG_WINDOW_CREATION_FRAME);
    if (window_timer < time_before_strike - 4 && !hitpause)
      {
      if (up_down)
        {
        vsp = -6;
        }
      else
        {
        vsp = 0;
        }
      }
    }
  can_fast_fall = false;
  if window == 9 and window_timer > 6
    {
    if special_down or special_pressed
      {
      window = 10;
      window_timer = 0;
      }
    }
  if window == 9 and window_timer == 17
    {
    set_state(PS_PRATFALL);
    }
  }

if (attack == AT_USPECIAL_2)
  {
  can_fast_fall = false;
  }

//This is for angling u-special.
if ((attack == AT_USPECIAL or attack == AT_USPECIAL_2) and window > 1 and window < 9)
  {
  if (spr_dir == 1) //Facing right.
      {
      if (right_down)
        {
        set_window_value(attack, window+1, AG_WINDOW_HSPEED, 3.5);
        }
      if (left_down)
        {
        set_window_value(attack, window+1, AG_WINDOW_HSPEED, 2);
        }
      }
  if (spr_dir == -1) //Facing Left.
      {
      if (right_down)
        {
        set_window_value(attack, window + 1, AG_WINDOW_HSPEED, 2);
        }
      if (left_down)
        {
        set_window_value(attack, window + 1, AG_WINDOW_HSPEED, 3.5);
        }
      }
  if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
        {
        reset_window_value(attack, window, AG_WINDOW_HSPEED);
        }
  }

// Abyss Rune shit
if attack == AT_DSTRONG_2{
  if window_timer >= 8 and babymode == 0{
    iasa_script();
  }
}
