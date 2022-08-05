//update.gml

switch(state){
     case PS_PARRY:
		//parry sfx
		if (state_timer == 0){
			sound_play(sound_get("sfx_parry"));
			
		}
		break; 
}

if (window == 1 && state == PS_ATTACK_GROUND && 
(attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
	not_starting_strong = false;
}
else {
	not_starting_strong = true;
}

if (dspecial_orb != 0){
	if (dspecial_orb_gather == false && dspecial_orb_minion == false){
		currentRot += 4;
		currentRot = currentRot % 360;
		
		orb_x1 = x + lengthdir_x(50, currentRot+270);
		orb_y1 = y - 40 + lengthdir_y(50, currentRot+270);
		orb_x2 = x + lengthdir_x(50, currentRot+180);
		orb_y2 = y - 40 + lengthdir_y(50, currentRot+180);
		orb_x3 = x + lengthdir_x(50, currentRot+90);
		orb_y3 = y - 40 + lengthdir_y(50, currentRot+90);
		orb_x4 = x + lengthdir_x(50, currentRot);
		orb_y4 = y - 40 + lengthdir_y(50, currentRot);
	}
	if (dspecial_orb_gather == true && dspecial_orb_minion == false) {
		orb_x1 = lerp(orb_x1, x+70*spr_dir, 0.2);
		orb_y1 = lerp(orb_y1, y-50, 0.2);
		orb_x2 = lerp(orb_x2, x+70*spr_dir, 0.2);
		orb_y2 = lerp(orb_y2, y-30, 0.2);
		orb_x3 = lerp(orb_x3, x+70*spr_dir, 0.2);
		orb_y3 = lerp(orb_y3, y-70, 0.2);
		orb_x4 = lerp(orb_x4, x+70*spr_dir, 0.2);
		orb_y4 = lerp(orb_y4, y-10, 0.2);
	}
	if (dspecial_orb_minion == true){
		orb_x1 = lerp(orb_x1, minion.x, 0.2);
		orb_y1 = lerp(orb_y1, minion.y, 0.2);
		orb_x2 = lerp(orb_x2, minion.x, 0.2);
		orb_y2 = lerp(orb_y2, minion.y, 0.2);
		orb_x3 = lerp(orb_x3, minion.x, 0.2);
		orb_y3 = lerp(orb_y3, minion.y, 0.2);
		orb_x4 = lerp(orb_x4, minion.x, 0.2);
		orb_y4 = lerp(orb_y4, minion.y, 0.2);
	}
}

if (enemy_dspecial_orb != 0){
	
	if (dspecial_enemy.state == PS_RESPAWN){
		enemy_dspecial_orb = 0;
	}
	
	move_cooldown[AT_DSPECIAL] = 3;
	enemy_dspecial_cont++;
	if (enemy_dspecial_cont < 300){
		currentRot += 4;
		currentRot = currentRot % 360;
		orb_x1 = dspecial_enemy.x + lengthdir_x(50, currentRot+270);
		orb_y1 = dspecial_enemy.y - floor(dspecial_enemy.char_height/2) + lengthdir_y(50, currentRot+270);
		orb_x2 = dspecial_enemy.x + lengthdir_x(50, currentRot+180);
		orb_y2 = dspecial_enemy.y - floor(dspecial_enemy.char_height/2) + lengthdir_y(50, currentRot+180);
		orb_x3 = dspecial_enemy.x + lengthdir_x(50, currentRot+90);
		orb_y3 = dspecial_enemy.y - floor(dspecial_enemy.char_height/2) + lengthdir_y(50, currentRot+90);
		orb_x4 = dspecial_enemy.x + lengthdir_x(50, currentRot);
		orb_y4 = dspecial_enemy.y - floor(dspecial_enemy.char_height/2) + lengthdir_y(50, currentRot);
	}
	if (dspecial_enemy.state == PS_HITSTUN || dspecial_enemy.state == PS_HITSTUN_LAND){
		if (enemy_dspecial_cont >= 300 && enemy_dspecial_cont <= 311){
			dspecial_target_x = dspecial_enemy.x;
			dspecial_target_y = dspecial_enemy.y+floor(dspecial_enemy.char_height/4);
			dspecial_target_spr_dir = dspecial_enemy.spr_dir;
		}
	}
	else {
		if (enemy_dspecial_cont >= 300 && enemy_dspecial_cont <= 305){
			dspecial_target_x = dspecial_enemy.x;
			dspecial_target_y = dspecial_enemy.y+floor(dspecial_enemy.char_height/4);
			dspecial_target_spr_dir = dspecial_enemy.spr_dir;
		}
	}
	
	if (enemy_dspecial_cont >= 300 && enemy_dspecial_cont <= 310){
		enemy_dspecial_rot_cont += 3;
		orb_x1 = dspecial_target_x + lengthdir_x(enemy_dspecial_rot_cont, currentRot+270);
		orb_y1 = dspecial_target_y - 40 + lengthdir_y(enemy_dspecial_rot_cont, currentRot+270);
		orb_x2 = dspecial_target_x + lengthdir_x(enemy_dspecial_rot_cont, currentRot+180);
		orb_y2 = dspecial_target_y - 40 + lengthdir_y(enemy_dspecial_rot_cont, currentRot+180);
		orb_x3 = dspecial_target_x + lengthdir_x(enemy_dspecial_rot_cont, currentRot+90);
		orb_y3 = dspecial_target_y - 40 + lengthdir_y(enemy_dspecial_rot_cont, currentRot+90);
		orb_x4 = dspecial_target_x + lengthdir_x(enemy_dspecial_rot_cont, currentRot);
		orb_y4 = dspecial_target_y - 40 + lengthdir_y(enemy_dspecial_rot_cont, currentRot);
	}
	if (enemy_dspecial_cont > 310 && enemy_dspecial_cont <= 315){
		orb_x4 = lerp(orb_x4, dspecial_target_x, 0.2);
		orb_y4 = lerp(orb_y4, dspecial_target_y-floor(dspecial_enemy.char_height/2), 0.2);
		if (enemy_dspecial_cont == 311){
			if (enemy_dspecial_orb < 4){
				enemy_dspecial_cont = 320;
			}
		}
		if (enemy_dspecial_cont == 315){
			create_hitbox(AT_DSPECIAL, 1, dspecial_target_x+6*dspecial_target_spr_dir, dspecial_target_y-floor(dspecial_enemy.char_height/2));
			spawn_hit_fx( dspecial_target_x, dspecial_target_y-floor(dspecial_enemy.char_height/2), blob_med );
			sound_play(asset_get("sfx_frog_dspecial_hit"));
			enemy_dspecial_orb--;
		}
	}
	if (enemy_dspecial_cont > 320 && enemy_dspecial_cont <= 325){
		orb_x3 = lerp(orb_x3, dspecial_target_x, 0.2);
		orb_y3 = lerp(orb_y3, dspecial_target_y-floor(dspecial_enemy.char_height/2), 0.2);
		if (enemy_dspecial_cont == 321){
			if (enemy_dspecial_orb < 3){
				enemy_dspecial_cont = 330;
			}
		}
		if (enemy_dspecial_cont == 325){
			create_hitbox(AT_DSPECIAL, 1, dspecial_target_x+6*dspecial_target_spr_dir, dspecial_target_y-floor(dspecial_enemy.char_height/2));
			spawn_hit_fx( dspecial_target_x, dspecial_target_y-floor(dspecial_enemy.char_height/2), blob_med );
			sound_play(asset_get("sfx_frog_dspecial_hit"));
			enemy_dspecial_orb--;
		}
	}
	if (enemy_dspecial_cont > 330 && enemy_dspecial_cont <= 335){
		orb_x2 = lerp(orb_x2, dspecial_target_x, 0.2);
		orb_y2 = lerp(orb_y2, dspecial_target_y-floor(dspecial_enemy.char_height/2), 0.2);
		if (enemy_dspecial_cont == 331){
			if (enemy_dspecial_orb < 2){
				enemy_dspecial_cont = 340;
			}
		}
		if (enemy_dspecial_cont == 335){
			create_hitbox(AT_DSPECIAL, 1, dspecial_target_x+6*dspecial_target_spr_dir, dspecial_target_y-floor(dspecial_enemy.char_height/2));
			spawn_hit_fx( dspecial_target_x, dspecial_target_y-floor(dspecial_enemy.char_height/2), blob_med );
			sound_play(asset_get("sfx_frog_dspecial_hit"));
			enemy_dspecial_orb--;
		}
	}
	if (enemy_dspecial_cont > 340 && enemy_dspecial_cont <= 346){
		orb_x1 = lerp(orb_x1, dspecial_target_x, 0.2);
		orb_y1 = lerp(orb_y1, dspecial_target_y-floor(dspecial_enemy.char_height/2), 0.2);
		if (enemy_dspecial_cont == 344){
			create_hitbox(AT_DSPECIAL, 1, dspecial_target_x+6*dspecial_target_spr_dir, dspecial_target_y-floor(dspecial_enemy.char_height/2));
			spawn_hit_fx( dspecial_target_x, dspecial_target_y-floor(dspecial_enemy.char_height/2), blob_med );
			sound_play(asset_get("sfx_frog_dspecial_hit"));
			enemy_dspecial_orb--;
		}
	}
}



if(free and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) and taunt_pressed and !down_down){
   set_attack(AT_TAUNT);
}
if(free and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) and taunt_pressed and down_down){
   set_attack(AT_TAUNT_2);
}
if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_TAUNT] = 0;
}
if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_TAUNT_2] = 0;
}

//Intro Stuff
if state == PS_SPAWN
{
    if (introTimer2 < introAnimFrameLength)
    {
        introTimer2++;
    }
    else
    {
        introTimer2 = 0;
        introTimer++;
        if(introTimer == 1)
        	sound_play(asset_get("sfx_hod_fspecial_spirit"),false,noone,1.1,.8);
        if(introTimer == 2)	
        	sound_play(asset_get("sfx_frog_nspecial_shove"),false,noone,1.0,.9);
        if(introTimer == 9)	
        	sound_play(asset_get("sfx_hod_nspecial"),false,noone,1.1);
    }
}

victory_rand = random_func( 0, 2, true)
switch get_player_color(player)
	{
		case 24:
		    set_victory_theme(sound_get("sparkling_star"));
		break;
		default:
		     if (victory_rand == 1){
				set_victory_theme(sound_get("dark_matter_victory"));
			}
			else {
				set_victory_theme(sound_get("dark_matter_victory2"));
			} 
		break;
	}