//lumina got_parried

if (my_hitboxID.player_id == id){//open
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 11){
	my_hitboxID.hitbox_timer = 0;
	//my_hitboxID.spr_dir = my_hitboxID.spr_dir * -1
	my_hitboxID.draw_xscale = my_hitboxID.draw_xscale * -1
	my_hitboxID.hsp = (abs(my_hitboxID.hsp) + 1) * my_hitboxID.spr_dir;
	/*my_hitboxID.can_hit[hit_player] = 0;
	my_hitboxID.can_hit_self = true;*/
	
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	for (var tmp_num = 1; tmp_num <= 8; tmp_num += 1){
		my_hitboxID.leader_hb.hblist[tmp_num].hsp = my_hitboxID.leader_hb.hblist[tmp_num].hsp * -1
		my_hitboxID.leader_hb.hblist[tmp_num].spr_dir = my_hitboxID.leader_hb.hblist[tmp_num].spr_dir * -1
		my_hitboxID.leader_hb.hblist[tmp_num].can_hit[hit_player] = 0;
		my_hitboxID.leader_hb.hblist[tmp_num].can_hit_self = true;
		my_hitboxID.leader_hb.hblist[tmp_num].was_parried = true;
		my_hitboxID.leader_hb.hblist[tmp_num].hitbox_timer = 0;
		my_hitboxID.leader_hb.hblist[tmp_num].hsp = my_hitboxID.leader_hb.hblist[tmp_num].hsp * 1.5;
		switch (tmp_num){
			case 5:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = 1.8
			break;
			case 6:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = -1.8
			break;
			case 1:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = 1.5
			break;
			case 2:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = -1.5
			break;
			case 3:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = 1
			break;
			case 4:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = -1
			break;
			case 7:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = 0.5
			break;
			case 8:
				my_hitboxID.leader_hb.hblist[tmp_num].vsp = -0.5
			break;
		}
		/*
				lb1.vsp = -2.7;//2 
				lb2.vsp = 2.7;//7
				lb3.vsp = -1.8;//3
				lb4.vsp = 1.8;//6
				lb5.vsp = -3.5;//1
				lb6.vsp = 3.5;//8
				lb7.vsp = -0.8;//4
				lb8.vsp = 0.8;//5
		*/
	}
	
}
}//close

/*
if (latest_light_sentry != -4){
	if (point_distance(hit_player_obj.x, hit_player_obj.y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80){
		if (latest_light_sentry.state == 1){
			parried_storage = hit_player;
			user_event( 0 );
		}
	}
}
*/