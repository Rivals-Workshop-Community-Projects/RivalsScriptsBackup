//Sleep Animation Handler, Don't touch this!
if(ssl_sleep_enabled and "ssl_sleep_lag" in self and ssl_sleep_lag > 0 and (state == PS_PRATFALL or state == PS_PRATLAND)){
  sprite_index = sprite_get("ssl_sleep");
  image_index = (ssl_sleep_lag*ssl_sleep_anim_speed)%ssl_sleep_anim_frames;
}

//#region // SSL Effects ---------------------------------------------------

with (hit_fx_obj) if (player == other.player) //effect depth
{
  if (depth == 3) depth = player_id.depth-1;
  if (hit_fx == other.dust_effect[24]) vsp += 0.5; //kill effect stars have "gravity"
}

//remove dust from existance (not really we are just pushing it off-screen)
//original code by FQF (from QUA mario)
with (asset_get("new_dust_fx_obj"))
{
  //other.dust_effect[dust_fx] != 0 checks the array, dust_fx <= 24 && dust_fx >= 0 checks the dusts
  if (dust_fx <= 24 && dust_fx >= 0 && player == other.player && x != -3000 && dust_depth != 40000 && other.dust_effect[dust_fx] != 0)
  {
    //steal dust values
    var effect = other.dust_effect[dust_fx];
    var spawn_x = x;
    var spawn_y = y;
    var dust_angle = draw_angle;
    var dust_depth1 = dust_depth;
	
    //spawn new dusts
    with (other)
    {
        //exceptions
      switch (other.dust_fx)
      {
        case 3: case 4: effect = dust_effect[5]; break; //dash start / dash use the walk dust
        case 8: //wall hit bounce - when hitting the celling it should be rotated properly
          if (hit_player_obj.vsp != 0 && hit_player_obj.free && dust_angle == 0) dust_angle = 180; //celling bounce
          dust_depth = hit_player_obj.depth - 1;
          break;
      }
      
      //spawn effect
      if(other.dust_fx == 13){
      	dust_trail_position++;
      	if(dust_trail_position >= dust_trail_size){
      		dust_trail_position = 0;
      	}
      	if(get_player_color(player) == 0){
      		dust_trail[dust_trail_position] = {x:spawn_x, y:spawn_y, sprite_index:sprite_get("dust_fly_color"), image_alpha:1, image_index:0, life:0, draw_angle:dust_angle, dust_depth:dust_depth1, depth:dust_depth1 }
      	} else {
      		dust_trail[dust_trail_position] = {x:spawn_x, y:spawn_y, sprite_index:sprite_get("dust_fly_large"), image_alpha:1, image_index:0, life:0, draw_angle:dust_angle, dust_depth:dust_depth1, depth:dust_depth1 }
      	}
      } else {
    	var new_dust_fx = spawn_hit_fx(spawn_x, spawn_y, effect);
    	new_dust_fx.draw_angle = dust_angle;
    	new_dust_fx.dust_depth = dust_depth1;
    	new_dust_fx.depth = dust_depth1;
    	new_dust_fx.hsp = other.hsp;
    	new_dust_fx.vsp = other.vsp;
      }
    }
    
    //"remove" dust by moving to a place nobody will see
    if(dust_fx == 13){
  		dust_depth = 40000;
    }else{
			x = -3000;
			y = -3000;
			dust_length = 0;
    }
  }
}

for(var _i = 0; _i < dust_trail_size; _i++){
    dust_trail[_i].life++;
    if(dust_trail[_i].life <= 16){
        dust_trail[_i].image_alpha = min(.25, (17-dust_trail[_i].life)/20);
        dust_trail[_i].image_index = floor((dust_trail[_i].life/3)%6);
    } else {
        dust_trail[_i].image_alpha = 0;
    }
}
//#endregion