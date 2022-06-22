//hitbox_update

if attack == AT_NSPECIAL{
	player_id.pill_counter+=1;
	if was_parried { reset++;}								//parrying a pill
	if reset == 1 {  hitbox_timer =0; }
	if show > 30 {
		show = 0;
	}

	//DAMAGE AND KNOCKBACK RESTRICTIONS
	if limit == 1{																				//For RUNE K
		if damage >14 { damage = 14; C_dam =6;}
		if kb_value >13.5 {  kb_value = 13.5; C_knock =6;}
		if extra_hitpause >20 {  extra_hitpause =20;}
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
	if !free || (place_meeting(x, y + 1 , asset_get("obj_stage_article_solid")) && vsp>=0) 	|| (place_meeting(x, y + 1 , asset_get("obj_article_solid")) && vsp>=0) {
		floor_pos = y;
		 if length == 99999{
			destroyed = true;
		 }
	}
	if y == floor_pos {
		 if grav == 0.5 { vsp = -10.5}
		 else if (hsp!=0 ) {vsp = -8.5;}
		 else if pill_state == 2{ vsp = 0;} 
		 else { vsp = -15;}
		 floor_pos = 0;
	} 

	//MOVE INTERACTIONS
	//CHECK IF INTERACTS WITH FSPECIAL
	if hitbox_timer > 6  && player_id.attack == AT_FSPECIAL && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2  && player_id.window_timer < 4{
		if abs(x - (player_id.x + 44*player_id.spr_dir))<55{
				if abs(y - (player_id.y - 34))<55{

					//Check each Pill State

					if (pill_state == 2 ){					//Fstrong
						vsp = 0;
						if hsp == 0 {hsp = 4.5*player_id.spr_dir;}
						length = 120;
						pill_state = 9;
					}else if (pill_state == 3){				//Dspecial
						vsp = -5;
						hsp = 4.5*player_id.spr_dir; 
						length = 120;
						pill_state =0;
					}else if (pill_state == 4){				//Dstrong1 // No Gravity
						vsp = 0;
						if spr_dir == player_id.spr_dir { hsp = abs(hsp)*1.5*player_id.spr_dir; length = length* 3/4;}
						else{ hsp = hsp*-1.5; }
						pill_state = 4;
					}else if (pill_state == 5){				//Dstrong2 // No Gravity
						vsp = 0;
						if spr_dir == player_id.spr_dir { hsp = abs(hsp)*1.5*player_id.spr_dir; length = length* 3/4;}
						else{ hsp = hsp*-1.5; }
						pill_state = 5;
					}
					else {
						vsp = -abs(vsp);		
						length = length* 3/4;
						if abs(hsp) <= 1 { hsp = 4.5*player_id.spr_dir; }
						else{
							hsp = abs(hsp)*1.75*player_id.spr_dir; 
						}
						spr_dir = player_id.spr_dir;
						player = orig_player;				//Just in case, its my pill again
						//grav = 0.56;
						pill_state =0;
					}

					hitbox_timer = 0;
					player_id.pilleffect=2;
					spr_dir = player_id.spr_dir;		//Can Turn Around
					kb_value = kb_value*1.5;
					C_knock += 2;
					extra_hitpause+=2;
					show = 1;
				}
		}
	}

	//CHECK IF INTERACTS WITH DSPECIAL ( TORNADO)
	if player_id.attack == AT_DSPECIAL  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 2 {
		if abs(x - player_id.x)<50{
			if abs(y - (player_id.y - 36))<50{
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
		if abs(x -( player_id.x +30*player_id.spr_dir))<45{
			if abs(y - (player_id.y - 25))<40{
				x = player_id.x +26*player_id.spr_dir;
				y = player_id.y - 26;
				vsp = -15;
				hsp = 2.5*player_id.spr_dir;
				length = 200;
				hitbox_timer = 0;
				if grav!= 0 {grav = 0.5;}
				else { grav = 0.25;}
				player_id.pilleffect=1;
				damage = damage*1.5;
				C_dam  += 2;
				extra_hitpause+=2;
				pill_state =0;
				spr_dir = player_id.spr_dir;		//Can Turn Around
				show = 1;
				player_id.has_hit = true;
			}
		}
	}


	//CHECK IF INTERACTS WITH USTRong (MEME LAUNCHER) -NUMERO 1
	if (hitbox_timer > 12)  && player_id.attack == AT_USTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 2  && player_id.window_timer < 2{
		if abs(x - (player_id.x-37*player_id.spr_dir))<45{
			if abs(y - (player_id.y - 58))<45{
				grav = 0.42;
				vsp = - 28 - player_id.strong_charge/6;
				hsp = hsp/4;
				through_platforms =16;
				y = player_id.y - 58;
				hitbox_timer =0;
				length = 99999;
				grounds = 0;
				pill_state = 1;
				player_id.pilleffect=8;
				kb_value = kb_value*1.5;
				C_knock += 2;
				extra_hitpause+=2;
				show = 1;
			}
		}
	}

	//CHECK IF INTERACTS WITH USTRong (MEME LAUNCHER) -NUMERO 2
	if (hitbox_timer > 12)  && player_id.attack == AT_USTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 2  && player_id.window_timer < 4 && player_id.window_timer > 1{
		if abs(x - (player_id.x+2*player_id.spr_dir))<45{
			if abs(y - (player_id.y - 70))<45{
				grav = 0.42;
				vsp = - 25 - player_id.strong_charge/6;
				hsp = hsp/6;
				y = player_id.y - 62;
				hitbox_timer =0;
				length = 9999;
				grounds = 0;
				pill_state = 1;
				player_id.pilleffect=4;
				kb_value = kb_value*1.5;
				C_knock += 2;
				extra_hitpause+=2;
				show = 1;
			}
		}
	}

	//CHECK IF INTERACTS WITH USTRong (MEME LAUNCHER) -NUMERO 3
	if (hitbox_timer > 12)  && player_id.attack == AT_USTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 2  && player_id.window_timer < 6 && player_id.window_timer > 3{
		if abs(x - (player_id.x+35*player_id.spr_dir))<45{
			if abs(y - (player_id.y - 52))<45{
				grav = 0.42;
				vsp = - 25 - player_id.strong_charge/6;
				hsp = hsp/8;
				y = player_id.y - 54;
				hitbox_timer =0;
				length = 9999;
				grounds = 0;
				pill_state = 1;
				player_id.pilleffect=9;
				kb_value = kb_value*1.5;
				C_knock += 2;
				extra_hitpause+=2;
				show = 1;
			}
		}
	}



	//CHECK IF INTERACTS WITH fSTRong (STUNNER) 
	if (hitbox_timer > 12)  && player_id.attack == AT_FSTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 3 {
		if abs(x - (player_id.x+72*player_id.spr_dir))<40{
			if abs(y - (player_id.y - 38))<40{
				
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
					kb_value= kb_value*1.25;
					damage = damage*1.25;
					C_knock += 1;
					C_dam  += 1;
					extra_hitpause+=2;
					show = 1;
					charge = player_id.strong_charge;
					pill_state = 2;
				}

			}
		}
	}

	//CHECK IF INTERACTS WITH DSPECIAL ( LAUNCHER)
	if (hitbox_timer > 12)  && player_id.attack == AT_DSPECIAL  && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 3  && player_id.window_timer > 5{
		if abs(x - player_id.x)<56{
			if abs(y - (player_id.y - 36))<56{
				grav = 0.56;
				x = player_id.x;
				y = player_id.y - 40;
				vsp = - 15;
				hsp = 0;
				hitbox_timer =0;
				length = 240;
				walls = 0;
				player_id.pilleffect=3;
				pill_state =3;
				kb_value= kb_value*1.25;
				damage = damage*1.25;
				C_knock += 1;
				C_dam  += 1;
				extra_hitpause+=2;
				show = 1;
			}
		}
	}

	//CHECK IF INTERACTS WITH DSTRONG (ROLLING) - HITBOX 1
	if (hitbox_timer > 12)  && player_id.attack == AT_DSTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 3  && player_id.window_timer <3{
		if abs(x - (player_id.x+40*player_id.spr_dir))<45{
			if abs(y - (player_id.y - 20))<45{
				length = 119 + player_id.strong_charge;
				hitbox_timer =0;
				player_id.pilleffect=6;
				pill_state = 4;
				damage = damage*1.5;
				C_dam  += 2;
				extra_hitpause+=2;
				show = 1;
				vsp = -abs(vsp/2);
				if abs(hsp) < 1{hsp = player_id.spr_dir*(5+ player_id.strong_charge/10);}
				else{hsp = player_id.spr_dir*(abs(hsp*2)+ player_id.strong_charge/10);}
				spr_dir = player_id.spr_dir;
			}
		}
	}

	//CHECK IF INTERACTS WITH DSTRONG (ROLLING) - HITBOX 2
	if (hitbox_timer > 12)  && player_id.attack == AT_DSTRONG  && (player_id.state == PS_ATTACK_GROUND) && player_id.window == 3  && player_id.window_timer >5{
		if abs(x - (player_id.x-34*player_id.spr_dir))<45{
			if abs(y - (player_id.y - 20))<45{
				length = 119 + player_id.strong_charge;
				hitbox_timer =0;
				player_id.pilleffect=7;
				pill_state = 5;
				damage = damage*1.5;
				C_dam  += 2;
				extra_hitpause+=2;
				show = 1;
				vsp = -abs(vsp/2);
				if (hsp ==0){hsp = -player_id.spr_dir*(5+ player_id.strong_charge/10); }
				else{hsp = -player_id.spr_dir*(abs(hsp*2.5)+ player_id.strong_charge/10);}
				spr_dir = -player_id.spr_dir;
			}
		}
	}



	//RETURNING PILLS TO NORMAL BEHAVIOR
	if pill_state == 1 && !free || (place_meeting(x, y + 1 , asset_get("obj_stage_article_solid")) && vsp>=0) 	|| (place_meeting(x, y + 1 , asset_get("obj_article_solid")) && vsp>=0) { destroyed = true;}

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

	if pill_state ==4||pill_state ==5{
		if !free || (place_meeting(x, y + 1 , asset_get("obj_stage_article_solid")) && vsp>=0) 	|| (place_meeting(x, y + 1 , asset_get("obj_article_solid")) && vsp>=0) {
			vsp = 0;
			proj_angle = (hitbox_timer*(abs(hsp)+10))*-spr_dir;
			grav = 0;
		}else{
			grav = 0.56;
			proj_angle = (hitbox_timer*(abs(hsp)+10))*-spr_dir;
		}

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