//hitbox_update

// if (attack == AT_NSPECIAL){
//   if (place_meeting(x, y-2, asset_get("par_block"))){
      
//       spawn_hit_fx( x, y - 40, bcd ); 
//       sound_play(asset_get("sfx_clairen_tip_med"));
//       instance_destroy();
//       exit;
//   }
// }

if (attack == AT_NSPECIAL){
    if (was_parried){
        if (!free){
            image_index = 10;
            length = 220;
        }
        
        if (free){
            was_parried = false;
            hsp = 9*spr_dir;
            vsp = -9;
            image_index = 1;            
        }
    }
    if (image_index > 6){
        
        image_yscale = 0.05
        image_xscale = 0.13
        
    }
}