if attack == AT_NSPECIAL {
  if (window == 1 && instance_exists(myChair)){
    if move_cooldown[AT_NSPECIAL] <= 0 {
      attack = AT_DSPECIAL_2;
      set_attack(AT_DSPECIAL_2);
      hurtboxID.sprite_index = sprite_get("pullchair_hurt")
    } else {
      attack_end();
    }
  }
} else if attack == AT_DSPECIAL {
  if instance_exists(myChair) {
    if move_cooldown[AT_NSPECIAL_2] > 0 {
      attack_end();
    }
    if move_cooldown[AT_NSPECIAL] > 0 || !can_create_air_chair {
      attack_end();
    }
  }
} else if attack == AT_DATTACK {
  dattack_starting_y = y;
} else if attack == AT_FSTRONG {
  reset_attack_value( AT_FSTRONG, AG_CATEGORY);
}

// Ensure that grab_victim is released when starting a new move
if (instance_exists(grab_victim)){
  grab_victim.wrap_time = 0;
  grab_victim = noone;
}
can_summon_ring = true;
