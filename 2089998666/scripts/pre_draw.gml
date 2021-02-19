// pre-draw

shader_start();
if (attack == AT_FSPECIAL && window == 2 && special_down) {
		draw_sprite_ext(sprite_get("arrow"), get_gameplay_time()/3, x+20*(spr_dir), y-70, spr_dir, 1, eggcharge2*4.5*spr_dir, c_white, .8);
}





/// YOSHI WITH A SWORD
if bossmode = 1 {
		if hit_player_obj.move_cooldown[AT_TAUNT] = 0 {
		draw_sprite(sprite_get("cookierestore"), get_gameplay_time()/3 , hit_player_obj.x  , hit_player_obj.y - 10 - (hit_player_obj.char_height*2)   );
	}
}
if yosword = 1  {


	
	
	if spr_dir = 1 {
		if (state == PS_ATTACK_GROUND and (attack == AT_TAUNT_2 or attack == AT_TAUNT)) or 
		( state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR and state != PS_ROLL_BACKWARD 
		and state != PS_ROLL_FORWARD and state != PS_TECH_BACKWARD and state != PS_TECH_FORWARD and state != PS_CROUCH) {
		 draw_sprite(sprite_get("yosr"), 5 , x + 30   , y - 80   );
		}
		
		if state == PS_TUMBLE or state == PS_CROUCH or (state_timer < 3 && (state == PS_LAND or state == PS_PRATLAND or state == PS_LANDING_LAG)) {
		 draw_sprite(sprite_get("yosr"), 5 , x + 30   , y - 76   );	
		}
		
		if state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD {
			draw_sprite(sprite_get("yosln"), state_timer / 2.5 , x  , y - 30     );
		}
		 
	
	
	if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
		
		if (state == PS_ATTACK_AIR && attack != AT_FSPECIAL && attack != AT_NSPECIAL 
		&& attack != AT_USPECIAL && attack != AT_NAIR && attack != AT_DAIR) or attack == AT_DSPECIAL {
			draw_sprite(sprite_get("yosr"), 5 , x + 30   , y - 80   );
		}
		
		if attack == AT_JAB {
			if window == 1 {
				
				draw_sprite(sprite_get("yosrn"), 7 , x   , y - 70 - window_timer   );
			}
			
			if window == 2 {
				if window_timer < 3 {
				draw_sprite(sprite_get("yosr"), 8 , x + 56   , y - 40   );
				}
				
				if window_timer >= 3 {
				draw_sprite(sprite_get("yosr"), 3 , x + 50   , y - 20  );
				}
			}
			
			if window == 3 {
				draw_sprite(sprite_get("yosr"), 3 , x + 40 - window_timer/4   , y - 20 - window_timer/4  );
			}
			
			if window == 4 {
				draw_sprite(sprite_get("yosl"), 6 , x + 0   , y - 20  );
			}
			
			if window == 5 {
				draw_sprite(sprite_get("yosl"), 6 , x + 50 - window_timer/2, y - 20  );
			}
			
			if window == 6 {
				draw_sprite(sprite_get("yosl"), 6 , x + 20, y - 20  );
			}
			
			if window == 7 {
				if window_timer < 5 {
				draw_sprite(sprite_get("yosrn"), 7 , x + 10  , y - 40   );
			    } else {
			    draw_sprite(sprite_get("yosrn"), 6 , x + 10  , y - 40   );	
			    }
			}
			
		}
		
		if attack == AT_FTILT {
			if window == 1 {
				draw_sprite(sprite_get("yosl"), 2 , x + 10   , y - 30  );
			}
			
			if window == 2 {
				if window_timer < 3{
				draw_sprite(sprite_get("yosl"), 3 , x + 20   , y - 50  );	
				}
				if window_timer >= 3 && window_timer < 9 {
				draw_sprite(sprite_get("yosr"), 9 , x + 50, y - 50  );
				}
				if window_timer >= 9 {
				draw_sprite(sprite_get("yosl"), 7 , x + 60 - window_timer   , y - 30   );	
				}
			}
			
			if window == 3 {
				draw_sprite(sprite_get("yosl"), 7 , x + 40   , y - 30   );
			}
			
			if window == 4 {
				draw_sprite(sprite_get("yosrn"), 7 , x + 20   , y - 40   );
			}
			
		}
		
		
		if attack == AT_DTILT {
			if window == 1 {
				draw_sprite(sprite_get("yosrn"), 6 , x + 6   , y - 40  );
			}
			
			if window == 2 {
				draw_sprite(sprite_get("yosrn"), window_timer/2 , x + 10   , y - 30  );
			}
			
			if window == 3 {
				draw_sprite(sprite_get("yosrn"), 6 , x + 6   , y - 40 + window_timer/2  );
			}
			
			if window == 4 {
				if window_timer < 3 {
				draw_sprite(sprite_get("yosrn"), 6 , x + 6   , y - 30  );	
				} else {
				draw_sprite(sprite_get("yosr"), 5 , x + 30   , y - 76   );	
				}
			}
			
		}
		
		if attack == AT_UTILT {
			if window == 1 {
				draw_sprite(sprite_get("yosrn"), 5 , x - 20   , y - 10  );
			}
            
            if window == 2 {
            	if window_timer < 3 {
				draw_sprite(sprite_get("yosrn"), 6 , x - 30   , y - 30  );
			    }
			    if window_timer >= 3 && window_timer < 7 {
	        		if window_timer <= 4 {
            		draw_sprite(sprite_get("yosr"), 7 , x - 20   , y - 70  );		
            		}	
            		if window_timer > 4 {
		     	    draw_sprite(sprite_get("yosl"), 10 , x - 20   , y - 60  );	
			    }
			    }
			    
			    if window_timer >= 6 {
			    draw_sprite(sprite_get("yosr"), 2 , x - 10   , y - 60 + window_timer  );	
			    }
            }
            
            if window == 3 {
				draw_sprite(sprite_get("yosr"), 2 , x - 10   , y - 50 );
            }
			 if window == 4 {
			    draw_sprite(sprite_get("yosrn"), 7 , x + 10  , y - 40   );	
			  }
		}
		
		
		if attack == AT_NSPECIAL {
			if window == 3 {
				draw_sprite(sprite_get("yosr"), 7 + window_timer/2 , x + 40 + window_timer * 10   , y - 30 );
            }
            
            if window == 4 {
            	if window_timer < 6 {
				draw_sprite(sprite_get("yosr"), 7 + window_timer/2 , x + 90 + window_timer * 2   , y - 30 );
            	}
            	if window_timer >= 6 {
                draw_sprite(sprite_get("yosr"), 2 , x + 150 - window_timer * 6   , y - 24 );	
            	}
            }
		}
		
		if attack == AT_USPECIAL {
                if window == 1 {
				draw_sprite(sprite_get("yosrn"), 6 + window_timer/3 , x   , y - 30 );
                }
                
                if window > 1 {
				draw_sprite(sprite_get("yosrn"), get_gameplay_time()/1 , x   , y - 30 );
                }
		}
		
		
	}	 
		 
	 	 
	}
	
	
	
	if spr_dir = -1 {
		
		if state
    	if (state == PS_ATTACK_GROUND and (attack == AT_TAUNT_2 or attack == AT_TAUNT)) or 
		( state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR and state != PS_ROLL_BACKWARD 
		and state != PS_ROLL_FORWARD and state != PS_TECH_BACKWARD and state != PS_TECH_FORWARD and state != PS_CROUCH) {
		 draw_sprite(sprite_get("yosl"), 5 , x - 30   , y - 80   );
		}
		
		if state == PS_TUMBLE or state == PS_CROUCH or (state_timer < 3 && (state == PS_LAND or state == PS_PRATLAND or state == PS_LANDING_LAG)) {
		 draw_sprite(sprite_get("yosl"), 5 , x - 30   , y - 76   );	
		}
		
		
		if state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD {
			draw_sprite(sprite_get("yosrn"), state_timer / 2.5 , x  , y - 30   );
		}
		
		
		
		
		if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
		
		if (state == PS_ATTACK_AIR && attack != AT_FSPECIAL && attack != AT_NSPECIAL 
		&& attack != AT_USPECIAL && attack != AT_NAIR && attack != AT_DAIR) or attack == AT_DSPECIAL {
			draw_sprite(sprite_get("yosl"), 5 , x - 30   , y - 80   );
		}
		
		if attack == AT_JAB {
			if window == 1 {
				
				draw_sprite(sprite_get("yosln"), 7 , x   , y - 70 - window_timer   );
			}
			
			if window == 2 {
				if window_timer < 3 {
				draw_sprite(sprite_get("yosl"), 8 , x - 56   , y - 40   );
				}
				
				if window_timer >= 3 {
				draw_sprite(sprite_get("yosl"), 3 , x - 50   , y - 20  );
				}
			}
			
			if window == 3 {
				draw_sprite(sprite_get("yosl"), 3 , x - 40 + window_timer/4   , y - 20 - window_timer/4  );
			}
			
			if window == 4 {
				draw_sprite(sprite_get("yosr"), 6 , x + 0   , y - 20  );
			}
			
			if window == 5 {
				draw_sprite(sprite_get("yosr"), 6 , x - 50 + window_timer/2, y - 20  );
			}
			
			if window == 6 {
				draw_sprite(sprite_get("yosr"), 6 , x - 20, y - 20  );
			}
			
			if window == 7 {
				if window_timer < 5 {
				draw_sprite(sprite_get("yosln"), 7 , x - 10  , y - 40   );
			    } else {
			    draw_sprite(sprite_get("yosln"), 6 , x - 10  , y - 40   );	
			    }
			}
			
		}
		
		if attack == AT_FTILT {
			if window == 1 {
				draw_sprite(sprite_get("yosr"), 2 , x - 10   , y - 30  );
			}
			
			if window == 2 {
				if window_timer < 3{
				draw_sprite(sprite_get("yosr"), 3 , x - 20   , y - 50  );	
				}
				if window_timer >= 3 && window_timer < 9 {
				draw_sprite(sprite_get("yosl"), 9 , x - 50, y - 50  );
				}
				if window_timer >= 9 {
				draw_sprite(sprite_get("yosr"), 7 , x - 60 + window_timer   , y - 30   );	
				}
			}
			
			if window == 3 {
				draw_sprite(sprite_get("yosr"), 7 , x - 40   , y - 30   );
			}
			
			if window == 4 {
				draw_sprite(sprite_get("yosln"), 7 , x - 20   , y - 40   );
			}
			
		}
		
		
		if attack == AT_DTILT {
			if window == 1 {
				draw_sprite(sprite_get("yosln"), 6 , x - 6   , y - 40  );
			}
			
			if window == 2 {
				draw_sprite(sprite_get("yosln"), window_timer/2 , x + 10   , y - 30  );
			}
			
			if window == 3 {
				draw_sprite(sprite_get("yosln"), 6 , x - 6   , y - 40 + window_timer/2  );
			}
			
			if window == 4 {
				if window_timer < 3 {
				draw_sprite(sprite_get("yosln"), 6 , x - 6   , y - 30  );	
				} else {
				draw_sprite(sprite_get("yosl"), 5 , x - 30   , y - 76   );	
				}
			}
			
		}
		
		if attack == AT_UTILT {
			if window == 1 {
				draw_sprite(sprite_get("yosln"), 5 , x + 20   , y - 10  );
			}
            
            if window == 2 {
            	if window_timer < 3 {
				draw_sprite(sprite_get("yosln"), 6 , x + 30   , y - 30  );
			    }
			    if window_timer >= 3 && window_timer < 7 {
	        		if window_timer <= 4 {
            		draw_sprite(sprite_get("yosl"), 7 , x + 20   , y - 70  );		
            		}	
            		if window_timer > 4 {
		     	    draw_sprite(sprite_get("yosr"), 10 , x + 20   , y - 60  );	
			    }
			    }
			    
			    if window_timer >= 6 {
			    draw_sprite(sprite_get("yosl"), 2 , x + 10   , y - 60 + window_timer  );	
			    }
            }
            
            if window == 3 {
				draw_sprite(sprite_get("yosl"), 2 , x + 10   , y - 50 );
            }
			 if window == 4 {
			    draw_sprite(sprite_get("yosln"), 7 , x - 10  , y - 40   );	
			  }
		}
		
		
		if attack == AT_NSPECIAL {
			if window == 3 {
				draw_sprite(sprite_get("yosl"), 7 + window_timer/2 , x - 40 - window_timer * 10   , y - 30 );
            }
            
            if window == 4 {
            	if window_timer < 6 {
				draw_sprite(sprite_get("yosl"), 7 + window_timer/2 , x - 90 - window_timer * 2   , y - 30 );
            	}
            	if window_timer >= 6 {
                draw_sprite(sprite_get("yosl"), 2 , x - 150 + window_timer * 6   , y - 24 );	
            	}
            }
		}
		
		if attack == AT_USPECIAL {
                if window == 1 {
				draw_sprite(sprite_get("yosln"), 6 + window_timer/3 , x   , y - 30 );
                }
                
                if window > 1 {
				draw_sprite(sprite_get("yosln"), get_gameplay_time()/1 , x   , y - 30 );
                }
		}
		
		
	}
		
		 
	}

	
	
}
shader_end();