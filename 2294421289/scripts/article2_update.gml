//article2_update - ring

if (init == 0){
    init = 1;
    with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id){
			if (state < 2){
				state = 4;
				state_timer = 0;
			}
        }
    }
}
state_timer++;

// // // // STATE 0 - START (AIR)

if (state == 0){
  
  vsp = 0;
  
    if (free) or (!free){
        state = 2;
        state_timer = 0;
    vsp = 0;
    }
}

// // // // STATE 1 - IDLE

if (state == 1){
  
  if (position_meeting(x,y, asset_get("plasma_field_obj"))){
    state = 4;
    state_timer = 0;
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx( x, y, 124 );
  }
  
  if (place_meeting(x, y, asset_get("pHitBox")))
  {
    tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
    tmp_id = tmp_hb_id.player_id;
    if (tmp_id != player_id && tmp_hb_id.type != 1){
      
    }else{
        if (tmp_id == player_id && tmp_hb_id.attack == AT_DSPECIAL && tmp_hb_id.hbox_num == 2 && abs(tmp_hb_id.hsp)==0){
        }else{
          state = 3;
          state_timer = 0;
        }
        sound_play(sound_get("ring"));
        spawn_hit_fx( x, y, tmp_hb_id.hit_effect)
        tmp_id.old_hsp = tmp_id.hsp;
        tmp_id.old_vsp = tmp_id.vsp;
        tmp_id.hitpause = true;
        tmp_id.hitstop = 3;
        tmp_id.hitstop_full = 9; 
        tmp_id.has_hit = true;
        with player_id
        {
         if (free) and (has_hit)
          {
            if (attack == AT_NSPECIAL)
            {
             old_vsp = -5;
            }
            if (attack == AT_USTRONG)
            {
             old_vsp = -15;
            }
            if (attack == AT_FAIR) || (attack == AT_DAIR) || (attack == AT_BAIR) || (attack == AT_UAIR) || (attack == AT_NAIR) || (attack == AT_FSPECIAL) || (attack == AT_DSPECIAL) || (attack == AT_UTILT)
            {
             old_vsp = -12;
            }
          }
          if (!free) and (has_hit)
          {
           if (attack == AT_FTILT) || (attack == AT_DTILT) || (attack == AT_FSTRONG) || (attack == AT_DSTRONG) || (attack == AT_NSPECIAL)
           {
             if (spr_dir == 1)
            {
               old_hsp = (hsp/2) + 11;
            }

            if (spr_dir == -1)
            {
               old_hsp = (hsp/2) - 11;
            }
           }
            if (attack == AT_JAB)
              {
               if (spr_dir == 1)
               {
                old_hsp = 6;
               }
               if (spr_dir == -1)
               {
                old_hsp = -6;
               }
              }
            if  (attack == AT_DATTACK)  
            {
              if (spr_dir == 1)
               {
                old_hsp = 12;
               }
               if (spr_dir == -1)
               {
                old_hsp = -12;
               }
            }
          }
        }
        
    }
  }
  
}

// // // // STATE 2

var stomp_time = 1;
if (state == 2){
  
  
    if (state_timer == stomp_time){
        state = 1;
        state_timer = 0;
    }
}

// // // // STATE 3

var fall_time = 1;
if (state == 3){
  
  
    if (state_timer == fall_time){
        state = 4;
        state_timer = 0;
    }
}


// // // // STATE 4

var end_time = 1;
if (state == 4){
    if (state_timer == end_time){
        instance_destroy();
        exit;
    }
}

