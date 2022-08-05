//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		if window == 1 && window_timer == 1{
			sound_play(sound_get("se_edge_attackair_F02"),false,noone,0.8,0.9);
			sound_play(sound_get("sfx_sword_swipe2"),false,noone,1.0,0.8);
		}
		break;
	case AT_DATTACK:
		if window == 2 && window_timer == 1{
			sound_play(asset_get("sfx_charge_blade_swing"));
		}
		break;
	case AT_FTILT:
		if window == 2 && window_timer == 5{
			sound_play(sound_get("se_ike_attackair_L01"),false,noone,1.0,1.1);
		}
		if window == 3 && window_timer == 6{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_DTILT:
		if window == 1 && window_timer == 5{
			sound_play(sound_get("se_edge_attackair_F02"),false,noone,0.8);
			sound_play(sound_get("sfx_slide"));
		}
		if window == 1 && window_timer == 7{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == 12{
			sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,.7);
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
			array_push(phone_dust_query, [x + 30*spr_dir, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == 20{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		if (instance_exists(minion) && minion.state != 3 && minion.state != 5 && minion.state != 6 && window == 1){
			minion.state = 4;
			minion.strong_dir = 1;
			minion.image_index = 0;
			minion.spr_dir = spr_dir;
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == 1{
			sound_play(sound_get("sfx_sword_thrust"),false,noone,1.2);
		}
		if (instance_exists(minion) && minion.state != 3 && minion.state != 5 && minion.state != 6 && window == 1){
			minion.state = 4;
			minion.strong_dir = 2;
			minion.image_index = 0;
		}
		if window == 2 && window_timer == 5{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		if window == 3 && window_timer == 2{
			sound_play(asset_get("sfx_spin"),false,noone,1.2,.8);
		}
		break;
	case AT_DSTRONG:
		if window == 2 && window_timer == 1{
			sound_play(asset_get("sfx_charge_blade_swing"));
		}
		if (instance_exists(minion) && minion.state != 3 && minion.state != 5 && minion.state != 6 && window == 1){
			minion.state = 4;
			minion.strong_dir = 3;
			minion.image_index = 0;
		}
		if window == 2 && window_timer == 4{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_NAIR:
		if window == 1 && window_timer == 6{
			sound_play(asset_get("sfx_boss_fireball"),false,noone,.7);
		}
		if window == 2 && window_timer == 5{
			sound_play(asset_get("sfx_boss_fireball"),false,noone,.7);
		}
		if window == 2 && window_timer == 12{
			sound_play(asset_get("sfx_boss_fireball"),false,noone,.7);
		}
		break;
	case AT_FAIR:
		if window == 1 && window_timer == 8{
			sound_play(sound_get("se_ike_attackair_L01"),false,noone,1.0,1.1);
		}	
		break;
	case AT_BAIR:
		if window == 2 && window_timer == 1{
			sound_play(asset_get("sfx_charge_blade_swing"));
		}	
		break;
	case AT_UAIR:
		if window == 1 && window_timer == 2{
			sound_play(asset_get("sfx_frog_nspecial_cast"));
		}
		if window == 3 && window_timer == 6{
			sound_play(asset_get("sfx_frog_nspecial_shove"));
		}
		break;
	case AT_DAIR:
		if window == 1 && window_timer == 14{
			spawn_hit_fx( x, y, vfx_dair_fade );
			sound_play(asset_get("sfx_frog_uspecial_divekick"));
		}
		if window == 3 && window_timer ==1{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		if window == 3 && window_timer == 4{
			destroy_hitboxes();
		}	
		break;
	
	
	case AT_NSPECIAL:
		can_fast_fall = false;
		
		if (down_down){
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 3);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 3);
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 3);
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 3);
			set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 3);
			set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED, 3);
			set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED, 3);
			set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED, 3);
		}
		else {
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 1);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 1);
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 1);
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 1);
			set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 1);
			set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED, 1);
			set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED, 1);
			set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED, 1);
		}
		
		switch(window){
			case 2:
				if (!special_down){
					window = 4;
					window_timer = 0;
				}
			break;
			case 3:
				if (!special_down){
					window = 7;
					window_timer = 0;
				}
			break;
			case 4:
				if window_timer == 5{
					sound_play(asset_get("sfx_abyss_hazard_burst"));
				}
			break;
		}
		break;
	break;
	
	
	
	case AT_FSPECIAL:
		if (window == 1 && window_timer == 9){
			if (instance_exists(minion)){
				instance_destroy(minion);
			}
			minion_controlling = false;
			minion = instance_create( x+60*spr_dir, y-30, "obj_article1"); 
		}
		if (window == 2){
			minion_controlling = true;
			if (!special_down){
				window = 3;
				window_timer = 0;
				minion.image_index = 0;
				minion.state = 1;
				minion_controlling = false;
			}
			if (window_timer == 60){
				minion.image_index = 0;
				minion.state = 1;
				minion_controlling = false;
			}
		}
		if (window == 3 && window_timer == 1){
				sound_play(asset_get("sfx_ori_spirit_flame_1"));
			}
	break;
	
	
	
	
	case AT_FSPECIAL_2:
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL] = 90;
	move_cooldown[AT_FSPECIAL_2] = 30;
		if (window == 1 && window_timer == 5){
			if (dspecial_orb == 0 || shield_pressed){
				minion.state = 3;
				minion.image_index = 0;
			}
			else {
				dspecial_orb_minion = true;
				minion.minion_orb = dspecial_orb;
				minion.state = 5;
				minion.image_index = 0;
			}
		}
	break;
	
	case AT_USPECIAL:
		fall_through = true;
		switch (window){
			case 2:
			reset_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE);
			if (window_timer == 14){
				if ((up_down || joy_pad_idle) && !right_down && !left_down && !down_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -18);
				}
				if (up_down && right_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 13);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -13);
				}
				if (right_down && !up_down && !down_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 20);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
				}
				if (down_down && right_down && !left_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 13);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 13);
				}
				if (down_down && !right_down && !left_down && !up_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 18);
				}
				if (down_down && !right_down && left_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 13);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 13);
				}
				if (left_down && !up_down && !down_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 20);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
				}
				if (up_down && left_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 13);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -13);
				}	
				if (right_down){
					spr_dir = 1;
				}
				if (left_down){
					spr_dir = -1;
				}
				if (instance_exists(minion) && special_down){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
					x = minion.x;
					y = minion.y+30;
					uspecial_minion = true;
				}
			}
			break;	
			case 4:
				hsp = clamp(hsp, -9, 9);
				vsp = clamp(vsp, -8, 8);
				if window_timer == 3{
					sound_play(asset_get("sfx_hod_nspecial"),false,noone,.9);
            		shake_camera(3, 7);
					sound_play(sound_get("esp_teleport_out"),false,noone,.9,.6);
					if (uspecial_minion){
						uspecial_minion = false;
						minion.shoulddie = true;
					}
				}
			break;
		}
	break;
	
	case AT_DSPECIAL:
		can_fast_fall = false;
		can_move = false;
		dspecial_orb_gather = false;
		dspecial_orb_minion = false;
		enemy_dspecial_orb = 0;
		enemy_dspecial_cont = 0;
		enemy_dspecial_rot_cont = 50;
		orb1_exists = false;
		orb2_exists = false;
		orb3_exists = false;
		orb4_exists = false;
		switch (dspecial_orb){
			case 0:
				set_window_value(AT_DSPECIAL, 1, AG_WINDOW_GOTO, 2);
			break;
			case 1:
				set_window_value(AT_DSPECIAL, 1, AG_WINDOW_GOTO, 3);
			break;
			case 2:
				set_window_value(AT_DSPECIAL, 1, AG_WINDOW_GOTO, 4);
			break;
			case 3:
				set_window_value(AT_DSPECIAL, 1, AG_WINDOW_GOTO, 5);
			break;
		}
		if (window == 1 && dspecial_orb == 0){
			currentRot = 0;
		}
		if (window > 1 && window < 6){
			can_jump = true;
			can_shield = true;
			if (window_timer == 9){
				spawn_hit_fx( x, y, blob_tiny );
				dspecial_orb += 1;
			}
			if ((attack_pressed || special_pressed) && dspecial_orb > 0){
				attack = AT_DSPECIAL_2;	//Change the hurtbox stuff later
				window = 1;
				window_timer = 0;
			}
		}
		break;
		
	case AT_DSPECIAL_2:
		switch (window){
			case 1:
			if (dspecial_orb > 0){
				set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 90);
			}
			if (dspecial_orb > 1){
				set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 90);
			}
			if (dspecial_orb > 2){
				set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 90);
			}
			if (dspecial_orb > 3){
				set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 90);
			}
				if (window_timer == 8){
					dspecial_orb_gather = true;
					currentRot = 0;
				}
			break;
			case 2:
				if (window_timer %5 == 0){
					if (dspecial_orb == 4){
						create_hitbox(AT_DSPECIAL_2, 1, x+80*spr_dir, y-10);
					}
					if (dspecial_orb == 3){
						create_hitbox(AT_DSPECIAL_2, 2, x+80*spr_dir, y-70);
					}
					if (dspecial_orb == 2){
						create_hitbox(AT_DSPECIAL_2, 3, x+80*spr_dir, y-30);
					}
					if (dspecial_orb == 1){
						create_hitbox(AT_DSPECIAL_2, 4, x+80*spr_dir, y-50);
					}
					dspecial_orb--;
				}
			break;
			case 3:
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME);
				reset_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME);
				reset_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME);
				reset_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME);
				dspecial_orb = 0;
				dspecial_orb_gather = false;
			break;
		}
		break;
	break;			
	
	
	
	case AT_TAUNT:
		can_move = false;
		can_fast_fall = false;
		vsp = lerp(vsp, 0, .25)
		if clamp(window, 2, 4) == window
        {
            if window == 4 and window_timer > 40 break;
            hud_offset = floor(lerp(hud_offset, 110, .1));
        }
		if window == 1 && window_timer == 1{
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
			move_cooldown[AT_TAUNT] = 999
		}
		if window == 2 && window_timer == 28{
			sound_play(asset_get("sfx_boss_vortex_start"),false,noone,0.8,.9);
		}
        if window == 3
        {
            if window_timer == 1
            {
            	sound_play(asset_get("sfx_ori_ustrong_launch"),false,noone,1.0);
            	sound_play(asset_get("sfx_hod_nspecial"),false,noone,.8);
                shake_camera(18, 3)
		        var str, add;
		        str = "sfx_roar_";
		        add = "";
		        switch get_player_color(player)
		        {
		        	case 11:
		        		add = "drawcia";
		        	break;
		        	case 13:
		        		add = "yarn";
		        	break;
		        	case 14:
		        		add = "magalor";
		        	break;
		        	case 15:
		        	case 24:
		        		add = "void";
		        	break;
		        	case 16:
		        		add = "morpho";
		        	break;
		        	case 21:
		        		add = "kirbo";
		        	break;
		        	case 27:
		        		add = "kos";
		        	break;
		        	default:
		        		add = "base1";
		        	break;
		        }
		        sound_play(sound_get(str+add));
            	
            }
            else if (window_timer == 3) shake_camera(1, 48)
        }
    	break;
    	case AT_TAUNT_2:
		can_move = false;
		can_fast_fall = false;
		vsp = lerp(vsp, 0, .1)
		if window == 1 && window_timer == 1{
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
			move_cooldown[AT_TAUNT] = 999
		}
		if window == 2 && window_timer == 30{
			sound_play(asset_get("mfx_star"));
		}
		break;
	break;
}
#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


