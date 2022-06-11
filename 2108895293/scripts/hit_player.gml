//hit_player
var hit_attack = my_hitboxID.attack;

if (my_hitboxID.attack == AT_USTRONG){
    ustrong_target = hit_player_obj;
	if (my_hitboxID.hbox_num==4&&(hit_player_obj.orig_knock>20||hit_player_obj.should_make_shockwave)){
		sound_play(sound_get("shatterlight"));
	}else{
		sound_play(sound_get("wavedash"));
	}
}
if (my_hitboxID.attack == AT_BAIR){
	if (hit_player_obj.should_make_shockwave){
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, lumihitfx1 );
		sound_play(sound_get("shatterlight"));
	}
	if (hit_player_obj.free){
		sound_play(sound_get("stomp"));
	}
}
if (my_hitboxID.attack == AT_FAIR){
	if (hit_player_obj.should_make_shockwave){
		//sound_play(asset_get("sfx_blow_heavy2"));
		
		//sound_play(sound_get("shatterlight"));
		
		hitstop = round(hitstop*1.2)
		hitstop_full = round(hitstop_full*1.2)
		hit_player_obj.hitstop = round(hit_player_obj.hitstop*1.2)
		hit_player_obj.hitstop_full = round(hit_player_obj.hitstop_full*1.2)
	}
}
if (my_hitboxID.attack == AT_FTILT){
	if (my_hitboxID.hbox_num==1){
		sound_play(sound_get("click2"));
	}
	if (my_hitboxID.hbox_num==2){
		sound_play(sound_get("click2"));
	}
	if (my_hitboxID.hbox_num==3){
		sound_play(sound_get("click3"));
	}
}
if (my_hitboxID.attack == AT_DAIR && my_hitboxID.type == 2){
	has_hit = true;
	has_hit_player = true;
}
if (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num == 1){
	if (hit_player_obj.free){
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, lumihitfx1 );
	}
}

//if (my_hitboxID.type == 1){ //deprecated
	if (latest_light_sentry != -4){
		if (point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80 ||
			point_distance(hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80 ||
			point_distance(my_hitboxID.x, my_hitboxID.y, latest_light_sentry.x, latest_light_sentry.y) <= 80 ){ //140?
			if (latest_light_sentry.state == 1){
			/*if (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0){*/
				/*if (my_hitboxID.attack == AT_FSTRONG){
					hit_player_obj.state = PS_HITSTUN;
					hit_player_obj.hitpause = 1;
					hit_player_obj.hitstop = 30;
					hit_player_obj.hitstop_full = 30;
				}*/
				//special case for strongs
				if (my_hitboxID.attack == AT_FSTRONG ||
					my_hitboxID.attack == AT_USTRONG ||
					my_hitboxID.attack == AT_DSTRONG){
					latest_light_sentry.hitstop=4;
					latest_light_sentry.state=3;
					latest_light_sentry.state_timer=0;
					set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
					set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 18);
					set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX_FRAME, 17);
					//set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 40);
					sound_play(sound_get("shatterlight"));
					
					hit_player_obj.hitpause = true
					hit_player_obj.hitstop_full = 40
					hit_player_obj.hitstop = 40
					if (attack==AT_FSTRONG){
						if (my_hitboxID.hbox_num==2){
						}else{
							hitpause = true
							hitstop_full = 40
							hitstop = 40
						}
					}else{
					hitpause = true
					hitstop_full = 40
					hitstop = 40
					}
					
					var dist = 36;
					var nd_dist = 40
					
					// 1 2 3
					// 8   4
					// 7 6 5
					
					var lb1 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x-dist, hit_player_obj.y-dist-round(hit_player_obj.char_height/2) );
					var lb2 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x, hit_player_obj.y-nd_dist-round(hit_player_obj.char_height/2) );
					var lb3 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x+dist, hit_player_obj.y-dist-round(hit_player_obj.char_height/2) );
					var lb4 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x+nd_dist, hit_player_obj.y-round(hit_player_obj.char_height/2) );
					var lb5 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x+dist, hit_player_obj.y+dist-round(hit_player_obj.char_height/2) );
					var lb6 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x, hit_player_obj.y+nd_dist-round(hit_player_obj.char_height/2) );
					var lb7 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x-dist, hit_player_obj.y+dist-round(hit_player_obj.char_height/2) );
					var lb8 = create_hitbox( AT_FSPECIAL, 1, hit_player_obj.x-nd_dist, hit_player_obj.y-round(hit_player_obj.char_height/2) );
					
					lb1.gather = true;
					lb2.gather = true;
					lb3.gather = true;
					lb4.gather = true;
					lb5.gather = true;
					lb6.gather = true;
					lb7.gather = true;
					lb8.gather = true;
					
					lb1.damage = 2;
					lb2.damage = 2;
					lb3.damage = 2;
					lb4.damage = 2;
					lb5.damage = 2;
					lb6.damage = 2;
					lb7.damage = 2;
					lb8.damage = 2;
					
					lb1.follow = hit_player_obj;
					lb2.follow = hit_player_obj;
					lb3.follow = hit_player_obj;
					lb4.follow = hit_player_obj;
					lb5.follow = hit_player_obj;
					lb6.follow = hit_player_obj;
					lb7.follow = hit_player_obj;
					lb8.follow = hit_player_obj;
					
					lb1.kb_angle = my_hitboxID.kb_angle;
					lb1.hit_flipper = my_hitboxID.hit_flipper;
					lb1.kb_value = my_hitboxID.kb_value;
					lb1.kb_scale = my_hitboxID.kb_scale;
					lb1.hitpause = my_hitboxID.hitpause;
					lb1.hitpause_growth = my_hitboxID.hitpause_growth;
					lb1.extra_hitpause = my_hitboxID.extra_hitpause;
					
					var spspsd = 6
					var m_spspsd = -6
					var nd_mult = 1.1 //nd=nondiagonal
					var d_m = 0.9 //decay_mult
					
					//lb1.extra_hitpause = 20
					lb2.extra_hitpause = 20
					lb3.extra_hitpause = 20
					lb4.extra_hitpause = 20
					lb5.extra_hitpause = 20
					lb6.extra_hitpause = 20
					lb7.extra_hitpause = 20
					lb8.extra_hitpause = 20
					
					// 1 2 3
					// 8   4
					// 7 6 5
					
					lb1.hsp = m_spspsd;			lb1.vsp = m_spspsd;			spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					lb2.hsp = 0;				lb2.vsp = m_spspsd*nd_mult;	spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					lb3.hsp = spspsd;			lb3.vsp = m_spspsd;			spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					lb4.hsp = spspsd*nd_mult;	lb4.vsp = 0;				spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					lb5.hsp = spspsd;			lb5.vsp = spspsd;			spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					lb6.hsp = 0;				lb6.vsp = spspsd*nd_mult;	spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					lb7.hsp = m_spspsd;			lb7.vsp = spspsd;			spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					lb8.hsp = m_spspsd*nd_mult;	lb8.vsp = 0;				spspsd = spspsd*d_m; m_spspsd = m_spspsd*d_m;
					
					/*lb1.hsp = m_spspsd
					lb2.hsp = spspsd*0.9
					lb3.hsp = m_spspsd*0.8
					lb4.hsp = spspsd*0.7
					
					lb1.vsp = m_spspsd
					lb2.vsp = m_spspsd*0.9
					lb3.vsp = spspsd*0.8
					lb4.vsp = spspsd*0.7*/
				}else{
					user_event( 0 );
				}
				
			/*}*/
			}
		}
	}
//}