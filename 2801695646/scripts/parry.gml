// parry.gml

// Display exclamation mark
sna_emote_window = 1;
sna_emote_start_time = get_gameplay_time();

//=========================================================
// EXIT ALERT ON PARRY
//=========================================================

// Go into Caution
if (sna_stealth_state > 1 ) {                                                   // If in the alert or evasion phase...
    sna_stealth_state = 1;														// Go into the caution phase.
    sna_stealth_state_awareness = 99.99;										// Reset the awareness.
}

// Reset Snake's seen timer.
sna_stealth_seen_timer = 0;

// Draw exclamation mark above Snake
sna_emote_window = 1;
sna_emote_start_time = get_gameplay_time();