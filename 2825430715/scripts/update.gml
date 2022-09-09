//


if stamina < 150 && !free && abs(hsp) <= 3 && !hitpause {
    stamina += 0.6
}

if free {
    if vsp > 10 {
        gonnaflop = true 
    } else {
        gonnaflop = false 
    }
} 

if state == PS_HITSTUN_LAND {
    oldhsp = hsp
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1)
        move_cooldown[AT_JAB] = 5
        set_attack(AT_DTILT)
        window = 1
        window_timer = max(0,20 - round(abs(hsp*1.5)))
}

if state == PS_WALK && state_timer > 5 && state_timer < 30 {
    parryside = spr_dir
} else {
    parryside = 0
}


if (state == PS_LAND && random_func(2,10,true) == 0 && state_timer == 1) 
or (state == PS_DASH_STOP && random_func(2,10,true) == 0 && state_timer == 1) 
or (state == PS_DASH_TURN && random_func(2,20,true) == 0 && state_timer == 1) 
or (state == PS_DASH_START && random_func(2,20,true) == 0 && state_timer == 1)
or (state == PS_LAND && gonnaflop == true && state_timer == 1) {
    
        if floor(x)%2 == 0 {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop1"));
        } else {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop2"));
        }
        
        sound_play(asset_get("sfx_blow_medium3"),false,noone,.8,1)
        take_damage(player,-1,5)
        
        move_cooldown[AT_JAB] = 5
        
        set_attack(AT_FTILT)
        window = 1
        window_timer = 0
        gonnaflop = false 
} 

if move_cooldown[AT_DTHROW] == 0 {
  if state != PS_AIR_DODGE{
      oldhsp = hsp 
      oldvsp = vsp
  } else {
      set_attack(AT_DTHROW)
      window = 1
      window_timer = 0
      hsp = oldhsp 
      vsp = oldvsp - 2
  }
}

if state == PS_PARRY {
    set_attack(AT_NSPECIAL_2)
    window = 1
    window_timer = 0
}

if abs(hsp) > 3 && !hitpause {
    stamina --
}

if state == PS_JUMPSQUAT {
    if state_timer == 1 && !hitpause {
         move_cooldown[AT_DTHROW] = 10
        stamina -= 20
         sound_play(asset_get("sfx_swipe_medium1"),false,noone,.4,.9)
    }
}

if state == PS_RESPAWN or state_cat == SC_HITSTUN or !free or state == PS_WALL_JUMP {
    move_cooldown[AT_USPECIAL] = 0
}

if state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD {
     set_attack(AT_FTHROW)
        window = 1
        window_timer = 0
        stamina += 10
}

if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) {
    attacking = true 
} else {
    if stamina < 0 && !free {
        sound_play(asset_get("sfx_blow_medium2"),false,noone,.5,.9)
        set_attack(AT_UTHROW)
        window = 1
        window_timer = 0
        stamina = 150
    }
    attacking = false
}