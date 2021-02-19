//hit_player.gml
// Variable Definition
//var hitmove = my_hitboxID.attack; // Checks the hitbox of the attack

if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR) {
  if (window == 2 and grabbedid == noone and !hit_player_obj.clone) {
    hit_player_obj.grabbed = 1;
    grabbedid = hit_player_obj;
    hit_player.super_armor = false;
    grabbedid.ungrab = 0;
  }
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) {
  if (grabbedid != noone) {
    grabbedid.ungrab = 0;
    grabbedid = noone;
  }
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 2) {
  if (grabbedid != noone) {
    grabbedid.ungrab = 0;
    grabbedid = noone;
  }
}

if (attack == AT_USPECIAL)
  {
  with hit_player_obj
    {
    other.uspecial_playerlist[array_length(other.uspecial_playerlist)] = id;
    }
  }

if trumarvel{ //yo you wanna learn how to do a fuckin' infinite
  if xfactor_is_active{
    if xfactor_lvl == 1{
      take_damage(hit_player_obj.player,player,floor(my_hitboxID.damage*0.35));
    }
    if xfactor_lvl == 2{
      take_damage(hit_player_obj.player,player,floor(my_hitboxID.damage*0.6));
    }
    if xfactor_lvl == 3{
      take_damage(hit_player_obj.player,player,floor(my_hitboxID.damage*0.85));
    }
  }
}
