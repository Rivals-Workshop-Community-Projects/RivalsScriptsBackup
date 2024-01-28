//La Reina articlesolid_update.gml
rising_timer += 1;
lifetime += -1;

var minimum_height = get_stage_data( SD_BOTTOM_BLASTZONE_Y ) - 220 + player_id.ring_height_decay;

if lifetime > 0 {
  if (rising_timer < 3 || y > minimum_height){
    vsp = -20;
  }
  else if (rising_timer >= 4){
    vsp = 0;
  }
} else {
  vsp = max(10, vsp + 1);
  if y > despawn_point { destroy_self = true; }
}

if (destroy_self) {instance_destroy();}
