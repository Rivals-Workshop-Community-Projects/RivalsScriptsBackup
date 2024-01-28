// user_event1.gml

// Correctly ensure grab victim stays grabbed even if they're hit
if grab_valid {
  var hbwindow = get_hitbox_value( attack, grabevent_attack_box, HG_WINDOW );
  var hbcreation_frame = get_hitbox_value( attack, grabevent_attack_box, HG_WINDOW_CREATION_FRAME );

  if window == hbwindow && window_timer == hbcreation_frame {
    grab_victim.wrap_time = 0;
    grab_victim.gethit_grabbed = noone;
    grab_victim = noone;
  } else {
    grab_victim.state = PS_WRAPPED;
  }
}
