//Update.GML
if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
    switch (attack) {
    	case AT_USPECIAL:
    		switch (window) {
    			case 2:
    			    // Facing one way and holding the opposite direction -> face the opposite direction.
    			    var horizontal_input = right_down-left_down;
    			    
    			    if spr_dir == -horizontal_input {
    			        spr_dir = -spr_dir;
    			    }
    			    
    			    //Calculate the angle from inputs.
    			    if joy_pad_idle {
    					uspecial_angle = 90 //darctan2 returns an error otherwise???
    				} else {
    					uspecial_angle = darctan2(up_down-down_down, horizontal_input)
    				}

    			case 3:
    			    // Mimic hspeed/vspeed type 2
        			if window_timer == 0 {
        				hsp = lengthdir_x(uspecial_speed, uspecial_angle)
        				vsp = lengthdir_y(uspecial_speed, uspecial_angle) + uspecial_extra_vspeed;
        			}
			        
			        // Rotate around the center of the sprite.
			        
			        // Please refer to this link for an explanation as to why this formula was used.
			        // https://math.stackexchange.com/questions/4434133/what-is-the-rule-for-rotations-about-a-point-not-the-origin
			        var middle_x = 0;
                	var middle_y = (bbox_bottom - bbox_top)/2; //MIDDLE OF HEIGHT
                	
                	draw_x = (middle_x + (-middle_x*dcos(spr_angle)) - (-middle_y*dsin(spr_angle)))
                	draw_y = -(middle_y - (-middle_x*dsin(spr_angle)) + (-middle_y*dcos(spr_angle))) 
    			break;
    			case 4:
    			    //Bring stuff back to normal
    			    spr_angle -= angle_difference(spr_angle, 0)*0.2;
    			    draw_x = lerp(draw_x, 0, 0.1);
    			    draw_y = lerp(draw_y, 0, 0.1);
    			break;
    		}
    	break;
    	case AT_FSPECIAL_AIR:
    		if window == 2{
    			dive_forgiveness++;
    		}
    		if window == 3 && window_timer == 0{
        		sound_play (asset_get("sfx_tow_anchor_land"),false,noone,0.8);
        		sound_play (sound_get("nspecial_to_club_quick"),false,noone,1.0);
        		with pHitBox {
                    if player_id == other and attack == AT_FSPECIAL_AIR and type == 1 {
                        destroyed = true;
                        instance_destroy();
                    }
                }
    		}
    	break;
    }
}

current_sprite_set = trick;

if (state == PS_SPAWN) trick = 0;

if (attack != AT_USPECIAL || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) spr_angle = 0;

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) trick_attack = false;

if (suppress_music > 0){
	suppress_stage_music(0.1, 0.5 );
	suppress_music--;
	if (suppress_music <= 0) suppress_music = 0;
}

//Puts some moves on cooldown
if (silver_bullets < 2){
	move_cooldown[AT_DSPECIAL] = 999;
}
if (silver_bullets < 1){
	move_cooldown[AT_FSPECIAL] = 999;
	move_cooldown[AT_DSTRONG] = 999;
}
if (silver_bullets <= 0) silver_bullets = 0;

if (instance_exists(hit_player_obj)){ //I'm very very sure there's an easier way to do this lol, but this is what came to mind
	if (place_meeting(x-20*spr_dir, y, hit_player_obj) || place_meeting(x-15*spr_dir, y, hit_player_obj)
	|| place_meeting(x-10*spr_dir, y, hit_player_obj) || place_meeting(x-5*spr_dir, y, hit_player_obj)
	|| place_meeting(x+70*spr_dir, y, hit_player_obj) || place_meeting(x+60*spr_dir, y, hit_player_obj)
	|| place_meeting(x+50*spr_dir, y, hit_player_obj) || place_meeting(x+40*spr_dir, y, hit_player_obj)
	|| place_meeting(x+30*spr_dir, y, hit_player_obj) || place_meeting(x+20*spr_dir, y, hit_player_obj)
	|| place_meeting(x+10*spr_dir, y, hit_player_obj) || place_meeting(x+5*spr_dir, y, hit_player_obj)) close_to_opponent = true;
	else close_to_opponent = false;
}

with (oPlayer){
    if (player != other.player){
    //    print(window);
        if (state != PS_PRATFALL && state != PS_PRATLAND && prat_land_time = other.parry_timer){
            prat_land_time = other.enemy_pratland;
        }
        if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window <= 2 && state_timer > 5 && get_num_hitboxes(attack) > 0){
            other.enemy_attacks = true;
        }
        else {
            other.enemy_attacks = false;
        }
        if ((state == PS_PRATFALL || state == PS_PRATLAND || was_parried == true) && other.close_to_opponent == true){
            other.can_viceral = true;
        }
        else other.can_viceral = false;
    }
}

//Viceral "Comand Grab"
if (viceral_grab == true){
    hit_player_obj.spr_dir = -spr_dir;
	hit_player_obj.hitstop = 1;
	hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.4);
	hit_player_obj.y = lerp(hit_player_obj.y, y-5, 0.4);
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_VICERAL){
    viceral_grab = false;
}

if (enemy_attacks){
    set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0);
    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 18);
//    set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 90);
}
else {
    reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE);
//    reset_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE);
}

var intro_time = get_gameplay_time()-12;

if (state == PS_SPAWN && special_down && intro_time == 74){
	set_attack(AT_NSPECIAL);
	window_timer = 0;
}