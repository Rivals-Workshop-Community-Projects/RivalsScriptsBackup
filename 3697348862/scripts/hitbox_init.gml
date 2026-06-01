// hitbox_init.gml
// this script sets up vars for your hitboxes

if (attack == AT_NSPECIAL){
	origSprDir = player_id.spr_dir;
	
	sd_card_can_bounce_on_hit = false;
	sd_card_bounced_on_hit = false;
	
	sd_card_can_be_recaught = true;
	
	card4_phase = 1;
	card4_parry_flag_thing = false;
	card5_refresh_hit = false;
	card5_stored_hsp = 0;
	card5_stored_vsp = 0;
	card7_phase = 1;
	card7_rotate_point_x = x;
	card7_rotate_point_y = y;
	card7_rotate_point_rad = 60;
	card7_rotate_speed = 0.2;
	card7_rot_ang = 270;	// start at bottom
	card7_looping_refresh_hit = false;
	card7_stored_hsp = 0;
	card7_stored_vsp = 0;
	card8_phase = 1;
	
	random_test_var = false;
	
	if (
	hbox_num == 1
	||
	hbox_num == 2
	||
	hbox_num == 3
	||
	hbox_num == 4
	||
	hbox_num == 6
	){
		sd_card_can_bounce_on_hit = true;
	}
	
	// prevents sd cards spawned outside of nspecial to be used
	if (hbox_num <= 10){
		sd_card_can_be_recaught = true;
	}
	
	sd_card_should_kill_self = false;
}







// blastzone vars (VERY useful)
blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);