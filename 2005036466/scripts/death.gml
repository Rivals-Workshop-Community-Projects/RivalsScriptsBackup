// called when the character gets KO'd
//Lights out. Sorry that you died.
lit_jab = false;
lit_tilt = false;
lit_strong = false;
lit_special = false;
cancel_ready_tier1 = false;
cancel_ready_tier2 = false;
cancel_ready_tier3 = false;

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

//U-Special button handling code.
do_final_kick = false;
reset_hitbox_value(AT_USPECIAL, 8, HG_EXTRA_HITPAUSE);
