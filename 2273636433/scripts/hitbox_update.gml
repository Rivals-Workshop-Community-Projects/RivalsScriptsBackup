//hitbox_update

if attack == AT_NSPECIAL{
	
	player_id.pill_counter+=1;
	if was_parried { reset++;}								//parrying a pill
	if reset == 1 {  hitbox_timer =0; }
	if show > 30 {
		show = 0;
	}

	damage= 4+ C_dam*2;
	kb_value = 4+ C_knock*1.25;

	//DAMAGE AND KNOCKBACK RESTRICTIONS
	if limit == 1{																				//For RUNE K
		if damage >16 { damage = 16; C_dam =6;}
		if kb_value >12 {  kb_value = 12; C_knock =6;}
		if  hitstun_factor >1.2{hitstun_factor=1.2;}
	}

	if C_dam > 6 { C_dam = 6;}
	if C_knock > 6 {C_knock = 6;}

	if damage >=8 {
		effect = 0;
	}

	//ANIMATION
	if hsp !=0  {proj_angle = (hitbox_timer*(abs(hsp)+1))*-spr_dir;}
	else if hsp ==0{ proj_angle = (hitbox_timer*2)*-spr_dir; }
	//BOUNCE
	if pill_state != 5  &&(!free || (place_meeting(x, y + 1 , asset_get("obj_stage_article_solid")) && vsp>=0) 	|| (place_meeting(x, y + 1 , asset_get("obj_article_solid")) && vsp>=0) ){
		floor_pos = y;
	}
	if y == floor_pos && walls!=1 {
		 if grav == 0.5 { vsp = -10.5}
		 else if (hsp!=0 ) {vsp = -8.5;}
		 else if pill_state == 2{ vsp = 0;} 
		 else { vsp = -15;}
		 floor_pos = -6900;
	} 

	//MOVE INTERACTIONS
	//CHECK IF INTERACTS WITH FSPECIAL
	if hitbox_timer > 6  && player_id.attack == AT_FSPECIAL && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2  && player_id.window_timer < 4{
		if abs(x - (player_id.x + 44*player_id.spr_dir))<56{
				if abs(y - (player_id.y - 34))<56{

					//Check each Pill State
					if (pill_state == 2 ){					//Fstrong
						vsp = 0;
						if hsp == 0 {hsp = 5*player_id.spr_dir;}
						length = 120;
						pill_state = 9;
					}else if (pill_state == 3){				//Dspecial
						vsp = -5;
						hsp = 5*player_id.spr_dir; 
						length = 120;
						pill_state =0;
					}else if (pill_state == 4){				//Dstrong // air
						 vsp = -5;
						 length = length* 3/4;
						if abs(hsp) <= 3.33{hsp =5*player_id.spr_dir;}
						else{hsp = abs(hsp)*1.5*player_id.spr_dir; }
						spr_dir = player_id.spr_dir;
						pill_state = 4;
					}else if (pill_state == 5){				//Dstrong // rolling
						vsp = 0;
						length = length* 3/4;
						if abs(hsp) <= 3.33 { hsp = 5*player_id.spr_dir; }
						else{ hsp = abs(hsp)*1.5*player_id.spr_dir;}
						spr_dir = player_id.spr_dir;
						pill_state = 5;
					}	else {
						vsp = -abs(vsp)*.8;		
						length = length* 3/4;
						if abs(hsp) <= 2.5 { hsp = 5*player_id.spr_dir; }
						else{
							hsp = abs(hsp)*2*player_id.spr_dir; 
						}
						spr_dir = player_id.spr_dir;
						player = orig_player;				//Just in case, its my pill again
						//grav = 0.56;
						pill_state =0;
					}

					hitbox_timer = 0;
					player_id.pilleffect=2;
					spr_dir = player_id.spr_dir;		//Can Turn Around
					C_knock += 2;
					hitstun_factor+=0.05;
					show = 1;
					//Reseting reflect values
					can_hit_self =false;
					can_hit[1] = true;
					can_hit[2] = true;
					can_hit[3] = true;
					can_hit[4] = true;
				}
		}
	}

	//CHECK IF INTERACTS WITH DSPECIAL ( TORNADO)
	if player_id.attack == AT_DSPECIAL  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2 {
		if abs(x - player_id.x)<52{
			if abs(y - (player_id.y - 36))<52{
				hsp = 0;
				vsp = 0;
				length = hitbox_timer + 19;			//NiceNice
				walls =1;
				x = player_id.x + sin(hitbox_timer)*20 ;
				y = player_id.y - 42+ sin(hitbox_timer)*10;
				pill_state =0;
			}
		}
	}

	//CHECK IF INTERACTS WITH USPECIAL (RECOVERY)
	if (hitbox_timer > 6)  && player_id.attack == AT_USPECIAL  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2 {
		if abs(x -( player_id.x +28*player_id.spr_dir))<48{
			if abs(y - (player_id.y - 25))<48{
				x = player_id.x +28*player_id.spr_dir;
				y = player_id.y - 25;
				vsp = -15;
				hsp = 2.25*player_id.spr_dir;
				length = 200;
				hitbox_timer = 0;
				if grav!= 0 {grav = 0.5;}
				else { grav = 0.25;}
				player_id.pilleffect=1;
				C_dam  += 2;
				hitstun_factor+=0.05;
				extra_hitpause=4;
				pill_state =0;
				spr_dir = player_id.spr_dir;		//Can Turn Around
				show = 1;
				player_id.has_hit = true;
				player_id.show_flames = true;
				//player_id.hitpause=true;
				//player_id.hitstop = 2;			
			}
		}
	}

	//CHECK IF INTERACTS WITH USTRong (MEME LAUNCHER) -NUMERO 2
	if (hitbox_timer > 8)  && player_id.attack == AT_USTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 2  && player_id.window_timer < 4 && player_id.window_timer > 1{
		if abs(x - (player_id.x-28*player_id.spr_dir))<48{
			if abs(y - (player_id.y - 50))<64{
				grav = 0.42;
				vsp = - 26 - player_id.strong_charge/6;
				hsp = hsp/6;
				y = player_id.y - 62;
				hitbox_timer =0;
				length = 9999;
				grounds = 0;
				pill_state = 1;
				player_id.pilleffect=4;
				C_knock += 2;
				hitstun_factor+=0.05;
				show = 1;
				//player_id.hitpause=true;
				//player_id.hitstop = 4;
			}
		}
	}

	//CHECK IF INTERACTS WITH USTRong (MEME LAUNCHER) -NUMERO 3
	if (hitbox_timer > 8)  && player_id.attack == AT_USTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 2  && player_id.window_timer < 6 && player_id.window_timer > 3{
		if abs(x - (player_id.x+12*player_id.spr_dir))<80{
			if abs(y - (player_id.y - 58))<52{
				grav = 0.42;
				vsp = - 26 - player_id.strong_charge/6;
				hsp = hsp/8;
				y = player_id.y - 54;
				hitbox_timer =0;
				length = 9999;
				grounds = 0;
				pill_state = 1;
				player_id.pilleffect=9;
				C_knock += 2;
				hitstun_factor+=0.05;
				show = 1;
				//player_id.hitpause=true;
				//player_id.hitstop = 4;
			}
		}
	}



	//CHECK IF INTERACTS WITH fSTRong (STUNNER) 
	if (hitbox_timer > 8)  && player_id.attack == AT_FSTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 3 {
		if abs(x - (player_id.x+72*player_id.spr_dir))<46{
			if abs(y - (player_id.y - 38))<46{
				
				coord_x = player_id.x + 64*player_id.spr_dir;
				coord_y = player_id.y - 38;

				//ROLLING DTRONG PROYECTILES
				if	pill_state ==4{
					prev_grav = 0;
					prev_vsp= 0;
					roll = 1;
				}

				if	pill_state ==5{
					prev_grav = 0;
					prev_vsp= 0;
					roll = -1;
				}
				if pill_state != 2{			//FSTRONG
					length =150;
					hitbox_timer =0;
					player_id.pilleffect=5;
					prev_hsp = hsp;
					prev_vsp = vsp;
					prev_grav = grav;
					y = y-4;
					hsp = 0;
					vsp = 0;
					grav = 0;
					C_knock += 1;
					C_dam  += 1;
					hitstun_factor+=0.05;
					show = 1;
					charge = player_id.strong_charge;
					pill_state = 2;
					//player_id.hitpause=true;
					//player_id.hitstop = 2;
				}

			}
		}
	}

	//CHECK IF INTERACTS WITH DSPECIAL ( LAUNCHER)
	if (hitbox_timer > 8)  && player_id.attack == AT_DSPECIAL  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 3  && player_id.window_timer > 5{
		if abs(x - player_id.x)<56{
			if abs(y - (player_id.y - 36))<56{
				grav = 0.56;
				x = player_id.x;
				y = player_id.y - 40;
				vsp = - 15;
				hsp = 0;
				hitbox_timer =0;
				length = 240;
				walls = 2;
				player_id.pilleffect=3;
				pill_state =3;
				C_knock += 1;
				C_dam  += 1;
				hitstun_factor+=0.05;
				show = 1;
			}
		}
	}

	//CHECK IF INTERACTS WITH DSTRONG (ROLLING) - HITBOX 1
	if (hitbox_timer > 8)  && player_id.attack == AT_DSTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 3  && player_id.window_timer <3{
		if abs(x - (player_id.x+40*player_id.spr_dir))<48{
			if abs(y - (player_id.y - 26))<58{
				grav = 0.56;
				length = 110;
				hitbox_timer =0;
				player_id.pilleffect=6;
				C_dam  += 2;
				hitstun_factor+=0.05;
				show = 1;
				vsp =  -11-player_id.strong_charge/20;
				if pill_state == 4 || pill_state == 5  { hsp = player_id.spr_dir*(abs(hsp*1.25)+player_id.strong_charge/20);}
				else {hsp = player_id.spr_dir*(2.25+ player_id.strong_charge/20);}
				frict = -0.15;
				pill_state = 4;
				spr_dir = player_id.spr_dir;
				//player_id.hitpause=true;
				//player_id.hitstop = 4;
			}
		}
	}

	//CHECK IF INTERACTS WITH DSTRONG (ROLLING) - HITBOX 2
	if (hitbox_timer > 8)  && player_id.attack == AT_DSTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 3  && player_id.window_timer >5{
		if abs(x - (player_id.x-34*player_id.spr_dir))<48{
			if abs(y - (player_id.y - 26))<58{
				
				grav = 0.56;
				length = 110;
				hitbox_timer =0;
				player_id.pilleffect=7;
				C_dam  += 2;
				hitstun_factor+=0.05;
				show = 1;
				vsp = -11-player_id.strong_charge/20;
				if pill_state == 4 || pill_state == 5  { hsp = -player_id.spr_dir*(abs(hsp*1.25)+player_id.strong_charge/20);}
				else{hsp = -player_id.spr_dir*(2.5+ player_id.strong_charge/20);}
				frict = -0.15;
				pill_state = 4;
				spr_dir = -player_id.spr_dir;
				//player_id.hitpause=true;
				//player_id.hitstop = 4;
			}
		}
	}

	//RETURNING PILLS TO NORMAL BEHAVIOR
	if (pill_state == 1 && !free && hitbox_timer != 0 )|| (place_meeting(x, y + 1 , asset_get("obj_stage_article_solid")) && vsp>=0 && hitbox_timer != 0 ) 	|| (place_meeting(x, y + 1 , asset_get("obj_article_solid")) && vsp>=0 && hitbox_timer != 0) { destroyed = true;}
	if  pill_state ==2{
		if ( hitbox_timer >89 + charge) {
			
			if ( roll == 0) {pill_state =0;}
			else if (roll == 1) {pill_state =4; }
			else if (roll == -1) {pill_state =5; }
			charge = 0;
			hsp = prev_hsp;
			vsp = prev_vsp;
			grav = prev_grav;
			hitbox_timer = 0;		

		}else{
			proj_angle = (hitbox_timer*1)*-spr_dir;					//Frozen in place
			if( hitbox_timer % 15 == 0){
				spawn_hit_fx( x, y, 20 );
				sound_play(  asset_get("sfx_absa_jab1"));
			}
			//ADJUST COORDINATES
			if y < (coord_y) { y+=1;}
			if y > (coord_y) { y-=1;}
			if x < (coord_x) { x+=1;}
			if x > (coord_x) { x-=1;}
		}
	}

	if pill_state ==4{
		proj_angle = (hitbox_timer*(abs(hsp)+10))*-spr_dir;
		if hitbox_timer >8 && (!free || (place_meeting(x, y + 1 , asset_get("obj_stage_article_solid")) && vsp>=0) 	|| (place_meeting(x, y + 1 , asset_get("obj_article_solid")) && vsp>=0)) {
			vsp = 0;
			pill_state = 5;
		}
	}

	if pill_state ==5 {
		proj_angle = (hitbox_timer*(abs(hsp)+10))*-spr_dir;
		if hsp >=16 {hsp = 15}
		if hsp <=-16 {hsp = -15}
	}
	
	//Lag prevention
	if player_id.snolid == 1 {
		hitbox_timer+=1;
	}
}


//Force Show - FOR DITTO
if forced == 1 {
	show = 1
	forced = 0;
}



if !("in_adventure" in player_id) {
	if y > player_id.phone_blastzone_b + + 300 {
		destroyed = true;
	}
}


/*	//Preventing overlap
	with (asset_get("pHitBox")){
		if  type == 2  && attack == AT_NSPECIAL && id != other.id {
			if abs(x -  other.x)<=8 && abs(y -  other.y)<=8{
				if pill_state == 3 {hsp = 1.5*spr_dir;}
			} 
		} 
	}
*/