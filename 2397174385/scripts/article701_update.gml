//depth =1000
if (Delete == true){
instance_destroy()
}else{

  if(type == 0){//type1


			        var dist = room_width * room_height;
				with oPlayer {
	        		    if point_distance(x, y, other.x, other.y) <= dist{
						if(state == PS_DEAD){
	        				}else{
	        		        other.ai_target = id;
	        		        dist = point_distance(x, y, other.x, other.y);
	        				}
	        			}
	        		}

		if (ai_target.x < x ){
		spr_dir = -1;
		}else{
		spr_dir = 1;
		}

	if(hit_wall== true){
	hsp = 0
	}
	var tou = instance_place(x, y, obj_stage_article_solid);
	if tou != noone {
	hsp = 0;
	vsp = 0;
	}else{
	vsp += 0.1;
	}
	if(attack == true){
		if(attacktime1 == 10){
			if(attacktime2 == 0){
			attack_spr= true;
			image_index =0
			}
			if(attacktime2 == 1){
			vsp = -1;
			attack_spr= false;
			image_index =1
			
			}
			if(attacktime2 == 2){
				vsp -= 2
				if(spr_dir == 1){
				hsp += 2
				}else{
				hsp -= 2
				}
			image_index =2
			
			}
			if(attacktime2 == 3){
			image_index =3
			}
			if(attacktime2 == 4){
			image_index =4
			
			}
			if(attacktime2 == 5){
				hsp = 0
			image_index =0
			attacktime2 =0
			attacktime1 =0
			time_attack = 0
			hitdamage =0;
			hitplayer =0;
			attack = false;
			damagei = false;
			time1 = 0
			}
			var tq = instance_place(x, y, oPlayer);
			if tq != noone {
				if(attacktime2 >= 2){
				sound_play( asset_get( "mfx_hp" ));
					with(tq){
					take_damage( player, -1, -20 );
					}
				}
			}
		attacktime2 +=1
		attacktime1 =0
		}else{
		attacktime1 +=1
		}
	}else{

	if (damagei  == false){//damage f
		if(time_attack == 100){
		sprite_index = sprite_get("sandbak");
		attack = true; 
		time_attack = 0
		}else{
		image_index =0
		time_attack += 1
		}
	


		if hitplayer == 0 with (pHitBox) {//pHitBox
			if place_meeting(x,y,other) {//other
			other.hitplayer = player;
			other.hitdamage = damage;
			}//other
		}//pHitBox

		if hitplayer > 0 && hitplayer < 5{//hitplayer

				if (damagei == false){//damage f
				sprite_index = sprite_get("sandbak");

					if(hitdamage >= 0 && hitdamage <= 10){
					sound_play( asset_get( "sfx_blow_weak1" ));
					}
					if(hitdamage >= 10 && hitdamage <= 20){
					sound_play( asset_get( "sfx_blow_heavy1" ));
					}
					if(hitdamage >= 30 && hitdamage <= 40){
					sound_play( asset_get( "sfx_blow_heavy2" ));
					}
				damagei = true;
				Physicalstrength -= hitdamage;
				attack = false;
				time1 =0;
				hitplayer = 0 
					vsp -= 3
					var tou = instance_place(x, y, obj_stage_article_solid);
					if tou != noone {

					}else{
						if(spr_dir == 1){
						hsp -= 2
						}else{
						hsp += 2
						}
					}
					if(Physicalstrength <= 0){
					sound_play( asset_get( "sfx_death1" ));
					oPlayer_obj = true;
					instance_create(x,y, "obj_stage_article" , 600);
					Delete = true;
					Physicalstrength = 10 
					}
				}
		}//hitplayer

	}//damage f

		if(damagei == true){
			if(time1 == 10){
			time_attack = 0
			hitdamage =0;
			hitplayer =0;
			attack = false;
			damagei = false;
			time1 = 0
			}else{
			hitplayer = 0 
			image_index =4
			time1 += 1
			}
		}

	}




  }else{//type1
  	if(type == 1){//type2

//typeb==============================================
		if(typeb >= 1){
			if(dtime >= 1000){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								proj_angle = 80
								hsp = 5
								vsp = -5
								}
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = 0
								vsp = -5
								}
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								proj_angle = 110
								hsp = -5
								vsp = -5
								}
						instance_create(x,y, "obj_stage_article" , 600);
						Delete = true;
			}else{
			dtime += 1
			}
		}
//typeb==============================================
			sprite_index = sprite_get("sandbak2");

		        var dist = room_width * room_height;
			with oPlayer {
        		    if point_distance(x, y, other.x, other.y) <= dist {
						if(state == PS_DEAD){
	        				}else{
        		        other.ai_target = id;
        		        dist = point_distance(x, y, other.x, other.y);
        					}
        			}
        		}


			if (ai_target.x < x){
			    spr_dir = -1;
			}else{
			    spr_dir = 1;
			}
			if(hit_wall== true){
			hsp = 0
			}
			var tou = instance_place(x, y, obj_stage_article_solid);
			if tou != noone {
			hsp = 0;
			vsp = 0;
			}else{
			vsp += 0.1;
			}
				if(attack == true){
					if(attacktime1 == 10){
						if(attacktime2 == 0){
						attack_spr= true;
						image_index =0
						}
						if(attacktime2 == 1){
						vsp = -1;
						attack_spr= false;
						image_index =1
					
						}
					if(attacktime2 == 2){
						vsp -= 2
						if(spr_dir == 1){
						hsp += 2
						}else{
						hsp -= 2
						}
					image_index =2
				
					}
					if(attacktime2 == 3){
						if(spr_dir == 1){
						create_hitbox(AT_USTRONG, 6, x+25, y);
						}else{
						create_hitbox(AT_USTRONG, 6, x-25, y);
						}
					image_index =3
					}
					if(attacktime2 == 4){
					image_index =4
				
					}
					if(attacktime2 == 5){
					hsp = 0
					image_index =0
					sound_play( asset_get( "mfx_hp" ));
					attacktime2 =0
					attacktime1 =0
					time_attack = 0
					hitdamage =0;
					hitplayer =0;
					attack = false;
					damagei = false;
					time1 = 0
					}
					attacktime2 +=1
					attacktime1 =0
					}else{
					attacktime1 +=1
					}
				}else{
	
			if (damagei  == false){//damage f
				if(time_attack == 100){
				sprite_index = sprite_get("sandbak2");
				attack = true; 
				time_attack = 0
				}else{
				image_index =0
				time_attack += 1
				}
		
				if hitplayer == 0 with (pHitBox) {//pHitBox
					if place_meeting(x,y,other) {//other
					other.hitplayer = player;
					other.hitdamage = damage;
					}//other
				}//pHitBox

				if hitplayer > 0 && hitplayer < 5{//hitplayer

					if (damagei == false){//damage f
					sprite_index = sprite_get("sandbak2");
					damagei = true;
					Physicalstrength -= hitdamage;
					attack = false;
					if(hitdamage >= 0 && hitdamage <= 10){
					sound_play( asset_get( "sfx_blow_weak1" ));
					}
					if(hitdamage >= 10 && hitdamage <= 20){
					sound_play( asset_get( "sfx_blow_heavy1" ));
					}
					if(hitdamage >= 30 && hitdamage <= 40){
					sound_play( asset_get( "sfx_blow_heavy2" ));
					}
					time1 =0;
					hitplayer = 0 
						vsp -= 3
						var tou = instance_place(x, y, obj_stage_article_solid);
						if tou != noone {
	
						}else{
							if(spr_dir == 1){
							hsp -= 2
							}else{
							hsp += 2
							}
						}
						if(Physicalstrength <= 0){
						sound_play( asset_get( "sfx_death1" ));
						oPlayer_obj = true;
						instance_create(x,y, "obj_stage_article" , 600);
						Delete = true;
						Physicalstrength = 10 
						}
					}
				}//hitplayer

			}//damage f	

				if(damagei == true){
					if(time1 == 10){
					time_attack = 0
					hitdamage =0;
					hitplayer =0;
					attack = false;
					damagei = false;
					time1 = 0
					}else{
					hitplayer = 0 
					image_index =4
					time1 += 1
					}
				}

			}



	}else{//type2

  		if(type == 2){//type3

				sprite_index = sprite_get("sandbak_a");
	
			        var dist = room_width * room_height;
				with oPlayer {
	        		    if point_distance(x, y, other.x, other.y) <= dist {
						if(state == PS_DEAD){
	        				}else{
	        		        other.ai_target = id;
	        		        dist = point_distance(x, y, other.x, other.y);
	        				}
	        			}
	        		}

	
				if (ai_target.x < x){
				    spr_dir = -1;
				}else{
				    spr_dir = 1;
				}
				if(hit_wall== true){
				hsp = 0
				}
				var tou = instance_place(x, y, obj_stage_article_solid);
				if tou != noone {
				hsp = 0;
				vsp = 0;
				}else{
				vsp += 0.1;
				}
					if(attack == true){
						if(attacktime1 == 10){
							if(attacktime2 == 0){
							attack_spr= true;
							image_index =0
							}
							if(attacktime2 == 1){
							vsp = -1;
							attack_spr= false;
							image_index =1
						
							}
						if(attacktime2 == 2){
							vsp -= 2
						image_index =2
					
						}
						if(attacktime2 == 3){
							if(spr_dir == 1){
						sound_play( asset_get( "mfx_hp" ));
							create_hitbox(AT_USTRONG, 7, x+32, y-32);
							}else{
							create_hitbox(AT_USTRONG, 7, x-32, y-32);
							}
						image_index =3
						}
						if(attacktime2 == 4){
						image_index =4
					
						}
						if(attacktime2 == 5){
						hsp = 0
						image_index =0
						sound_play( asset_get( "mfx_hp" ));
						attacktime2 =0
						attacktime1 =0
						time_attack = 0
						hitdamage =0;
						hitplayer =0;
						attack = false;
						damagei = false;
						time1 = 0
						}
						attacktime2 +=1
						attacktime1 =0
						}else{
						attacktime1 +=1
						}
					}else{
		
				if (damagei  == false){//damage f
					if(time_attack == 100){
					sprite_index = sprite_get("sandbak_a");
					attack = true; 
					time_attack = 0
					}else{
					image_index =0
					time_attack += 1
					}
			
					if hitplayer == 0 with (pHitBox) {//pHitBox
						if place_meeting(x,y,other) {//other
						other.hitplayer = player;
						other.hitdamage = damage;
						}//other
					}//pHitBox
	
					if hitplayer > 0 && hitplayer < 5{//hitplayer
	
						if (damagei == false){//damage f
						sprite_index = sprite_get("sandbak_a");
							if(hitdamage >= 0 && hitdamage <= 10){
							sound_play( asset_get( "sfx_blow_weak1" ));
							}
							if(hitdamage >= 10 && hitdamage <= 20){
							sound_play( asset_get( "sfx_blow_heavy1" ));
							}
							if(hitdamage >= 30 && hitdamage <= 40){
							sound_play( asset_get( "sfx_blow_heavy2" ));
							}
						damagei = true;
						Physicalstrength -= hitdamage;
						attack = false;
						time1 =0;
						hitplayer = 0 
							vsp -= 3
							var tou = instance_place(x, y, obj_stage_article_solid);
							if tou != noone {
		
							}else{
								if(spr_dir == 1){
								hsp -= 2
								}else{
								hsp += 2
								}
							}
							if(Physicalstrength <= 0){
							sound_play( asset_get( "sfx_death1" ));
							oPlayer_obj = true;
							instance_create(x,y, "obj_stage_article" , 600);
							Delete = true;
							Physicalstrength = 10 
							}
						}
					}//hitplayer
	
				}//damage f	
	
					if(damagei == true){
						if(time1 == 10){
						time_attack = 0
						hitdamage =0;
						hitplayer =0;
						attack = false;
						damagei = false;
						time1 = 0
						}else{
						hitplayer = 0 
						image_index =4
						time1 += 1
						}
					}
	
				}
	
		}else{//type3
  			if(type == 3){//type4


				sprite_index = sprite_get("sandbak3");
				mask_index = sprite_get("sandbak3_hurt");
	
			        var dist = room_width * room_height;
				with oPlayer {
	        		    if point_distance(x, y, other.x, other.y) <= dist {
						if(state == PS_DEAD){
	        				}else{
	        		        other.ai_target = id;
	        		        dist = point_distance(x, y, other.x, other.y);
	        				}
	        			}
	        		}

	
				if (ai_target.x < x){
				    spr_dir = -1;
				}else{
				    spr_dir = 1;
				}
				if(hit_wall== true){
				hsp = 0
				}
				var tou = instance_place(x, y, obj_stage_article_solid);
				if tou != noone {
				hsp = 0;
				vsp = 0;
				}else{
				vsp += 0.1;
				}
					if(attack == true){
						if(attacktime1 == 30){
							if(attacktime2 == 0){
							attack_spr= true;
							image_index =0
							}
							if(attacktime2 == 1){
							vsp = -1;
							attack_spr= false;
							image_index =1
						
							}
						if(attacktime2 == 2){
							if(spr_dir == 1){
									if(typeb >=1){
								var t =instance_create(x+128,y, "obj_stage_article" , 701);
										with(t){
										typeb =1
										type = 1
										hsp += random_func( 0, 3, false );
										vsp -= random_func( 0, 3, false );
										Physicalstrength =10;
												dtime += random_func( 800, 950, true );
										}
									}else{
								var t =instance_create(x+128,y, "obj_stage_article" , 701);
										with(t){
										typeb =0
										type = 1
										hsp += random_func( 0, 3, false );
										vsp -= random_func( 0, 3, false );
										Physicalstrength =10;
										dtime += random_func( 800, 950, true );
										}
									}
							}else{
									if(typeb >=1){
												var t =instance_create(x-128,y, "obj_stage_article" , 701);
												with(t){
												typeb =1
												type = 1
												hsp -= random_func( 0, 3, false );
												vsp -= random_func( 0, 3, false );
												Physicalstrength =10;
												dtime += random_func( 800, 950, true );
												}
									}else{
												var t =instance_create(x-128,y, "obj_stage_article" , 701);
												with(t){
												type = 1
												hsp -= random_func( 0, 3, false );
												vsp -= random_func( 0, 3, false );
												Physicalstrength =10;
												dtime += random_func( 800, 950, true );
												}
									}
							}
						image_index =2
					
						}
						if(attacktime2 == 3){
							if(spr_dir == 1){
									if(typeb >=1){
								var t =instance_create(x+128,y, "obj_stage_article" , 701);
										with(t){
										typeb =1
										type = 1
										hsp += random_func( 0, 3, false );
										vsp -= random_func( 0, 3, false );
										Physicalstrength =10;
										}
									}else{
								var t =instance_create(x+128,y, "obj_stage_article" , 701);
										with(t){
										typeb =0
										type = 1
										hsp += random_func( 0, 3, false );
										vsp -= random_func( 0, 3, false );
										Physicalstrength =10;
										}
									}
							}else{
									if(typeb >=1){
												var t =instance_create(x-128,y, "obj_stage_article" , 701);
												with(t){
												typeb =1
												type = 1
												hsp -= random_func( 0, 3, false );
												vsp -= random_func( 0, 3, false );
												Physicalstrength =10;
												}
									}else{
												var t =instance_create(x-128,y, "obj_stage_article" , 701);
												with(t){
												type = 1
												hsp -= random_func( 0, 3, false );
												vsp -= random_func( 0, 3, false );
												Physicalstrength =10;
												}
									}
							}
						image_index =3
						}
						if(attacktime2 == 4){
							if(spr_dir == 1){
									if(typeb >=1){
								var t =instance_create(x+128,y, "obj_stage_article" , 701);
										with(t){
										typeb =1
										type = 1
										hsp += random_func( 0, 3, false );
										vsp -= random_func( 0, 3, false );
										Physicalstrength =10;
										}
									}else{
								var t =instance_create(x+128,y, "obj_stage_article" , 701);
										with(t){
										typeb =0
										type = 1
										hsp += random_func( 0, 3, false );
										vsp -= random_func( 0, 3, false );
										Physicalstrength =10;
										}
									}
							}else{
									if(typeb >=1){
												var t =instance_create(x-128,y, "obj_stage_article" , 701);
												with(t){
												typeb =1
												type = 1
												hsp -= random_func( 0, 3, false );
												vsp -= random_func( 0, 3, false );
												Physicalstrength =10;
												}
									}else{
												var t =instance_create(x-128,y, "obj_stage_article" , 701);
												with(t){
												type = 1
												hsp -= random_func( 0, 3, false );
												vsp -= random_func( 0, 3, false );
												Physicalstrength =10;
												}
									}
							}
						image_index =4
					
						}
						if(attacktime2 == 5){
						hsp = 0
						image_index =0
						sound_play( asset_get( "mfx_hp" ));
						attacktime2 =0
						attacktime1 =0
						time_attack = 0
						hitdamage =0;
						hitplayer =0;
						attack = false;
						damagei = false;
						time1 = 0
						}
						attacktime2 +=1
						attacktime1 =0
						}else{
						attacktime1 +=1
						}
					}else{
		
					if(time_attack == 100){
					sprite_index = sprite_get("sandbak3");
					attack = true; 
					time_attack = 0
					}else{
					image_index =0
					time_attack += 1
					}
			
					if hitplayer == 0 with (pHitBox) {//pHitBox
						if place_meeting(x,y,other) {//other
						other.hitplayer = player;
						other.hitdamage = damage;
						}//other
					}//pHitBox
	
					if hitplayer > 0 && hitplayer < 5{//hitplayer
	
						if (damagei == false){//damage f
						sprite_index = sprite_get("sandbak3");
							if(hitdamage >= 0 && hitdamage <= 10){
							sound_play( asset_get( "sfx_blow_weak1" ));
							}
							if(hitdamage >= 10 && hitdamage <= 20){
							sound_play( asset_get( "sfx_blow_heavy1" ));
							}
							if(hitdamage >= 30 && hitdamage <= 40){
							sound_play( asset_get( "sfx_blow_heavy2" ));
							}
						damagei = true;
						Physicalstrength -= hitdamage;
						attack = false;
						time1 =0;
						hitplayer = 0 
							if(Physicalstrength <= 0){
							sound_play( asset_get( "sfx_death1" ));
							oPlayer_obj = true;
							instance_create(x,y, "obj_stage_article" , 600);
										with ( obj_stage_article ) {//with
											if ( get_article_script( id ) == 96 ) {//95
											image_index = 2
											}
										}
							Delete = true;
							Physicalstrength = 10 
							}
						}
					}//hitplayer
	
	
					if(damagei == true){
						if(time1 == 10){
						hitdamage =0;
						hitplayer =0;
						attack = false;
						damagei = false;
						time1 = 0
						}else{
						hitplayer = 0 
						image_index =4
						time1 += 1
						}
					}
	
				}
			}else{//type4

					sprite_index = sprite_get("sandbak_m");
		
				        var dist = room_width * room_height;
					with oPlayer {
		        		    if point_distance(x, y, other.x, other.y) <= dist {
							if(state == PS_DEAD){
	        					}else{
		        		        other.ai_target = id;
		        		        dist = point_distance(x, y, other.x, other.y);
	        					}
		        			}
		        		}
	
					if (ai_target.x < x){
					    spr_dir = -1;
					}else{
					    spr_dir = 1;
					}
					if(hit_wall== true){
					hsp = 0
					}
					var tou = instance_place(x, y, obj_stage_article_solid);
					if tou != noone {
					hsp = 0;
					vsp = 0;
					}else{
					vsp += 0.1;
					}
						if(attack == true){
							if(attacktime1 == 10){
								if(attacktime2 == 0){


								attack_spr= true;
								image_index =0
								}
								if(attacktime2 == 1){
								vsp = -1;
								attack_spr= false;
								image_index =1
								}
							if(attacktime2 == 2){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = 10
								}
							image_index =2
						
							}
							if(attacktime2 == 3){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = 10
								vsp = 5
								}
							image_index =3
							}
							if(attacktime2 == 4){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = 10
								vsp = 10
								}
							image_index =4
							}

							if(attacktime2 == 5){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = 10
								vsp = 15
								}
							image_index =3
							}
							if(attacktime2 == 6){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								vsp = 10
								}
							image_index =4
							}
							if(attacktime2 == 7){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								vsp = 10
								}
							image_index =3
							}
							if(attacktime2 == 8){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								vsp = 10
								hsp = -5
								}
							image_index =4
							}
							if(attacktime2 == 9){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								vsp = 10
								hsp = -10
								}
							image_index =3
							}
							if(attacktime2 == 10){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = -10
								}
							image_index =3
							}
							if(attacktime2 == 11){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = -10
								vsp = -5
								}
							image_index =4
							}
							if(attacktime2 == 12){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = -10
								vsp = -10
								}
							image_index =3
							}
							if(attacktime2 == 13){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = -10
								vsp = 10
								}
							image_index =4
							}
							if(attacktime2 == 14){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = 10
								vsp = -10
								}
							image_index =3
							}
							if(attacktime2 == 15){
								var mg =create_hitbox(AT_USTRONG, 8, x, y-32);
								with(mg){
								hsp = 10
								vsp = 10
								}
							image_index =4
							}
							if(attacktime2 == 16){
							dx = random_func( 0, 4, true );
							hsp = 0
							image_index =0
							sound_play( asset_get( "mfx_hp" ));
							attacktime2 =0
							attacktime1 =0
							time_attack = 0
							hitdamage =0;
							hitplayer =0;
							attack = false;
							damagei = false;
							time1 = 0
							}


							attacktime2 +=1
							attacktime1 =0
							}else{

							attacktime1 +=1
							}
						}else{
						if(time_attack == 100){
						sprite_index = sprite_get("sandbak_m");
						attack = true; 
						time_attack = 0
							if(bosstype == 1){
								if(dx == 1){
								x= 448
								y= 384
								}else{
						
									if(dx == 2){
								x= 192
								y= 256
							
									}else{
										if(dx == 3){
										x= 768
										y= 256
								
										}else{
								
										}
							
									}
								}
							}
						}else{
						image_index =0
						time_attack += 1
						}
				
						if hitplayer == 0 with (pHitBox) {//pHitBox
							if place_meeting(x,y,other) {//other
							other.hitplayer = player;
							other.hitdamage = damage;
							}//other
						}//pHitBox
		
						if hitplayer > 0 && hitplayer < 5{//hitplayer
		
							if (damagei == false){//damage f
							sprite_index = sprite_get("sandbak_m");
								if(hitdamage >= 0 && hitdamage <= 10){
								sound_play( asset_get( "sfx_blow_weak1" ));
								}
								if(hitdamage >= 10 && hitdamage <= 20){
								sound_play( asset_get( "sfx_blow_heavy1" ));
								}
								if(hitdamage >= 30 && hitdamage <= 40){
								sound_play( asset_get( "sfx_blow_heavy2" ));
								}
							damagei = true;
							Physicalstrength -= hitdamage;
							attack = false;
							time1 =0;
							hitplayer = 0 
								if(Physicalstrength <= 0){
								sound_play( asset_get( "sfx_death1" ));
								oPlayer_obj = true;
								instance_create(x,y, "obj_stage_article" , 600);
								Delete = true;
								Physicalstrength = 10
									if(bosstype == 1){
										with ( obj_stage_article ) {//with
											if ( get_article_script( id ) == 96 ) {//95
											key4 = true
											}
										}
									}

								}
							}
						}//hitplayer
		
		
						if(damagei == true){
							if(time1 == 10){
							hitdamage =0;
							hitplayer =0;
							attack = false;
							damagei = false;
							time1 = 0
							}else{
							hitplayer = 0 
							image_index =4
							time1 += 1
							}
						}
		
					}
	
				}

			//}//type4
		}//type3
	}//type2
  }//type1
	if(oPlayer_obj == true){
		with(oPlayer){
			if(url == 2004919133){
			pon_count += 5;
			}
			if(url == 2105527362){
			soul_points += 5;
			}
		}
	
	
	}
	
	if (x < view_get_xview()) {
	sound_play( asset_get( "sfx_death1" ));
	instance_create(x,y, "obj_stage_article" , 600);
	Delete = true
	}
	if (x > view_get_xview() + view_get_wview()) {
	sound_play( asset_get( "sfx_death1" ));
	instance_create(x,y, "obj_stage_article" , 600);
	Delete = true
	}
	if (y > view_get_yview() + view_get_hview()) {
	sound_play( asset_get( "sfx_death1" ));
	instance_create(x,y, "obj_stage_article" , 600);
	Delete = true
	}
	if (y < view_get_yview()) {
	sound_play( asset_get( "sfx_death1" ));
	instance_create(x,y, "obj_stage_article" , 600);
	Delete = true
	}

	if(Enemygauge == 1){//Enemy　
		var hpg = instance_create(x,y, "obj_stage_article" , 602);
		var hpg2 = instance_create(x,y, "obj_stage_article" , 603);
		with(hpg){
		depth =-900000
		image_xscale =1 + other.Physicalstrength * 0.1
		x = room_width / 2;
		y = room_height / 5;
		}
		with(hpg2){
		depth =-900001
		image_xscale =1 + other.Physicalstrengthg * 0.00910
		x = room_width / 2;
		y = room_height / 5;
		}
	}
	if(Enemygauge == 2){//Enemy　
		var hpg = instance_create(x,y, "obj_stage_article" , 602);
		var hpg2 = instance_create(x,y, "obj_stage_article" , 603);
		with(hpg){
		depth =-900000
		image_xscale =1 + other.Physicalstrength * 0.1
		x = room_width / 6.9;
		y = room_height / 4.5;
		}
		with(hpg2){
		depth =-900001
		image_xscale =1 + other.Physicalstrengthg * 0.01154
		x = room_width / 2;
		y = room_height / 2;
		}

	}//Enemy
	if hitplayer >= 5{//hitplayer
	hitplayer = 0
	}
}
