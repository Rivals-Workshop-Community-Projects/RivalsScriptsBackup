//depth =1000
if (Delete == true){
instance_destroy()
}else{


//================

with(pHitBox){
//==================================================
if ( x <= get_marker_x( 1 )) {
			if(hbox_num == 4 ){
			hsp = 10
			}else{
			destroyed = 1

			}
}
//==================================================
if ( x >= get_marker_x( 6 )) {
			if(hbox_num == 4 ){
			hsp = -10
			}else{
			destroyed = 1
			}

}



		if(hbox_num == 14 || hbox_num == 15){
			destroyed = 1
		}
		if(hbox_num == 21){
			if(hitbox_timer == 1){
			destroyed = 1
			}
		}else{
			if(hbox_num == 2 || hbox_num == 4 ){
			create_hitbox(AT_NSPECIAL, 21, x, y);
			}
		}

	if(sprite_index == sprite_get("fireball2")){
						
	image_angle -= 16;
	}


//==================================================
}

if(lose == false){//lose

//=================================================

				if(damagei == true){//damageaaa

					if(time1 >= 10){
					print_debug("d")
					hitdamage =0;
										if(hitplayer == 0){
										}else{
										hitplayer = 0
										}
					damagei = false;
					time1 = 0
					}else{
					print_debug("damagetime")
					image_index =4
					time1 += 1
					}
				}else{//damageaaa



				
					if hitplayer == 0 with (pHitBox) {//pHitBox
						if place_meeting(x,y,other) {//other
						other.hitplayer = player;
						other.hitdamage = damage;
						}//other
					}//pHitBox

						if (damagei == false){//damage f

							with (pHitBox) {	
					if(sprite_index == sprite_get("fireball2")){
						
					}else{
						if(sprite_index == sprite_get("fireball3")){
						
						}else{
							 var d = instance_place(x, y, other);
								if d != noone {
								destroyed = true
								}
							}
						}
					}
							if hitplayer > 0 && hitplayer < 5{//hitplayer

									print_debug("damagei")
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
								//attack = false;
								time1 =0;
								hitplayer = 0 
									if(Physicalstrength <= 0){
									sound_play( asset_get( "sfx_death1" ));
									lose = true;
									Physicalstrength = 10 
									}
							}//hitplayer
						}
									if(hitplayer >= 5){
										if(hitplayer == 0){
										}else{
										hitplayer = 0
										}
									}

				}//damageaaa
//====================================================================================


//==============
	if(into == false){//into
mask_index = sprite_get("boss_mask");
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 96 ) {
							cep = 1
							}
						}
				with oPlayer {//oPlayer
				//set_state(PS_WRAPPED);
				y = 448
				x = 320
				}

				if(losetime1  == 3){
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 596 ) {
							stop =  1
							}
						}
					if(losetime2 == 1){
					spr_dir = -1;
					sprite_index = sprite_get("boss_zan");
					image_index =1
					image_alpha = -1
					losetime1 -=1400
					}
					if(losetime2 == 2){
					image_alpha = -0.9
					losetime1 -=1400
					image_index =1
					}
					if(losetime2 == 3){
					image_alpha = -0.8
					losetime1 -=1400
					image_index =1
					}
					if(losetime2 == 4){
					image_alpha = -0.7
					image_index =1
					}
					if(losetime2 == 5){
					image_alpha = -0.6
					image_index =1
					}
					if(losetime2 == 6){
					image_alpha = -0.5
					image_index =1
					}
					if(losetime2 == 7){
					image_alpha = -0.4
					image_index =1
					}
					if(losetime2 == 8){
					image_alpha = -0.3
					image_index =1
					}
					if(losetime2 == 9){
					image_alpha = -0.2
					image_index =1
					}
					if(losetime2 == 10){
					image_alpha = -0.1
					image_index =1
					}
					if(losetime2 == 11){
					vsp = -1;
					image_alpha = 0
					image_index =1
					}
					if(losetime2 == 12){
					image_alpha = 0.1
					image_index =1
					}
					if(losetime2 == 13){
					image_alpha = 0.2
					image_index =1
					}
					if(losetime2 == 14){
					image_alpha = 0.3
					image_index =1
					}
					if(losetime2 == 15){
					image_alpha = 0.4
					image_index =1
					}
					if(losetime2 == 16){
					image_alpha = 0.5
					image_index =1
					}
					if(losetime2 == 17){
					image_alpha = 0.4
					image_index =1
					}
					if(losetime2 == 18){
					image_alpha = 0.5
					image_index =1
					}
					if(losetime2 == 19){
					image_alpha = 0.6
					image_index =1
					}
					if(losetime2 == 20){
					image_alpha = 0.7
					image_index =1
					}
					if(losetime2 == 21){
					image_alpha = 0.8
					image_index =1
					}
					if(losetime2 == 22){
					image_alpha = 0.9
					image_index =1
					}
					if(losetime2 == 23){
					vsp = 0;
					image_alpha = 1
					image_index =1
					}
//
					if(losetime2 == 24){
					image_index =1
					}
					if(losetime2 == 25){
					image_index =2
					}
					if(losetime2 == 26){
					image_index =3
					}
					if(losetime2 == 27){
					image_index =4
					}
					if(losetime2 == 28){
					image_index =5
					}
					if(losetime2 == 29){
					image_index =6
					}
					if(losetime2 == 30){
					image_index =7
					}
					if(losetime2 == 31){
					image_index =8
					}
					if(losetime2 == 32){
					image_index =9
					}
					if(losetime2 == 33){
					var effectlo = instance_create(x,y, "obj_stage_article" , 600);
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 96 ) {
							effect = 2
							}
						}
					image_index =10
					}
					if(losetime2 == 34){
					image_index =11
					}
					if(losetime2 == 35){
					image_index =12
					}
					if(losetime2 == 36){
					image_index =13
					}
					if(losetime2 == 37){
					image_index =14
					}
					if(losetime2 == 38){
					image_index =15
					}
					if(losetime2 == 39){
					image_index =16
					}
					if(losetime2 == 40){
					image_index =17
					}
					if(losetime2 == 41){
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 596 ) {
							stop =  0
							}
						}
					losetime1 =0
					losetime2 =0
					music_play_file("boss");
					sprite_index = sprite_get("boss_i");
					into = true
					}

				losetime2 +=1
					if(losetime2 == 1){
				losetime1 =-400
					}else{
				losetime1 =0

					}
				}else{
				losetime1 +=1
				}


	}else{//into


		var touy = instance_place(x, y, obj_stage_article_solid);
		if touy != noone {
			with(obj_stage_article){
				if ( get_article_script( id ) ==702 ) {
					if(aio == 0){
					aio = 1
					}else{
					aio = 0
					}
				}
			}
		}

		if(astop == 1){
		vsp = 0;
		}else{
			if(aio == 0){
			vsp = 1;
			}
			if(aio == 1){
			vsp = -1;
			}
		}
								if(spr_b == 0){
								spr_dir = -1;
								//create_hitbox(AT_NSPECIAL,16,x+16, y+27);
								}else{
								spr_dir = 1;
								//create_hitbox(AT_NSPECIAL,16,x-16, y+27);
								}
//====================================================================================
//=================================================
/*
			        var dist = room_width * room_height;
				with oPlayer {
	        		    if point_distance(x, y, other.x, other.y) <= dist{
	        		        other.ai_target = id;
	        		        dist = point_distance(x, y, other.x, other.y);
	        			}
	        		}

*/


		if(time_attack >= 99){
//====================================================================================
//===================================================

//=====================================================
//====================================================================================
			if(attacktimetype == 1){
			print_debug("attacktimetype1")
				if(attacktime1 == 3){
					sprite_index = sprite_get("boss_zan");

					if(attacktime2 == 0){
					image_index =0
					}
					if(attacktime2 == 1){
					astop = 1
					sound_play( asset_get("sfx_forsburn_reappear"));
					image_index =1
					}
					if(attacktime2 == 2){
					image_index =2
					}
					if(attacktime2 == 3){
					image_index =3
					}
					if(attacktime2 == 4){
					image_index =4
					}
					if(attacktime2 == 5){
					image_index =5
					}
					if(attacktime2 == 6){
					image_index =6
					}
					if(attacktime2 == 7){
					image_index =7
					}
					if(attacktime2 == 8){
					image_index =8
					}
					if(attacktime2 == 9){
					image_index =9
					}
					if(attacktime2 == 10){
					sound_play( asset_get("sfx_boss_laser"));
					image_index =10
					}
					if(attacktime2 == 11){
					image_index =11
					}
					if(attacktime2 == 12){
					image_index =12
					}
					if(attacktime2 == 13){
					image_index =13
					}
					if(attacktime2 == 14){
					image_index =14
					}
					if(attacktime2 == 15){
					image_index =15
					}
					if(attacktime2 == 16){
					image_index =16
					}
					if(attacktime2 == 17){
					image_index =17
					}
					if(attacktime2 == 18){
					astop = 0
					sprite_index = sprite_get("boss_i");
					attacktimetype = 0
					image_index =0
					attacktime2 =0
					attacktime1 =0
					hitdamage =0;
					attack = false;
					time_attack = 0
					}
				image_index +=1
				attacktime2 +=1
				attacktime1 =0
				}else{
					if(attacktime2 >= 10){
						if(spr_b == 0){ 
						var fb =create_hitbox(AT_NSPECIAL, 3, x+16, y-84);
							with(fb){
							hsp = -30
							}
						}else{
						var fb =create_hitbox(AT_NSPECIAL, 3, x-16, y-84);
							with(fb){
							hsp = 30
							}
						}
					}
				attacktime1 +=1
				}

			}
//=====================================================
//=====================================================
			if(attacktimetype == 2){
			print_debug("attacktimetype2")
				if(attacktime1 == 5){
					sprite_index = sprite_get("boss_zan2");
					if(attacktime2 == 0){
					image_index =0
					}
					if(attacktime2 == 1){
					astop = 1
					image_index =1
					sound_play( asset_get("sfx_forsburn_breath"));
					}
					if(attacktime2 == 2){
					image_index =2
					}
					if(attacktime2 == 3){
					image_index =3
					}
					if(attacktime2 == 4){
					image_index =4
					}
					if(attacktime2 == 5){
					image_index =5
					}
					if(attacktime2 == 6){
					image_index =6
					}
					if(attacktime2 == 7){
					image_index =7
					}
					if(attacktime2 == 8){
					image_index =8
					}
					if(attacktime2 == 9){
					sound_stop( asset_get("sfx_forsburn_breath"));
					sound_play( asset_get("sfx_ori_stomp_hit"));
					image_index =9
					}
							
					if(attacktime2 == 10){
						if(spr_b == 0){ 
						hsp = -30
						}else{
						hsp = 30
						}
					image_index =10
					}
					if(attacktime2 == 11){
							if(Physicalstrength <= 50){
							sound_play( asset_get("sfx_zetter_downb"));
								var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb){
								vsp = -10
								}
								var fb2 =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb2){
								vsp = 10
								}
							}
						if(spr_b == 0){ 
						hsp = -25
						}else{
						hsp = 25
						}
					image_index =11
					}
					if(attacktime2 == 12){
						if(spr_b == 0){ 
						hsp = -20
						}else{
						hsp = 20
						}
					image_index =12
					attacktime1 +=3
					}
					if(attacktime2 == 13){
							if(Physicalstrength <= 50){
							sound_play( asset_get("sfx_zetter_downb"));
								var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb){
								vsp = -10
								}
								var fb2 =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb2){
								vsp = 10
								}
							}
						if(spr_b == 0){ 
						hsp = -15
						}else{
						hsp = 15
						}
					image_index =13
					attacktime1 +=3
					}
					if(attacktime2 == 14){
						if(spr_b == 0){ 
						hsp = -10
						}else{
						hsp = 10
						}
					image_index =14
					attacktime1 +=3
					}
					if(attacktime2 == 15){
							if(Physicalstrength <= 50){
							sound_play( asset_get("sfx_zetter_downb"));
								var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb){
								vsp = -10
								}
								var fb2 =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb2){
								vsp = 10
								}
							}
						if(spr_b == 0){ 
						hsp = -5
						}else{
						hsp = 5
						}
					image_index =15
					attacktime1 +=3
					}
					if(attacktime2 == 16){
						if(spr_b == 0){ 
						hsp = -4
						}else{
						hsp = 4
						}
					image_index =16
					attacktime1 +=3
					}
					if(attacktime2 == 17){
							if(Physicalstrength <= 50){
							sound_play( asset_get("sfx_zetter_downb"));
								var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb){
								vsp = -10
								}
								var fb2 =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb2){
								vsp = 10
								}
							}
						if(spr_b == 0){ 
						hsp = -3
						}else{
						hsp = 3
						}
					image_index =17
					attacktime1 +=3
					}
					if(attacktime2 == 18){
						if(spr_b == 0){ 
						hsp = -2
						}else{
						hsp = 2
						}
					attacktime1 -=50
					image_index =17
					}
					if(attacktime2 == 19){
							if(Physicalstrength <= 50){
							sound_play( asset_get("sfx_zetter_downb"));
								var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb){
								vsp = -10
								}
								var fb2 =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb2){
								vsp = 10
								}
								var fb3 =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
								with(fb2){
								hsp = -10
								}
							}
						hsp = 0
					image_index =17
					}
					if(attacktime2 == 20){
						if(spr_b == 0){ 
						spr_b = 1
						}else{
						spr_b = 0
						}
					astop = 0
					sprite_index = sprite_get("boss_i");
					attacktimetype = 0
					image_index =0
					attacktime2 =0
					attacktime1 =0
					time_attack = 0
					attack = false;
					}
	
				attacktime2 +=1
				attacktime1 =0
				}else{	
					if(attacktime2 >= 10){
					var fb =create_hitbox(AT_NSPECIAL, 1, x, y-64);
					}
				attacktime1 +=1
				}
			}
//=====================================================
			if(attacktimetype == 3){
			print_debug("attacktimetype3")

				if(attacktime1 == 5){
				//sound_play( sound_get("voice2"));
					sprite_index = sprite_get("boss_zan");

					if(attacktime2 == 0){
					image_index =0
					}
					if(attacktime2 == 1){
					sound_play( asset_get("sfx_forsburn_breath"));
					image_index =1
					}
					if(attacktime2 == 2){
					image_index =2
					}
					if(attacktime2 == 3){
					image_index =3
					}
					if(attacktime2 == 4){
					image_index =4
					}
					if(attacktime2 == 5){
					image_index =5
					}
					if(attacktime2 == 6){
					image_index =6
					}
					if(attacktime2 == 7){
					image_index =7
					}
					if(attacktime2 == 8){
					image_index =8
					}
					if(attacktime2 == 9){
					image_index =9
					}
					if(attacktime2 == 10){
							if(Physicalstrength == 50){
									var t =instance_create(x-128,y, "obj_stage_article" , 701);
									with(t){
									typeb =1
									type = 1
									hsp -= random_func( 0, 6, false );
									vsp -= random_func( 0, 3, false );
									Physicalstrength =100;
									}
							}
					sound_stop( asset_get("sfx_forsburn_breath"));
					sound_play( asset_get("sfx_ori_stomp_hit"));
					var fb =create_hitbox(AT_NSPECIAL, 4, x, y-64);	
						if(spr_b == 0){ 	
							with(fb){
						hsp = -10
						vsp = -10
							}
						}else{
							with(fb){
						hsp = 10
						vsp = -10
							}
						}
					image_index =10
					}
					if(attacktime2 == 11){
							if(Physicalstrength <= 50){
									var t =instance_create(x-128,y, "obj_stage_article" , 701);
									with(t){
									typeb =1
									type = 1
									hsp -= random_func( 0, 6, false );
									vsp -= random_func( 0, 3, false );
									Physicalstrength =100;
									}
							}
					image_index =11
					}
					if(attacktime2 == 12){
							if(Physicalstrength <= 50){
									var t =instance_create(x-128,y, "obj_stage_article" , 701);
									with(t){
									typeb =1
									type = 1
									hsp -= random_func( 0, 6, false );
									vsp -= random_func( 0, 3, false );
									Physicalstrength =100;
									}
							}
					image_index =12
					}
					if(attacktime2 == 13){
					image_index =13
					}
					if(attacktime2 == 14){
					image_index =14
					}
					if(attacktime2 == 15){
					image_index =15
					}
					if(attacktime2 == 16){
					sprite_index = sprite_get("boss_i");
					attacktimetype = 0
					image_index =0
					attacktime2 =0
					attacktime1 =0
					time_attack = 0
					}
	
				attacktime2 +=1
				attacktime1 =0
				}else{
				attacktime1 +=1
				}

			}
//=====================================================
			if(attacktimetype == 4){
			print_debug("attacktimetype4")


				if(attacktime1 == 2){
				//sound_play( sound_get("sfx_FNF"));
					sprite_index = sprite_get("boss_zan");

					if(attacktime2 == 0){
					image_index =0
					}
					if(attacktime2 == 1){
					//sound_play( asset_get("sfx_forsburn_breath"));
					sound_play( asset_get("sfx_forsburn_consume"));
					image_index =1
					}
					if(attacktime2 == 2){
					image_index =2
					}
					if(attacktime2 == 3){
					image_index =3
					}
					if(attacktime2 == 4){
					image_index =4
					}
					if(attacktime2 == 5){
					image_index =5
					}
					if(attacktime2 == 6){
					image_index =6
					}
					if(attacktime2 == 7){
					image_index =7
					}
					if(attacktime2 == 8){
					image_index =8
					}
					if(attacktime2 == 9){
					image_index =9
					}
					if(attacktime2 == 10){
					sound_play( asset_get("sfx_zetter_downb"));
					var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
						if(spr_b == 0){ 	
							with(fb){
						hsp = -10
							}
						}else{
							with(fb){
						hsp = 10
							}
						}
					image_index =10
					}
					if(attacktime2 == 11){
					image_index =11
					}
					if(attacktime2 == 12){
					image_index =12
					}


					if(attacktime2 == 13){
					sound_play( asset_get("sfx_zetter_downb"));
					var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
						if(spr_b == 0){ 	
							with(fb){
						hsp = -10
							}
						}else{
							with(fb){
						hsp = 10
							}
						}
					image_index =9
					}
					if(attacktime2 == 14){
					image_index =10
					}
					if(attacktime2 == 15){
					image_index =11
					}
					if(attacktime2 == 16){
					image_index =12
					}

					if(attacktime2 == 17){
					sound_play( asset_get("sfx_zetter_downb"));
					var fb =create_hitbox(AT_NSPECIAL, 2, x, y-64);	
						if(spr_b == 0){ 	
							with(fb){
						hsp = -10
							}
						}else{
							with(fb){
						hsp = 10
							}
						}
					image_index =9
					}
					if(attacktime2 == 18){
					image_index =10
					}
					if(attacktime2 == 19){
					image_index =11
					}
					if(attacktime2 == 20){
					image_index =12
					}

					if(attacktime2 == 21){
					image_index =9
					}
					if(attacktime2 == 22){
					image_index =10
					}
					if(attacktime2 == 23){
					image_index =11
					}
					if(attacktime2 == 24){
					image_index =12
					}

					if(attacktime2 == 25){
					image_index =13
					}
					if(attacktime2 == 26){
					image_index =14
					}
					if(attacktime2 == 27){
					image_index =15
					}
					if(attacktime2 == 28){
					image_index =16
					}
					if(attacktime2 == 29){
					image_index =17
					}
					if(attacktime2 == 30){
					sprite_index = sprite_get("boss_i");
					attacktimetype = 0
					image_index =0
					attacktime2 =0
					attacktime1 =0
					attack = false;
					time_attack = 0
					}
	
	
				image_index +=1
				attacktime2 +=1
				attacktime1 =0
				}else{
				attacktime1 +=1
				}


			}
//===================================================
//===================================================
			if(attacktimetype >= 5 || attacktimetype == 0 ){
			attacktimetype = random_func(1, 5, true);
			}
//===================================================
/*
						//
						hitplayer = 0
						time1 =0
						time2 =0
						//time_attack = 0
						hitdamage =0;
						hitplayer =0;
						//
						attack = false;
						damagei = false
						//
*/
//===================================================

		}else{//attack
				if(time_attack >= 100){
					if(attacktimetype == 0 ){
					sprite_index = sprite_get("boss_i");
					attacktimetype = random_func(1, 5, true);
					}
					time_attack = 0
				}else{
				image_index +=1
				time_attack += 1
				}
					if(hitplayer >= 5){
						if(hitplayer == 0){
						}else{
						hitplayer = 0
						}
					}



		}//attackf

//
	}//into


	if(Enemygauge == 1){//Enemy　
			var hpg = instance_create(x,y, "obj_stage_article" , 602);
			var hpg2 = instance_create(x,y, "obj_stage_article" , 603);
			with(hpg){
			sprite_index = sprite_get("hp2");
			hpg = 1
			depth =-900001
			image_xscale =0 + other.Physicalstrength * 0.00774
			x = room_width / 2.89;
			y = room_height / 1.4;
			}
			with(hpg2){
			sprite_index = sprite_get("hpg2");
			hpg = 1
			depth =-900002
			x = room_width / 2.9;
			y = room_height / 1.4;
			}
	}//Enemy



}else{//lose
//obj_workshop_async
				if(losetime1  == 20){
					if(losetime2 == 0){
					losetime1 -=50
					}
					if(losetime2 == 1){
					image_angle -= 45;
					hsp = 0
					vsp = 0
					astop = 1
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 96 ) {
							effect = 0
							}
						}
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 596 ) {
							stop =  1
							}
						}
					music_set_volume( 1 );
					losetime1 -=50
					}
					if(losetime2 == 2){
					music_set_volume( 0.9 );
					losetime1 -=50
					}
					if(losetime2 >= 3){
					music_set_volume( 0.8 );
					}
					if(losetime2 == 4){
					music_set_volume( 0.7 );
					vsp = 1
					}
					if(losetime2 == 5){
					music_set_volume( 0.6 );
					}
					if(losetime2 == 6){
					music_set_volume( 0.5 );
			print_debug("l65")
					}
					if(losetime2 == 7){
					music_set_volume( 0.4 );
			print_debug("l75")
					}
					if(losetime2 == 8){
					music_set_volume( 0.3 );
					}
					if(losetime2 == 9){
					music_set_volume( 0.2 );
					}
					if(losetime2 == 10){
					music_set_volume( 0.1 );
					}
					if(losetime2 == 11){
					music_stop();
					}
					if(losetime2 == 12){
					}
					if(losetime2 == 13){
					losetime1 -=1900
					}
					if(losetime2 == 14){
					sound_play( sound_get("bome"));
					create_hitbox(AT_NSPECIAL,15,x, y);
					losetime1 -=1900
					}
					if(losetime2 == 15){
									var t =instance_create(x-128,y, "obj_stage_article" , 703);
									with(t){
									hsp += random_func( 0, 6, true );
									hsp -= random_func( 0, 9, true );
									vsp -= random_func( 0, 6, true );
									}
					losetime1 =19
					}
					if(losetime2 == 16){
									var t5 =instance_create(x,y, "obj_stage_article" , 703);
									with(t5){
									hsp += random_func( 0, 6, true );
									hsp -= random_func( 0, 19, true );
									vsp -= random_func( 0, 6, true );
									}
					losetime1 =19
					}
					if(losetime2 == 17){
									var t4 =instance_create(x,y, "obj_stage_article" , 703);
									with(t4){
									hsp += random_func( 0, 6, true );
									hsp -= random_func( 0, 2, true );
									vsp -= random_func( 0, 6, true );
									}
					losetime1 =19
					}
					if(losetime2 == 18){
									var t2 =instance_create(x,y, "obj_stage_article" , 703);
									with(t2){
									hsp += random_func( 0, 6, true );
									hsp -= random_func( 0, 4, true );
									vsp -= random_func( 0, 6, true );
									}
					losetime1 =19
					}
					if(losetime2 == 19){
									var t3 =instance_create(x,y, "obj_stage_article" , 703);
									with(t3){
									hsp += random_func( 0, 6, true );
									hsp -= random_func( 0, 5, true );
									vsp -= random_func( 0, 6, true );
									}
					losetime1 =19
					}
					if(losetime2 == 20){
								sound_play( asset_get("sfx_boss_explosion"));	
								var effectrlo = instance_create(x,y, "obj_stage_article" , 600);
								with(effectrlo){
								depth =10
								df = 1
								l = 2
								}
					losetime1 =-200
					}
					if(losetime2 == 21){
							with oPlayer {//oPlayer
								with ( obj_stage_article_platform ) {
								Delete = true
								}
								with ( obj_stage_article_solid ) {
								Delete = true
								}
								with ( obj_stage_article ) {
								destroy_hitboxes();
								if ( get_article_script( id ) == 96 ) {
								xq =2020;
								yq =2021;
								initialization = false
									if ( get_article_script( id ) == 596 ) {
									stop =1
									}
								}
								Delete = true
								}
			
							}
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 96 ) {
							effect = 0
							}
						}
					}
	
				losetime2 +=1
				losetime1 =0
				}else{

					if(losetime2 >= 3){
						if(losetime2 <= 9){
						vsp = 0.1
							if(timee >= 10){
							sound_play( asset_get("sfx_boss_fireball"));
								
								xe =-40 
								ye =-60
								xe += random_func( 0, 70, false ); 
								ye += random_func( 0, 70, false );
								var efx =create_hitbox(AT_NSPECIAL,14,x, y);
								with(efx){
								x +=other.xe
								y += other.ye
								}
							timee =0
							}else{
							timee +=1
							}
						}
					}
					if(losetime2 == 10){
						vsp = 0.1
							if(timee >= 1){
							sound_play( asset_get("sfx_boss_fireball"));
								
								xe =-40 
								ye =-60
								xe += random_func( 0, 70, false ); 
								ye += random_func( 0, 70, false );
								xe += random_func( 20, 70, false ); 
								var efx =create_hitbox(AT_NSPECIAL,14,x, y);
								with(efx){
								x +=other.xe
								y += other.ye
								}
							timee =0
							}else{
							timee +=1
							}
					}




					if(losetime2 <= 2){
						with(oPlayer){
						window = window
						state = state
						hsp = 0
						vsp = 0
						}
					}
				losetime1 +=1
				}


}//lose


}