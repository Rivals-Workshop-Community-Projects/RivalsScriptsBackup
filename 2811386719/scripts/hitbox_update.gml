if(attack == AT_USPECIAL and hbox_num == 1){
    if(player_id.window_timer > 0 and (player_id.window == 2 or player_id.window == 3)){
        if (player_id.image_number > 1){
            // print_debug(string(player_id.image_index%player_id.image_number - 2))
            var new_x = player_id.x + spr_dir*hitbox_pos[player_id.image_index%player_id.image_number - 3][0];
            var new_y = player_id.y - hitbox_pos[player_id.image_index%player_id.image_number - 3][1];
            
            // print_debug(string(hitbox_pos[player_id.image_index%player_id.image_number - 2].x_pos));
            // print_debug(string(hitbox_pos[player_id.image_index%player_id.image_number - 2].y_pos));
            x = new_x;
            y = new_y;
            player_id.fly_dir = point_direction(player_id.x, player_id.y - player_id.char_height/2, x, y);
            
            var grb = player_id.grabbed_player_obj;
            if instance_exists(grb){
	            var dists = point_distance(grb.x, grb.y, x, y)
	            if(dists > 90) player_id.grabbed_player_obj = noone;
            }
        }
        // var angle = player_id.fly_dir;
        // //spr_angle = fly_dir - 90;
        // var offset = player_id.char_height/2;
        // //image_number = 5 + vsp;
        // var new_x = (player_id.x) + lengthdir_x(offset, angle);
        // var new_y = (player_id.y - player_id.char_height/2) + lengthdir_y(offset, angle);
        // x = new_x;
        // y = new_y;
        
    }
    if(player_id.attack != AT_USPECIAL or player_id.state != PS_ATTACK_AIR or (player_id.window < 1 or player_id.window > 3) and player_id.attack == AT_USPECIAL){
        destroyed = true;
    }
    
    //draw_sprite_ext(sprite_get("uspecial"), 4, new_x, new_y, 1, 1, 100, c_white, 255);
}

if(attack == AT_DSPECIAL){
  if(hbox_num == 3 or hbox_num = 4){
  	draw_xscale = spr_dir
  	kb_value += 1/8
    if(mark_for_destruction) destroyed = true;
    if !ground_col(){
      var it = 0;
      while(!ground_col() and it < 50){
      	it++
        hsp = hsp - spr_dir;
      }
      mark_for_destruction = true;
      var temp = spawn_hit_fx(x, y, hbox_num == 3 ? player_id.wave_fx : player_id.electric_wave_fx);
      temp.spr_dir = spr_dir;
    }else{
      if (hitbox_timer % 3 == 2){
          var temp = spawn_hit_fx(x+hsp, y, hbox_num == 3 ? player_id.wave_fx : player_id.electric_wave_fx);
          temp.spr_dir = spr_dir;
      }
    }
  }
}



if(attack == AT_FSTRONG){
  // if(hbox_num == 2){
  // 	through_platforms = 2;
  //   var target = noone;
  //   var max_ball_turning_speed = 15; //Degrees
  //   var dist = 9999;
    
  //   //hoam to the nearest player
  //   with oPlayer{
    
  //     if(id != other.player_id and (target == noone or point_distance(other.x, other.y, x, y) < dist)){
  //       target = id;
  //       dist = point_distance(other.x, other.y, x, y);
  //     }
      
  //   }
  //   var dir = point_direction(x, y, target.x, target.y - 35);
						
		// if(was_parried) destroyed = true;
		
  //   	hsp += lengthdir_x(0.1, dir);
  //   	vsp += lengthdir_y(0.1, dir);
    	
  //   	var pit = sqrt(hsp*hsp + vsp*vsp);
    	
  //   	if(pit > 8){
  //   		hsp -= hsp/(pit*3);
  //   		vsp -= vsp/(pit*3);
  //   }
  // }
  if(hbox_num == 3){
    //print(image_xscale)
    image_xscale = set_image_xscale;
    //print(image_index)
  }
  
}

if(attack == AT_USPECIAL_2 and hbox_num == 2){
    if(hitbox_timer	== length){
        // print(lvl)
        if(lvl < 8){
            
                var hboxs = create_hitbox(attack, 2, x, y);
                hboxs.lvl = lvl + 1;
                
        }else{
            with player_id{
                var hboxs = create_hitbox(attack, 3, other.x, other.y);
                
            }
        }
    }
}

if(bubble){
	if(hitbox_timer == length) with player_id spawn_dust_fx(other.x, other.y, orb_dissipate_spr, 7);
  // owner = player_id;
  // if(was_parried) destroyed = true;
  through_platforms = 2;
  var play_sound = false;
  hitbx = ds_list_create();
  var hbi = noone;
  var acc_x = 0;
  var acc_y = 0;
  
  if(hitstop){
  	hitstop--;
  	in_hitpause = true;
  } else{
  	in_hitpause = false;
  }
  
  if(volley_cooldown) volley_cooldown--;
  
  with(oPlayer){
  	if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and window == 1){
  		other.last_hitbox_group[player] = [];
  	}
  }
  
  var _num = instance_place_list(floor(x), floor(y), pHitBox, hitbx, true);
  
	// var ls = ds_list_create()
	// variable_instance_get_names(id,ls)
	
	// // instance_destroy(wat_dust);
	// for (var i = 0; i < ds_list_size(ls); i++){
	//   if(string_pos("hit",ls[| i])){
	    
	//     print(ls[| i])
	//   }
	// } 
	// ds_list_destroy(ls);
  // print(in_hitpause)
  
  // if(!in_hitpause and _num > 0){
  // 	var highest_prio = noone;
  // 	highest_prio = highest_priority();
  	
  // 	if(highest_prio != noone){
  // 		if(last_attack != highest_prio.attack){ // Ignore same attack
	 // 		last_hitbox_group = []
	 // 		last_attack = highest_prio.attack;
	 // 		// for(var i = 1; i <= 4; i++) can_hit[i] = true;
	 // 	}
  // 	}
  // }
  if(!volley_cooldown and !in_hitpause and _num > 0){
  	var highest_prio = noone;
		highest_prio = highest_priority(_num);
  	
  	if(highest_prio != noone){
  		// if(last_attack != highest_prio.attack or highest_prio.player_id != owner){
  		// 	owner = highest_prio.player_id;
	  	// 	last_hitbox_group[player] = [];
	  	// 	last_attack = highest_prio.attack;
	  	// 	// for(var i = 1; i <= 4; i++) can_hit[i] = true;
	  	// }
	  	
	  	owner = highest_prio.player_id;
	  	
	  	var len = array_length(last_hitbox_group[player]);
	  	var a = array_find_index(last_hitbox_group[player], highest_prio.hbox_group);
	  	if(len == 0){ for(var i = 1; i <= 4; i++) can_hit[i] = true; }
	  	if(len == 0 or a == -1){
	  		
  			play_sound = true;
				var ang = get_hitbox_angle(highest_prio);

				var knockback_adj = 0.9;
				var kb = highest_prio.kb_value + highest_prio.damage * highest_prio.kb_scale * 0.12 * knockback_adj;

				kb *= 1;
				// print(ang)
				if(ang < 180 and ang != 90){
					ang = (ang < 90) ? ang - 18 : ang + 18;
				}
		  	// print(kb)
		  	// print(ang)
		  	hsp = lengthdir_x(kb, ang);
		  	vsp = lengthdir_y(kb, ang);
			  	
	  		
	  	}else{
	  		
	  	}
	  	
	  	last_hitbox_group[@player][@ len] = highest_prio.hbox_group;
	  	
	  	
	  	if(play_sound and !in_hitpause){
	  		volley_cooldown += 3;
	  		sound_play(asset_get("sfx_absa_singlezap1"));
	  		sound_play(asset_get("sfx_blow_weak1"));
	  		shake_camera(2, 2)
	  		with owner{
	  			// sound_play(get_hitbox_value(attack, highest_prio.hbox_num, HG_HIT_SFX));
	  			var a = spawn_hit_fx(other.x, other.y, 304)
	  			a.pause = 8;
	  		// 	hitpause = true;
					// hitstop_full = 3 + (1 * get_hitbox_value(attack, highest_prio.hbox_num, HG_HITPAUSE_SCALING)*.05);
					// hitstop = hitstop_full;
					// old_hsp = hsp;
					// old_vsp = vsp;
					
					// print(hitstop)
	  		}
				// hitstop_full = 3;
				// hitstop = hitstop_full;
	  	}
  	}
  	
  	
  }
  ds_list_destroy(hitbx);
  
  // if(vsp < 5) acc_y += 0.15;
  
  if(static){

    var target = noone;
    var max_ball_turning_speed = 15; //Degrees
    var dist = 9999;
    
    //hoam to the nearest player
    with oPlayer{
    
      if(id != other.player_id and (static_pull > 0 or other.attack == AT_FSTRONG) and (target == noone or point_distance(other.x, other.y, x, y) < dist)){
        target = id;
        dist = point_distance(other.x, other.y, x, y);
      }
      
    }
    if(target){
    	var dir = point_direction(x, y, target.x, target.y - 35);
						
			
			
	  	acc_x += lengthdir_x(0.06, dir);
	  	
	  	acc_y += lengthdir_y(0.26, dir);
	  	acc_y = min(acc_y, 0.1)
	  	var pit = sqrt(hsp*hsp + vsp*vsp);
	  	
	  	if(attack == AT_FSTRONG and pit > 3.5){
	  		hsp -= hsp/(pit*9);
	  		vsp -= vsp/(pit*9);
	    }
    }
    
  }
  // print(acc_x)
  
  
  
  
  if(place_meeting(x, y, solids) and vsp == 0){
  	if(old_vsp > 0.5){
  		vsp = old_vsp*-1*0.85;
	  	var vol = clamp(abs(vsp/20), 0, 0.15);
	  	var pitch = clamp(1/vol, 1, 2);
	  	sound_play(asset_get("sfx_absa_cloud_placepop"), false, noone, vol, 1/vol)
	  }
	}
  	
  hsp += acc_x
  vsp += acc_y
  
  if(point_distance(x, y, owner.x, owner.y - 50) > 1500){
  	destroyed = true
  }
  
  old_hsp = hsp;
  old_vsp = vsp;
  
}
#define highest_priority(_num)

for(var i = 0; i < _num; i++){
	var temp = noone;
	var hbi = hitbx[| i];
	if((player == hbi.player or hbi.player_id.url == "2811386719") and hbi.type == 1){
		
		if(temp == noone or temp.hit_priority < hbi.hit_priority){
			temp = hbi;
		}
	}
}

return temp
#define ground_col()

return (position_meeting(x + spr_dir*(hbox_width/2) + hsp, y + 1, solids) or position_meeting(x + spr_dir*(hbox_width/2) + hsp, y + 1, plats))