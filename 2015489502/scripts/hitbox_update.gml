if (attack == AT_NSPECIAL){
    
    walls = 2;
    grounds = 2;
    
    image_index = hbox_num - 1;
    
    visible = !(hitbox_timer > length - 16 && hitbox_timer mod 6 > 2);
    
    if (hitbox_timer mod 5 == 0 && !in_hitpause){
        proj_angle -= 90 * spr_dir;
    }
    
    if (hsp == -hsp_prev && abs(hsp) > 2){
        sound_play(player_id.sfx_ball_shoot);
        bouncing_wall = true;
    }
    
    if ("bouncing_wall" in self && bouncing_wall && player_id.experimental_1){
    	checkForHitbox();
    }
    
    if (vsp < -10 && !("made_sound_already" in self) && hbox_num == 6){
        sound_play(player_id.sfx_ball_shoot); 
        made_sound_already = true;
    }
    
    if ("bouncing" in self){
        if bouncing{
            if hitpause_timer{
            	in_hitpause = true;
            	grav = 0;
            	hitpause_timer--;
            }else{
            	in_hitpause = false;
            	grav = 0.5;
            }
            if (vsp < vsp_prev){
                sound_play(player_id.sfx_ball_shoot);
            }
            checkForHitbox();
        }
    }
    
    if ("bouncing_foe" in self && bouncing_foe){
        if (vsp > 10){
            grav = 1;
        }
        else if (abs(vsp) > 1.5){
            grav = 0.3;
        }
        else{
            grav = 0.15;
        }
        
        grounds = (place_meeting(x, y+hsp, asset_get("par_block"))) ? 2 : 1; //Goes thru soft plats
        
        if (vsp < vsp_prev && (hitbox_timer > 5 || "bouncing_dthrow" in self && bouncing_dthrow) && !("already_hecking_bounced" in self)){
            vsp *= ("bouncing_dthrow" in self && bouncing_dthrow) ? 0.6 : 0.4;
            hitbox_timer = length - (("bouncing_dthrow" in self && bouncing_dthrow) ? 60 : 16);
            sound_play(player_id.sfx_ball_shoot);
            already_hecking_bounced = true;
            if ("bouncing_dthrow" in self && bouncing_dthrow){
            	sprite_index = player_id.spr_ball_charge;
		
				//Can't hit
				for (var i = 0; i < 20; i++){
				    can_hit[i] = 0;
				}
            }
        }
        
        if hitpause_timer{
            hitpause_timer--;
            in_hitpause = true;
        }
        else{
            in_hitpause = false;
        }
        
        checkForHitbox();
    }
    else if (vsp == -vsp_prev && abs(vsp)){
    	sound_play(player_id.sfx_ball_shoot);
    }
    
    if ("bouncing_dthrow" in self && bouncing_dthrow){
    	grounds = 2;
    }
    
    if ("dattack_hit" in self){
        if dattack_hit{
            if hitpause_timer{
                hitpause_timer--;
                in_hitpause = true;
            }
            checkForHitbox();
        }
    }
    
    if ("bouncing_hitpause" in self){
        if bouncing_hitpause{
            if hitpause_timer{
                hitpause_timer--;
                in_hitpause = true;
            }
            else{
                var new_ball = create_hitbox(attack, hbox_num, round(x), round(y));
                new_ball.dont_bounce = true;
                new_ball.spr_dir = spr_dir;
                var launch_angle = 0;
                
                
                if (player_id.experimental_1){
                	if (enemy_attack == AT_NAIR){
                		launch_angle = point_direction(0, 0, enemy_spr_dir, 1);
                	}
                	else if (enemy_attack == AT_UTILT){
                		launch_angle = point_direction(0, 0, enemy_spr_dir, -1);
                	}
                	else if (enemy_angle == clamp(enemy_angle, 70, 110)){
                		launch_angle = 90;
                	}
                	else if (enemy_angle == clamp(enemy_angle, 250, 290)){
                		launch_angle = 270;
                	}
                	else if (enemy_angle == clamp(enemy_angle, 111, 249)){
                		launch_angle = 180;
                        //new_ball.spr_dir *= -1;
                	}
                	else{
                		launch_angle = 0;
                	}
                }
                
                else{
                	switch(hbox_num){
	                    case 4:
	                        launch_angle = 90;
	                        break;
	                    case 5:
	                        new_ball.spr_dir *= -1;
	                        break;
	                    case 6:
	                        launch_angle = 270;
	                        break;
	                }
	                
	                if ("ustrong_hit" in self){
	                	launch_angle = 90;
	                }
                }
                
                if ("dattack_hit" in self){
                	with(player_id){
    	            	new_ball.hsp = get_hitbox_value(AT_NSPECIAL, other.hbox_num, HG_PROJECTILE_HSPEED) * spr_dir * 1.25;
        	            new_ball.vsp = 0;
                	}
                }
                else{   
	                with(player_id){
	                    new_ball.hsp = lengthdir_x(get_hitbox_value(AT_NSPECIAL, other.hbox_num, HG_PROJECTILE_HSPEED), launch_angle);
	                    new_ball.vsp = lengthdir_y(get_hitbox_value(AT_NSPECIAL, other.hbox_num, HG_PROJECTILE_HSPEED), launch_angle);
	                    if abs(new_ball.hsp) new_ball.spr_dir = sign(new_ball.hsp);
	                }
                }
                if (hbox_num == 8 && "has_hit_somebody_already" in self){
                	new_ball.extra_hitpause = 15;
                	new_ball.hit_effect = player_id.vfx_hit_big_black_fast;
                }
                sound_play(player_id.sfx_ball_charge[hbox_num]);
                y = 9999;
                destroyed = true;
            }
        }
    }
    
    vsp_prev = vsp;
    hsp_prev = hsp;
    spr_dir_prev = spr_dir;
}



if (attack == player_id.AT_BIKE){
    if (hitpause_counter > 0){
        hitpause_counter--;
        article_owner.hitstop = 1;
        article_owner.hitpause = true;
    }
}



#define checkForHitbox

var enemy_hitboxID = noone;
var kb_hitstop = 0;
var god_mode_interaction = false;

with (asset_get("pHitBox")){
    if ((place_meeting(x,y,other.id) || player_id.god_mode == 3 && type == 1 && false) && !("otto_ball_hitted" in self) && player_id == other.player_id && !("im_ottos_bike_hitbox" in self)){
    	otto_ball_hitted = true;
    	enemy_hitboxID = id;
        
        with(player_id){
        	if (other.type == 1){
	        	if !hitpause{
	        		old_hsp = hsp;
	        		old_vsp = vsp;
	        	}
	        	hitpause = true;
	        	hitstop = get_hitbox_value(other.attack, other.hbox_num, HG_BASE_HITPAUSE);
	        	has_hit = true;
	        }
	        kb_hitstop = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_BASE_HITPAUSE) + 
	        	get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_EXTRA_HITPAUSE);
	        sound_play(get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_HIT_SFX));
	        var hit_fx_id = enemy_hitboxID.hit_effect;
	        var hit_fx_x = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_VISUAL_EFFECT_X_OFFSET) * other.spr_dir;
	        var hit_fx_y = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_VISUAL_EFFECT_Y_OFFSET);
	        spawn_hit_fx(enemy_hitboxID.x + hit_fx_x, enemy_hitboxID.y + hit_fx_y, hit_fx_id);
        }
    }
}

if (enemy_hitboxID != noone){ //Apply knockback to bike
	hitpause_timer = kb_hitstop;
	bouncing_hitpause = true;
	bouncing_foe = false;
	bouncing = false;
	hitbox_timer = length - 60;
	sound_play(player_id.sfx_ball_shoot);
	
	with enemy_hitboxID god_mode_interaction = (player_id == other.player_id && attack == AT_NSPECIAL && hbox_num == 8 && other.hbox_num == 7 && player_id.god_mode == 3);
	
	if (enemy_hitboxID.player_id == player_id && enemy_hitboxID.type == 1){
		player_id.has_hit_ball = true;
		player_id.hit_ball_obj = id;
		if (enemy_hitboxID.attack == AT_DATTACK){
			dattack_hit = true;
			if (enemy_hitboxID.hbox_num == 1){
				bouncing_hitpause = false;
			}
		}
		if (enemy_hitboxID.attack == AT_USTRONG){
			ustrong_hit = true;
		}
		if (enemy_hitboxID.attack == AT_FSTRONG){
			player_id.ball_charge = hbox_num;
			player_id.df_ball_pos_x = x - player_id.x;
			player_id.df_ball_pos_y = y - player_id.y;
			player_id.ball_pos = 6;
			sound_play(player_id.sfx_ball_charge[hbox_num]);
			if player_id.ball_cooldown{
				player_id.ball_cooldown = 0;
			}
			instance_destroy();
		}
	}
	
	enemy_angle = get_hitbox_angle( enemy_hitboxID );
	enemy_spr_dir = enemy_hitboxID.spr_dir;
	enemy_attack = enemy_hitboxID.attack;
	
	if god_mode_interaction enemy_angle = (spr_dir == 1) ? 0 : 180;
}