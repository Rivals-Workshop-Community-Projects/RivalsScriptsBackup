if (attack == AT_DSPECIAL){
	with (asset_get("obj_article2")){
		if (player_id.player == other.player){
	    	if (place_meeting(x, y, other)){
	            if (state < 1 && player_id == other.player_id){
	            	var proj_hsp = other.hsp/3;
					var proj_vsp = other.vsp/3;
	                //sound_play ( sound_get ( "shoot" ));
					spawn_hit_fx( floor(x), floor(y), 0 );
					hsp = proj_hsp;
					vsp = proj_vsp;
	                state = 1;
	                state_timer = 0;
	                other.destroyed = true;
	            }
	        }
		}
    }
}

if (attack == AT_FSPECIAL && (hbox_num == 2)){
	with (asset_get("obj_article2")){
		if (player_id.player == other.player){
	    	if (place_meeting(x, y, other)){
	    		with (asset_get("obj_article3")){
			    	if (place_meeting(x, y, other)){
			            if (state < 1 && player_id.player == other.player){
			            	if (schmooving != noone){
			            		schmooving.destroyed = true;
				            	schmooving = noone;
				            	hsp = 0;
				            	vsp = 0;
				                state = 1;
				                state_timer = 0;
			            	}
			            }
			        }
			    }
	            if (state < 1 && player_id.player == other.player){
	                //sound_play ( sound_get ( "shoot" ));
					spawn_hit_fx( floor(x), floor(y), 0 );
	                state = 1;
	                state_timer = 0;
	            }
	        }
		}
    }
}

if (attack == AT_DSPECIAL){
	
	var runething = false;
	
	with (player_id){
		if (has_rune("L")){
			var runething = true;
		}
	}
	
	
    if (!free){
        destroyed = true;
    }else
	{
	proj_angle += .5 * -spr_dir;
	}
	
	
	with (asset_get("pHitBox")){
		if (player == other.player){
			if (other.hit_already == false){
				
				var idk = true;
				
				if (attack == AT_EXTRA_1){
					if (hbox_num == 1){
						var idk = false;
					}
				}
				
				if (attack == AT_FSTRONG){
					if (place_meeting(x, y, other)){
						with (other){
							
							var fstrong_ball_dmg = 9;
							var fstrong_ball_bkb = 8;
							var fstrong_ball_kbs = 1;
							
							if (!runething){ //normal
							
								spawn_hit_fx( x, y, 304 );
								sound_effect = asset_get("sfx_blow_heavy2");
								hit_flipper = 3;
								damage = fstrong_ball_dmg;
								kb_angle = 45;
								kb_value = fstrong_ball_bkb;
								kb_scale = fstrong_ball_kbs;
								hit_already = true;
							
							}
							else{ //runes
							
								spawn_hit_fx( x, y, 304 );
								sound_effect = asset_get("sfx_blow_heavy2");
								hit_flipper = 3;
								damage = round(fstrong_ball_dmg*1.5);
								kb_angle = 45;
								kb_value = fstrong_ball_bkb*1.5;
								kb_scale = fstrong_ball_kbs*1.5;
								hit_already = true;
								
							}
						}
						sound_play(asset_get("sfx_blow_heavy1"));
						sound_play(sound_get("bat"));
						other.y = player_id.y - 25;
						other.hsp = 17*player_id.spr_dir;
						other.grav = .2;
						other.vsp = -2;
					}
				}
				else if (attack != AT_DSPECIAL && other.other_can_hit == true && idk){
					if (place_meeting(x, y, other)){
						var bruh = get_hitbox_angle(self);
						var bruh_damage = damage;
						var bruh_attack = attack;
						var bruh_num = hbox_num;
						var speed_mult = 17;
						var bruh_sound_effect = sound_effect;
						var bruh_kb_value = kb_value;
						var bruh_kb_scale = kb_scale;
						var bruh_kb_angle = kb_angle;
						var bruh_hitpause = hitpause;
						var sans_gaming = false;
						
						with (player_id){
							has_hit = true;
						}
						
						sound_play(sound_effect);
						spawn_hit_fx( x, y, hit_effect);
						with (other){
							var did_do_thing = false;
							
							switch (bruh_attack){
								case AT_DAIR:
									hsp=cos(degtorad(bruh))*speed_mult*player_id.spr_dir;
									vsp=-sin(degtorad(bruh))*speed_mult*-1;
									player_id.vsp = -10;
									did_do_thing = true;
								break;
								case AT_FAIR:
									if (bruh_num != 2){
										hsp= 17*player_id.spr_dir;
										vsp= 4;
									}
									else{
										hsp= 10*player_id.spr_dir;
										vsp= 14;
									}
									did_do_thing = true;
								break;
								case AT_NAIR:
								case AT_FTILT:
								case AT_DATTACK:
									hsp= 17*player_id.spr_dir;
									vsp= 0;
									did_do_thing = true;
								break;
								case AT_JAB:
									hsp= 2*player_id.spr_dir;
									vsp= -18;
									did_do_thing = true;
								break;
								case AT_BAIR:
									hsp= 17*player_id.spr_dir*-1;
									vsp= 0;
									did_do_thing = true;
								break;
								case AT_DSTRONG:
									hsp = 0;
									vsp = -17;
									did_do_thing = true;
								break;
								case AT_FSPECIAL:
									hsp= 15 *player_id.spr_dir;
									vsp= -3;
									did_do_thing = true;
									sans_gaming = true;
								break;
							}
							if (!did_do_thing){
								hsp=cos(degtorad(bruh))*speed_mult*player_id.spr_dir;
								vsp=-sin(degtorad(bruh))*speed_mult;
								did_do_thing = true;
							}
							
							var nair_temp_damage = 4;

							if (!runething){ //non-rune
								kb_angle = bruh_kb_angle;
								kb_value = bruh_kb_value*.9;
								kb_scale = bruh_kb_scale*.9;
								sound_effect = bruh_sound_effect;
								if (bruh_attack == AT_NAIR){
									damage = nair_temp_damage;
								}
								else{
									damage = bruh_damage;
								}
								hit_already = true;
								if (!sans_gaming){
									grav = 0;
								}
							}
							else{ //rune
								kb_angle = bruh_kb_angle;
								kb_value = bruh_kb_value*1.25;
								kb_scale = bruh_kb_scale*1.25;
								sound_effect = bruh_sound_effect;
								if (bruh_attack == AT_NAIR){
									damage = round(nair_temp_damage*1.25);
								}
								else{
									damage = round(bruh_damage*1.25);
								}
								hit_already = true;
								if (!sans_gaming){
									grav = 0;
								}
							}
						}
					}
				}
			}
		}
		else{
			if (place_meeting(x, y, other)){
				if (other.hit_already == false && other.others_can_hit){
						var bruh = get_hitbox_angle(self);
						var bruh_damage = damage;
						var bruh_attack = attack;
						var bruh_num = hbox_num;
						var speed_mult = 17*(player.spr_dir);
						var speed_mult_vert = 17;
						var bruh_sound_effect = sound_effect;
						var bruh_kb_value = kb_value;
						var bruh_kb_scale = kb_scale;
						var bruh_kb_angle = kb_angle;
						var bruh_player = player;
						var bruh_player_id = player_id;
						other.player = bruh_player;
						
						with (player_id){
							has_hit = true;
						}
						
						if (bruh_kb_angle == 361){
							bruh = 45;
						}
						
						sound_play(sound_effect);
						spawn_hit_fx( x, y, hit_effect);
						with (other){
							var did_do_thing = false;
							
							if (!did_do_thing){
								hsp=cos(degtorad(bruh))*speed_mult;
								vsp=-sin(degtorad(bruh))*speed_mult_vert;
								did_do_thing = true;
								if (speed_mult == -speed_mult_vert){
									hsp = hsp*-1;
								}
							}

							kb_flipper = 3;
							kb_angle = bruh_kb_angle;
							kb_value = bruh_kb_value*.9;
							kb_scale = bruh_kb_scale*.9;
							sound_effect = bruh_sound_effect;
							damage = bruh_damage;
							hit_already = true;
							grav = 0;
							
						}
				}
			}
		}
	}
}
