//La Reina hit_player.gml

// Grabs and valid windows
if ((my_hitboxID.attack == AT_USTRONG && window == 2)
||  (my_hitboxID.attack == AT_FSTRONG && window < 4)
||  (my_hitboxID.attack == AT_BAIR && window == 2)
||  (my_hitboxID.attack == AT_DAIR && window == 3)
||  (my_hitboxID.attack == AT_UAIR && window == 2)
||  (my_hitboxID.attack == AT_UAIR && window == 3)
||  (my_hitboxID.attack == AT_FSPECIAL) // all fspecial windows are valid
||  (my_hitboxID.attack == AT_USPECIAL && window == 3))
&&  (hit_player_obj.super_armor != true) { // don't grab armored opponents
  if attack != AT_DAIR {destroy_hitboxes();}
  if attack == AT_UAIR {sound_play(asset_get("sfx_clairen_swing_strong"), false, noone, 0.7, 0.9);}
  grab_victim = hit_player_obj;
  // spawn magnet hitfx
  /* if attack == AT_USTRONG {
    active_magnet_fx = spawn_hit_fx(x, y, hitfx_magnet_inward_slow);
  } else if attack == AT_USPECIAL {
    active_magnet_fx = spawn_hit_fx(x, y, hitfx_magnet_inward_big);
  } else if attack == AT_FSPECIAL || attack == AT_FSTRONG || attack == AT_UAIR {
    active_magnet_fx = spawn_hit_fx(x, y, hitfx_magnet_inward_small);
  } */
} else if attack == AT_USPECIAL && window > 6 {
  if (instance_exists(grab_victim)){
    grab_victim.wrap_time = 0;
    grab_victim.gethit_grabbed = noone;
    grab_victim = noone;
  }
} else if attack == AT_NSPECIAL_2 {
  sound_play(rolling_hit_sfx);
} else if attack == AT_FAIR && my_hitboxID.hbox_num == 2 {
  sound_play( fair_sweetspot_sfx, false, noone, fair_sweetspot_volume );
}  else if attack == AT_UAIR && my_hitboxID.hbox_num == 2 {
  if instance_exists(grab_victim) && hit_player_obj == grab_victim {
    var xoff = 10*spr_dir; yoff = - 19;
    var rightfx = spawn_hit_fx(my_hitboxID.x+xoff, my_hitboxID.y+yoff, 303);
    rightfx.spr_angle = 0;
    var rightfx = spawn_hit_fx(my_hitboxID.x-xoff, my_hitboxID.y+yoff, 303);
    rightfx.spr_dir = -spr_dir;
  }
}

if !chair_cooldown_by_destruction {
  move_cooldown[AT_NSPECIAL] = 0;
  move_cooldown[AT_DSPECIAL] = 0;
} else {
  move_cooldown[AT_NSPECIAL] -= 60;
  move_cooldown[AT_DSPECIAL] -= 60;
  chair_hit_add_opacity = 1;
}
