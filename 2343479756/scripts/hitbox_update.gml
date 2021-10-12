//hitbox_update

if (attack==AT_NSPECIAL){
	through_platforms = 5;
	player_id.move_cooldown[AT_NSPECIAL] = 2;
	if (!free||y>room_height){
		destroyed = true;
		//print_debug("test")
		sound_play(sound_get("taunt_start"), false, -1, 0.85)
	}
	if (hitbox_timer==1){
		if (player_id.down_down){
			vsp = -6
		}
		if (player_id.up_down){
			vsp = -11
			hsp = 1*spr_dir
		}
	}
	
	if (!h_lockout){
		if (place_meeting(x,y, asset_get("pHitBox"))){
			//print_debug("hitbox detect")
			var tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
			var tmp_id = tmp_hb_id.player_id;
			if (tmp_hb_id.player_id==player_id){
				//print_debug("player detect")
				if (tmp_hb_id.attack!=AT_NSPECIAL){
					//print_debug("attack detect")
					in_hitpause = true;
					tmp_id.hitpause = true;
					tmp_id.hitstop = tmp_hb_id.hitpause;
					tmp_id.hitstop_full = tmp_hb_id.hitpause;
					tmp_id.old_hsp = tmp_id.hsp;
					tmp_id.old_vsp = tmp_id.vsp;
					tmp_id.hsp = 0;
					tmp_id.vsp = 0;
					if (tmp_hb_id.attack==AT_FTILT||(tmp_hb_id.attack==AT_BAIR&&tmp_hb_id.hbox_num==1)){
						//the kicks are here
						h_old_hsp=12*(tmp_hb_id.spr_dir*((tmp_hb_id.attack==AT_BAIR)?-1:1));
						h_old_vsp=-3;
						spr_dir = (spr_dir*((tmp_hb_id.attack==AT_BAIR)?-1:1));
						damage = 13
						kb_value = 9
						kb_angle = 361
						hit_effect = 110 
						image_xscale = image_xscale*1.2
						image_yscale = image_yscale*1.2
						sound_effect = sound_get("hit_med_4")
						sound_play(sound_get("hit_med_5"))
						does_not_reflect = true;
						projectile_parry_stun = true;
						
					}else if(tmp_hb_id.attack==AT_FSPECIAL){
						var store_a = 0;
						var store_b = 0;

						store_a = player_id.x
						store_b = x
						
						x = store_a;
						player_id.x = store_b;
						
						player_id.window = 5;
						player_id.window_timer = 0;
						
						h_old_hsp=2*(tmp_hb_id.spr_dir*-1);
						h_old_vsp=-8;
						spawn_hit_fx( store_b, y-16, 110 )
						with (player_id){
							destroy_hitboxes();
						}
						player_id.has_hit = true;
						player_id.has_hit_player = true;
						
					}else if(tmp_hb_id.attack==AT_DSPECIAL||tmp_hb_id.attack==AT_DSPECIAL_AIR){
						with (player_id){
							destroy_hitboxes();
							set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
							set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
							set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 6);
							set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
							
							window = 6;
							window_timer = 0;
							spr_dir = spr_dir*-1
							other.spr_dir = spr_dir
							old_vsp = -8
							dsp_target = other.id
							
							sound_stop(sound_get("dspecial"))
							sound_play(sound_get("dspecial_activate"))
							
						}
						h_old_hsp=2*spr_dir;
						h_old_vsp=-8;
						
					}else if(tmp_hb_id.attack==AT_DAIR&&tmp_hb_id.hbox_num==1){
						h_old_hsp=1*tmp_hb_id.spr_dir;
						h_old_vsp=12;
						damage = 14
						kb_value = 5
						kb_scale = 0.7
						kb_angle = 280
						hit_effect = 112 
						hitpause = 12
						hitpause_growth = 0.8
						sound_effect = sound_get("hit_strong_2")
						sound_play(sound_get("hit_med_5"))
						does_not_reflect = true;
						projectile_parry_stun = true;
						
					}else if (tmp_hb_id.attack==AT_FSTRONG&&(tmp_hb_id.hbox_num==1||tmp_hb_id.hbox_num==4)){
						h_old_hsp=6*(tmp_hb_id.spr_dir*((tmp_hb_id.attack==AT_BAIR)?-1:1));
						h_old_vsp=-6;
						spr_dir = (spr_dir*((tmp_hb_id.attack==AT_BAIR)?-1:1));
						damage = 10
						kb_value = 9
						kb_angle = 361
						hit_effect = 110 
						sound_effect = sound_get("hit_med_4")
						sound_play(sound_get("hit_med_5"))
						does_not_reflect = true;
						projectile_parry_stun = true;
						
					}else{
						h_old_hsp=2*tmp_hb_id.spr_dir;
						h_old_vsp=-8;
						spr_dir = tmp_hb_id.spr_dir;
						
					}
					h_hitpause = true;
					h_hitstop = tmp_hb_id.hitpause;
					h_hitstop_full = tmp_hb_id.hitpause;
					sound_play(tmp_hb_id.sound_effect)
					spawn_hit_fx( x, y, tmp_hb_id.hit_effect )
					h_lockout = true;
				}
			}
		}
	}
	
}
if (h_hitpause){
	h_hitstop--;
	hsp = 0;
	vsp = 0;
	if (h_hitstop == 0){
		h_hitpause = false;
		h_hitstop = 0;
		h_hitstop_full = 0;
		hsp = h_old_hsp;
		vsp = h_old_vsp;
		in_hitpause = false;
	}
}
if (h_lockout){
	if (player_id.state!=PS_ATTACK_AIR&&player_id.state!=PS_ATTACK_GROUND){
		h_lockout = false;
	}
}






