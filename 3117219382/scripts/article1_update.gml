if(_init){
	spr_ind = lvl == 1 ? sprite_get("slash_frozen_small") : sprite_get("slash_frozen");
	break_spr = lvl == 1 ? sprite_get("slash_break_small_fx") : sprite_get("slash_break_big_fx");
	_init = false;
}

//article1_update.gml
if(!hitstop) state_timer++;

if (state == AS_SPAWN){
	var spawn_time = 15
  img_ind = (state_timer*3)/spawn_time;
  point_ind = (state_timer*4)/spawn_time;
  
  if(state_timer > spawn_time){
  	state = AS_IDLE;
  	state_timer = 0;
  }
}
if (state == AS_IDLE){
	var active_time = 6*60;
	
	
	// Timers
	if(!hitstop){
		if(timer_for_destruction > 0) timer_for_destruction += 1
	}
	point_ind = (state_timer%90) < 30 ? (4 + (state_timer%90)*5/30) : 9;
	
  img_ind = 3 + timer_for_destruction*5/active_time;
  
  if(timer_for_destruction >= active_time){
  	// spawn_hit_fx(x,y,player_id.slash_break_hfx)
  	state = AS_BREAK;
  	state_timer = 0;
  }
}

if(state == AS_BREAK){
	var break_time = 20;
	
	img_ind = state_timer*4/break_time;
	spr_ind = break_spr;
	if(state_timer >= break_time){
		instance_destroy(self);
		exit;
	}
}

article_width = mist_distance[lvl-1];

image_xscale = article_width/450;
image_yscale = 1
image_angle = spr_dir*point_direction(0,0, dcos(article_angle), -dsin(article_angle))

if(expand_timer < expand_time){
	expand_timer++;
}

// print(num)

#macro AS_SPAWN 0
#macro AS_IDLE 1
#macro AS_BREAK 2