
var input_test = false;
//uncomment this for easy laststock testing
/*with (oPlayer){
	if (shield_down){ input_test = true; }
}*/

if (fake_laststock){
	ko_timer = 202020;
}

if (!stg_init&&get_gameplay_time()>4){
	/*
	//rc = roomcenter (hopefully)
	//print(string(rc))
	var vc = room_height/2
	//print(string(vc));
	
	rocks = instance_create(rc+100, vc+236, "obj_stage_article", 10);
	ui = instance_create(rc-7, vc+155, "obj_stage_article", 11);
	
	//instance_create(rc, vc-180, "obj_stage_article", 13);
	var rw = round(room_width/2)
	var rh = round(room_height/2)
	instance_create( rw, rh-43, "obj_stage_article", 20 );
	instance_create( rw, rh+50, "obj_stage_article", 21 );
	instance_create( rw, rh-43, "obj_stage_article", 22 );
	
	
	
	*/
	var is_twenny = 0;
	var url_rng_technology = 0;
	with (asset_get("oPlayer")){
		if (clones_player_id == -4){
			if(url == "3353256940"){
				is_twenny = player;
			}
			other.player_count++;
		}
		if(url != ""){
			url_rng_technology = url_rng_technology + real(url);
		}
	}
	player_boredom_change();
	player_boredom_timer+=(url_rng_technology%20)*20;
	var rng_gets_rngier = 1+(url_rng_technology%player_count);
	//print("url_rng = "+string(url_rng_technology))
	//print("rngier = "+string(rng_gets_rngier))
	interest_change(rng_gets_rngier)
	if (is_twenny!=0){
		twenny_found = true;
		//print("alert; twenny has been found in the match")
		/*print("twenny found at player "+string(is_twenny))
		interest_change(is_twenny)
		player_boredom_timer*2;*/
	}
	
	monitors_id[0] = instance_create( 332, 304, "obj_stage_article", 1 ); monitors_id[0].tvnum = 0;
	monitors_id[1] = instance_create( 608, 316, "obj_stage_article", 1 ); monitors_id[1].tvnum = 1; monitors_id[1].spr_dir = -1;
	monitors_id[2] = instance_create( 708, 376, "obj_stage_article", 1 ); monitors_id[2].tvnum = 2;
	monitors_id[3] = instance_create( 976, 238, "obj_stage_article", 1 ); monitors_id[3].tvnum = 3; monitors_id[3].spr_dir = -1;
	focus_id = instance_create( room_width/2, room_height/2, "obj_stage_article", 2 );
	stg_init = true;
}else{
	//print("["+string(monitors_id[0].tvread)+","+string(monitors_id[1].tvread)+","+string(monitors_id[2].tvread)+","+string(monitors_id[3].tvread)+"]")
	if (twenny_found == false){
	if (player_boredom_timer>0){
		player_boredom_timer--;
		if (player_boredom_timer == 0){
			interest_change(1 + random_func_2( 20, player_count+1, true ));//0~1)
			//print("playerinterest = "+string(player_interest))
			player_boredom_change();
		}
	}
	if (boredom_timer>0){
		boredom_timer--;
	}
	if (ko_timer>0){
		ko_timer--;
	}else{//IF NOT KO TIMER
		var areaing = 0;
		with(focus_id){
			if (x < 410){//leftmost
				areaing = 1;
			}
			if (410 < x && x < 520){
				areaing = 2;
			}
			if (520 < x && x < 790){//awkward centre area
				areaing = 3;
			}
			if (790 < x && x < 900){
				areaing = 4;
			}
			if (900 < x){//rightmost
				areaing = 5;
			}
		}
		//print("areaing: "+string(areaing));
		switch (areaing){
			case 1://leftmost
				if (monitors_id[0].state == 0){
					monitors_id[0].state = 1;
					monitors_id[0].state_timer = 0;
				}
				for(var i=0; i<4; i+=1){
					if (i!=0){
						if (monitors_id[i].state == 1 || monitors_id[i].state == 2){
							monitors_id[i].state = 5;
							monitors_id[i].state_timer = 0;
							boredom_change();
						}
					}
				}
			break;
			case 2:
				if (boredom_timer = 0){
					var monitor_decide = 0 + random_func_2( 20, 2, true );//0~1
					if (monitors_id[0].state == 2||monitors_id[3].state == 2){
						monitor_decide = 1;
					}
					if (monitors_id[1].state == 2){
						monitor_decide = 0;
					}
					if (monitors_id[monitor_decide].state == 0){
						monitors_id[monitor_decide].state = 1;
						monitors_id[monitor_decide].state_timer = 0;
					}
					for(var i=0; i<4; i+=1){
						if (i!=monitor_decide){
							if (monitors_id[i].state == 1 || monitors_id[i].state == 2){
								monitors_id[i].state = 5;
								monitors_id[i].state_timer = 0;
								boredom_change();
							}
						}
					}
				}
			break;
			case 3://centre
				if (boredom_timer = 0 || monitors_id[0].state==2 || monitors_id[3].state==2){
					var monitor_decide = 1 + random_func_2( 20, 2, true );//0~1
					if (monitors_id[1].state == 2){
						monitor_decide = 2;
					}
					if (monitors_id[2].state == 2){
						monitor_decide = 1;
					}
					if (monitors_id[monitor_decide].state == 0){
						monitors_id[monitor_decide].state = 1;
						monitors_id[monitor_decide].state_timer = 0;
					}
					for(var i=0; i<4; i+=1){
						if (i!=monitor_decide){
							if (monitors_id[i].state == 1 || monitors_id[i].state == 2){
								monitors_id[i].state = 5;
								monitors_id[i].state_timer = 0;
								boredom_change();
							}
						}
					}
				}
			break;
			case 4:
				if (boredom_timer = 0){
					var monitor_decide = 2 + random_func_2( 20, 2, true );//0~1
					if (monitors_id[2].state == 2){
						monitor_decide = 3;
					}
					if (monitors_id[3].state == 2||monitors_id[0].state == 2){
						monitor_decide = 2;
					}
					if (monitors_id[monitor_decide].state == 0){
						monitors_id[monitor_decide].state = 1;
						monitors_id[monitor_decide].state_timer = 0;
					}
					for(var i=0; i<4; i+=1){
						if (i!=monitor_decide){
							if (monitors_id[i].state == 1 || monitors_id[i].state == 2){
								monitors_id[i].state = 5;
								monitors_id[i].state_timer = 0;
								boredom_change();
							}
						}
					}
				}
			break;
			case 5://rightmost
				if (monitors_id[3].state == 0){
					monitors_id[3].state = 1;
					monitors_id[3].state_timer = 0;
				}
				for(var i=0; i<4; i+=1){
					if (i!=3){
						if (monitors_id[i].state == 1 || monitors_id[i].state == 2){
							monitors_id[i].state = 5;
							monitors_id[i].state_timer = 0;
							boredom_change();
						}
					}
				}
			break;
			default: break;
		}
		
	}//IF NOT KO TIMER
	}//if twenny is not found
}
/*
timerwait++;
if (timerwait > timerwait_max){
	
	
	timerwait = 0;
	timerwait_max = 30 + random_func( 5, 60, true );
	
	var x_off = -400 + random_func( 4, 800, true );
	
	//print("should spawn something. next timerwait is "+string(timerwait_max))
	instance_create(rc+x_off, 100, "obj_stage_article", 12);
	
}*/

//wip
//set_bg_data(6, BG_LAYER_Y, get_bg_data(6, BG_LAYER_Y)+(sin( get_gameplay_time()*0.01 )/-5));


// !!LASTSTOCK STUFF!!
if (input_test && !fake_laststock||is_laststock() && !fake_laststock){
	print("laststock engaged")
	for(var i=0; i<4; i+=1){
		monitors_id[i].state = 7;
		monitors_id[i].state_timer = 0;
	}
	fake_laststock = true;
	ko_timer = 202020;
}

//=======================================================================================================================//


#define boredom_change
///boredom_change()
boredom_timer = boredom_timer_dest + (random_func_2( 20, boredom_timer_vary*2, true )-(boredom_timer_vary/2));
//print("boredom time set "+string(boredom_timer))
return true;

#define player_boredom_change
///player_boredom_change()
player_boredom_timer = player_boredom_timer_dest + (random_func_2( 20, player_boredom_timer_vary*2, true )-(player_boredom_timer_vary/2));
//print("player boredom time set "+string(player_boredom_timer))
return true;

#define interest_change
///interest_change(player)
if (argument[0]>player_count){//if more than playercount
	player_interest = -4;
}else{
	with(asset_get("oPlayer")){
		if (clones_player_id == -4){
			if (player==argument[0]){
				other.player_interest = id;
			}
		}
	}
}
return true;





