if faces_visible{
  // just stop all codec sound
  if (penny_speaker == 1 && speaker2 != "aigis") {
    sound_stop(cur_audio);
    panel = 0;
    cur_text = 0;
		codectimerbs = -13;
    if subjects[subject] != "1905208125"{
      subject = 1;
    } else {
      subject = 2;
    }
    animate = 0;
  } else if (speaker2 == "aigis") {
    codec_active = 3;
  }

  // reset shit
  //codec_active = 3;
  /*codectimerbs = 0;
  panel = 0;
  subject = 0;*/
  speaker1 = ("static");
}


pen_mine_unstable = false;
penny_install = false;

opponent_strapped = false;
opponentx = 0;
opponenty = 0;

penny_strapped = false;

goboom = false;
boomtimer = 0;

mine_active = 0;
cooldown_mine = 0;

pen_didairdash = false;

// Remove everything on the field
if (instance_exists(obj_article2)){
    with(obj_article2){
    	if (("pen_c4_charged" in self) and (player_id == other.id)){
    		if instance_exists(hbox_mine){
    			hbox_mine.destroyed = true;
    		}
            state = 5;
            state_timer = 0;
    	}
    }
}

with(oPlayer){
	if id != other.id{
		if strapped_id.pen_mine_unstable{
			outline_color = [0,0,0];
			init_shader();
		}
		if penny_charged_id != noone {
			penny_charge_timer = 0;
			penny_charge_sound = false;
			outline_color = [0,0,0];
			init_shader();
			penny_charged_id = noone;
		}
	}
}
with(mine_player){
	penny_strapped = false;
	strapped_id = noone;
}
mine_player = noone;