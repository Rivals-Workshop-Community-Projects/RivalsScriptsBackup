//hitbox_update

if (attack == AT_NSPECIAL){
  if (place_meeting(x, y-2, asset_get("par_block"))){
      
       spawn_hit_fx( x, y - 40, bcd ); 
       sound_play(asset_get("sfx_clairen_tip_med"));
      instance_destroy();
      exit;
  }
}