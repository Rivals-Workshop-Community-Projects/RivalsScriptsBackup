//uspecial blocks. woag



switch(state){
	
	
	
	case 0: //Spawned
	
		var s_t_max = 10;
		var dist = 35;
		var end_x = init_x + dir_x * dist;
		var end_y = init_y + dir_y * dist;
		
		var spd_x = ease_cubeOut(init_x, end_x, state_timer, s_t_max) - fake_x;
		var spd_y = ease_cubeOut(init_y, end_y, state_timer, s_t_max) - fake_y;
		
		fake_x += spd_x;
		fake_y += spd_y;
		
		var collided = false;
		var recoil_x = 0;
		var recoil_y = 0;
		
		
		
		//detect terrain collision in all 4 directions
		
		if (spd_y > 0) for (i = 0; i <= spd_y; i++){
			if (place_meeting(x, y + i, asset_get("par_block")) || place_meeting(x, y + i, asset_get("par_jumpthrough"))){
				collided = true;
				recoil_y++;
			}
			else y++;
		}
		
		if (spd_y < 0) for (i = 0; i >= spd_y; i--){
			if (place_meeting(x, y + i, asset_get("par_block"))){
				collided = true;
				recoil_y--;
			}
			else y--;
		}
		
		if (spd_x > 0) for (i = 0; i <= spd_x; i++){
			if (place_meeting(x + i, y, asset_get("par_block"))){
				collided = true;
				recoil_x++;
			}
			else x++;
			
		}
		
		if (spd_x < 0) for (i = 0; i >= spd_x; i--){
			if (place_meeting(x + i, y, asset_get("par_block"))){
				collided = true;
				recoil_x--;
			}
			else x--;
			
		}
		
		
		
		if collided{ //move player and other uspecial blocks if you hit something
			player_id.x -= recoil_x;
			player_id.y -= recoil_y;
			with (asset_get("obj_article3")) if player_id == other.player_id && id != other{
				x -= recoil_x;
				y -= recoil_y;
			}
		}
		
		else if (state_timer == 1 && !("please_die" in self)){ //spawn hitbox
			hitbox = create_hitbox(AT_NSPECIAL, 3, end_x, end_y);
			hitbox.spr_dir = spr_dir;
			hitbox.lifetime = 5;
			hitbox.owner = self;
		}
		
		//print_debug(string(spd_y))
		
		if (state_timer > s_t_max){
			setState(1);
			
			instance_destroy(hitbox);
			
			with player_id{
				x_pos = round(other.x);
				y_pos = round(other.y);
				can_block = true;
			}
			if ("please_die" in self){
				instance_destroy();
				exit;
			}
		}
		
		break;
	
	
	
	case 1: //Idle
	
		if !(player_id.attacking && player_id.attack == AT_USPECIAL){
			setState(2); //die
		}
		
		break;
	
	
	
	case 2: //Dying
	
		var s_t_max = 15;
		
		visible = (state_timer % 6 < 3);
		
		if (state_timer > s_t_max){
			
			if (player_id.blocks[player_id.block_num] == self && !player_id.runeL){
				
				//Copied NSpecial code
				
				var exists = false;
				var exists_again = false;
				
				with (obj_article1){
				    if (player_id == other.player_id){
				        exists = true;
				    }
				}  
				
				with (obj_article_solid){
				    if (player_id == other.player_id){
				        exists_again = true;
				    }
				}  
				
	            if (exists && exists_again){
	                with (obj_article1){
	                    if (player_id == other.player_id){
	                        die = true;
	                    }
	                }
	                with (obj_article_solid){
	                    if (player_id == other.player_id){
	                        die = true;
	                    }
	                }
	            }
	            
	            if (player_id.nspecial_cooldown_thing < 1){
	                var box = instance_create(x,y + 22, "obj_article_solid");
	                box.player_id = player_id;
	                spawn_hit_fx( x, y + 16, 13 );
	                var box_handler = instance_create(x,y + 17, "obj_article1");
	                box_handler.friend = box;
	                box_handler.player_id = player_id;
	            }
	            
	            //End copied code
			}
			
			if (player_id.runeL){
				if (player_id.runeL){
				
					//Copied NSpecial code
					
					var exists = false;
					var exists_again = false;
					
					with (obj_article1){
					    if (player_id == other.player_id){
					        exists = true;
					    }
					}  
					
					with (obj_article_solid){
					    if (player_id == other.player_id){
					        exists_again = true;
					    }
					}  
					
					
					if (exists && exists_again){
		                with (obj_article1){
		                    if (player_id == other.player_id && lifetime > 1){
		                        die = true;
		                    }
		                }
		                with (obj_article_solid){
		                    if (player_id == other.player_id && lifetime > 1){
		                        die = true;
		                    }
		                }
		            }
					
		            
		            if (player_id.nspecial_cooldown_thing < 1){
		                var box = instance_create(x,y + 22, "obj_article_solid");
		                box.player_id = player_id;
		                spawn_hit_fx( x, y + 16, 13 );
		                var box_handler = instance_create(x,y + 17, "obj_article1");
		                box_handler.friend = box;
		                box_handler.player_id = player_id;
		            }
				}
			}
			
			
			instance_destroy();
			exit;
		}
		
		break;
}



if !hitstop state_timer++;



#define setState(new_state)

state = new_state;
state_timer = 0;