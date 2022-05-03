// called when the character gets KO'd

//=========================================================
// VOICE CLIPS
//=========================================================
vox_play(vox_ko, false);                                                // Play the KO voice clip.



//=========================================================
// FORCE EXIT SUPPLY DROP MENU
//=========================================================
if (supply_menu_open) {
	ui_set_state(0); // INV_NOONE												// Exit the supply drop menu state.
	supply_menu_open = false;													// Disable the supply drop menu variable.
	sound_play(sound_get("_pho_acnh_cancel1"), false, 0);						// Play the exit sound.
}



//=========================================================
// FUNCTIONS
//=========================================================

//-----------------------------------------
// Play Voice Clip
//-----------------------------------------
#define vox_play(_vox, _can_be_interrupted)                                     // Play voice clip; Overwrites already playing voice clips.

sound_stop(vox_prev);                                                           // Stop the previous voice clip, if one is currently playing.
sound_play(_vox);                                                               // Play the voice clip.
if (_can_be_interrupted) vox_prev = _vox;                                       // Update the previous voice clip



//-----------------------------------------
// Set UI State
//-----------------------------------------
#define ui_set_state(_state)

ui_state_current = _state;														// Go to the desired state.
ui_state_timer = 0;																// Reset the state timer.