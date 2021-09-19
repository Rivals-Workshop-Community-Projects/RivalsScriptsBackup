
 
 
 if (state == PS_DASH){
     if (state_timer == 6 || state_timer == 12 || state_timer == 18 || state_timer == 24 || state_timer == 30 || state_timer == 36 || state_timer == 42 || state_timer == 48 || state_timer == 52){
     
           spr_rng = random_func(0, 9, true)
      
      if (spr_rng = 0){
    spawn_hit_fx(x - 20 * spr_dir, y - 125, dash_note1);
  } else if (spr_rng = 1){
    spawn_hit_fx(x - 20 * spr_dir, y - 135, dash_note2);
  } else if (spr_rng = 2){
    spawn_hit_fx(x - 20 * spr_dir, y - 120, dash_note3);
  } else if (spr_rng = 3){
    spawn_hit_fx(x - 20 * spr_dir, y - 135, dash_note4);
  } else if (spr_rng = 4){
    spawn_hit_fx(x - 20 * spr_dir, y - 130, dash_note5);
  } else if (spr_rng = 5){
    spawn_hit_fx(x - 20 * spr_dir, y - 122, dash_note6);
  } else if (spr_rng = 6){
    spawn_hit_fx(x - 20 * spr_dir, y - 122, dash_note3);
  } else if (spr_rng = 7){
    spawn_hit_fx(x - 20 * spr_dir, y - 122, dash_note5);
  } else if (spr_rng = 8){
    spawn_hit_fx(x - 20 * spr_dir, y - 122, dash_note6);
                }
 }
}

if(attack == AT_DTHROW && window == 3 && window_timer == 0 || attack == AT_DSPECIAL && window == 3 && window_timer == 0){
    	    spawn_hit_fx(x + 112 * spr_dir, y - 96, dspecial_fx);
}

if (noise_cancel){
    if (!free){
        draw_sprite_ext( sprite_get("stand_nc_flash"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    }
    else if (free) {
             draw_sprite_ext( sprite_get("air_nc_flash"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
   
    }
}

