var refresh_time = 25; //change this number to change the amount of frames between hits

if (attack == AT_USPECIAL && hbox_num == 3) {
  if (hitbox_timer % refresh_time == 0) for (var i = 1; i < 20; i++) {
     can_hit[i] = 1;
  }
}

var refresh_time2 = 15; //change this number to change the amount of frames between hits

if (attack == 49 && hbox_num == 1) {
  if (hitbox_timer % refresh_time2 == 0) for (var i = 1; i < 20; i++) {
     can_hit[i] = 1;
  }
}

if (attack == AT_FSPECIAL && has_rune("G") || attack == AT_FSPECIAL && player_id.wft_testrune == 1){
	proj_angle = proj_angle+10;
}

if (attack == AT_FSPECIAL){
	//spr_angle = spr_angle+10;
}


if (attack == AT_FSPECIAL && has_hit){
	hsp = -hsp;
	vsp = -vsp;
	has_hit = false;
}

if (attack == AT_FSPECIAL && destroyed == true || attack == AT_FSPECIAL && hitbox_timer >= 59){
	player_id.wft_balldisallow = 0;
}