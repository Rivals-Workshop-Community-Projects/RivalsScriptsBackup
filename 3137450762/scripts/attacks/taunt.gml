//La Reina taunt.gml
var edit_attack = AT_TAUNT;

set_attack_value(edit_attack, AG_SPRITE, sprite_get("taunt"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 2);
set_attack_value(edit_attack, AG_HAS_LANDING_LAG, 3);
set_attack_value(edit_attack, AG_OFF_LEDGE, 1);
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, asset_get("bug_hurtbox"));

var moveTime = 3;
var transitionTime = moveTime*3;
var holdTime = 30;

//shell window, never shown
var edit_window = 1;
set_window_value(edit_attack, edit_window, AG_WINDOW_TYPE, 0);
set_window_value(edit_attack, edit_window, AG_WINDOW_LENGTH, 10);
set_window_value(edit_attack, edit_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, edit_window, AG_WINDOW_ANIM_FRAME_START, 0);

// Ending - Transition to Idle
var edit_window = 2;
set_window_value(edit_attack, edit_window, AG_WINDOW_TYPE, 0);
set_window_value(edit_attack, edit_window, AG_WINDOW_LENGTH, moveTime);
set_window_value(edit_attack, edit_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, edit_window, AG_WINDOW_ANIM_FRAME_START, 16);

for (var i = 1; i <= array_length(total_taunts); i += 1) {

  // Start Pose
  var win1 = i*2 + 1;
  set_window_value(edit_attack, win1, AG_WINDOW_TYPE, 0);
  set_window_value(edit_attack, win1, AG_WINDOW_LENGTH, transitionTime);
  set_window_value(edit_attack, win1, AG_WINDOW_ANIM_FRAMES, 3);
  set_window_value(edit_attack, win1, AG_WINDOW_ANIM_FRAME_START, (i-1)*4);

  // Hold Pose
  var win2 = win1 + 1;
  set_window_value(edit_attack, win2, AG_WINDOW_TYPE, 0);
  set_window_value(edit_attack, win2, AG_WINDOW_LENGTH, holdTime);
  set_window_value(edit_attack, win2, AG_WINDOW_ANIM_FRAMES, 1);
  set_window_value(edit_attack, win2, AG_WINDOW_ANIM_FRAME_START, 3 + (i-1)*4);

  // Play Sound
  set_window_value(edit_attack, win2, AG_WINDOW_HAS_SFX, 1);
  set_window_value(edit_attack, win2, AG_WINDOW_SFX, sound_get( "pixabay_camera_shutter" ));
  set_window_value(edit_attack, win2, AG_WINDOW_SFX_FRAME, 1);
}
