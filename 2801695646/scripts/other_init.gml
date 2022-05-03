// other init

sna_is_stuck = false;				                                            // Does this player have an entity stuck to them?
sna_grabbed_cooldown = 0;			                                            // How many frames until this player can be grabbed again.
sna_is_in_smoke = false;			                                            // Whether or not this character is in a smoke cloud.


//-----------------------------------------
// Interrogation Lines
//-----------------------------------------
sna_interrogated_line_spoken = false;                                           // Has the player spoken the interrogation line yet? Used to advance the interrogation line index.
sna_interrogated_line_idx = 1;                                                  // The current interrogation line.

if (!variable_instance_exists(id, "sna_interrogated_line_01"))
    sna_interrogated_line_01 = "...";                                           // Snake interrogation dialogue. Lines 2 and 3 are optional.
if (!variable_instance_exists(id, "sna_interrogated_line_02"))
    sna_interrogated_line_02 = noone;
if (!variable_instance_exists(id, "sna_interrogated_line_03"))
    sna_interrogated_line_03 = noone;

// Example interrogation lines:
//sna_interrogated_line_01 = "Foolishness, Snake. Foolishness.";
//sna_interrogated_line_02 = "Might controls everything.";
//sna_interrogated_line_03 = "And without strength, you cannot protect anything.";



//-----------------------------------------
// Base Cast Interrogation Lines
//-----------------------------------------

if (variable_instance_exists(id, "url")) {
    switch (url) {
        case CH_ZETTERBURN:
            sna_interrogated_line_01 = "Fireballs will light enemies on fire.";
            sna_interrogated_line_02 = "If you crawl under a fireball...";
            sna_interrogated_line_03 = "Let go of me!";
        break;
        case CH_WRASTOR:
            sna_interrogated_line_01 = "You'll be at a disadvantage in the air.";
            sna_interrogated_line_02 = "You lousy...!";
        break;
        case CH_KRAGG:
            sna_interrogated_line_01 = "Flatten yourself against a solid surface, and press ATTACK...";
            sna_interrogated_line_02 = "You can use any solid object on the stage as cover.";
        break;
        case CH_FORSBURN:
            sna_interrogated_line_01 = "You can hide in smoke, even if it's not your own.";
            sna_interrogated_line_02 = "Let me go...!";
        break;
        case CH_MAYPUL:
            sna_interrogated_line_01 = "Quick opponents don't leave much time to set traps.";
            sna_interrogated_line_02 = "If an enemy is always rushing you...";
            sna_interrogated_line_03 = "Smoke grenades will help create breathing room.";
        break;
        case CH_ABSA:
            sna_interrogated_line_01 = "Your throwing weapons have special reactions to your bullets.";
            sna_interrogated_line_02 = "Throw a grenade at a claymore...";
        break;
        case CH_ETALUS:
            sna_interrogated_line_01 = "Heavier fighters are easier to combo.";
            sna_interrogated_line_02 = "Heavier fighters have more LIFE and PSYCHE.";
        break;
        case CH_RANNO:
            sna_interrogated_line_01 = "Opponents with more damage can be grabbed longer.";
            sna_interrogated_line_02 = "While an opponent is held... Hold a direction and press STRONG...";
        break;
        case CH_CLAIREN:
            sna_interrogated_line_01 = "Unconscious enemies with low damage wake up fast.";
            sna_interrogated_line_02 = "If you want to knock out an enemy, build up their damage first...";
            sna_interrogated_line_03 = "In the MILESTONES menu... Input the KONAMI code...";
        break;
        case CH_ELLIANA:
            sna_interrogated_line_01 = "If you deplete the LIFE gauge, your lethal attacks will...";
        break;
        case CH_MOLLO:
            sna_interrogated_line_01 = "If a grenade is shot... The grenade will...";
            sna_interrogated_line_02 = "Let me go...!";
        break;
    }
}


//-----------------------------------------
// Status
//-----------------------------------------
sna_life = 100;                                                                 // LIFE Gauge
sna_life_drawn = sna_life;                                                      // LIFE Gauge (Visual) (DO NOT REFERENCE! ONLY FOR DRAWING! WILL CAUSE DESYNCS!)
sna_psyche = 100;                                                               // PSYCHE Gauge
sna_psyche_drawn = sna_psyche;                                                  // PSYCHE Gauge (Visual) (DO NOT REFERENCE! ONLY FOR DRAWING! WILL CAUSE DESYNCS!)

sna_life_depleted = false;														// If true, this character will be vulnerable to lethal attacks, until LIFE regenerates back to 100.
sna_psyche_depleted = false;													// If true, this character will be unconscious, until PSYCHE regenerates back to 100.
sna_psyche_depleted_start_time = 0;												// When the psyche gauge was depleted.
sna_psyche_depleted_duration = 0;												// How many frames the psyche gauge will take to regenerate.
sna_psyche_depleted_airtime = 0;												// How many frames the player has been in the air for.
sna_psyche_depleted_airtime_max = 45;											// How many frames the unconscious player can be in the air for, before waking up.

sna_psyche_ko_type = 0;                                                         // 0 = stun, 1 = sleep


//-----------------------------------------
// Status UI Initialization
//-----------------------------------------
sna_ui_status_state = 0;														// The current stats UI display state. 0 = don't display, 1 = display, 2 = fade out.
sna_ui_status_timer = 0;														// The current state timer for the stats.

sna_ui_status_states = [];
sna_ui_status_states[0] = { length: 1, next_state: 0, };						// Don't Display
sna_ui_status_states[1] = { length: 20, next_state: 2, };						// Display
sna_ui_status_states[2] = { length: 10, next_state: 0, };						// Fade Out


//------------------------------------------------------------------------------
// Emote Icon Initialization (For exclamation marks, stars, and ZZZs).
//------------------------------------------------------------------------------
sna_emote_window = 0;
sna_emote_start_time = 0;



//=========================================
// SENSE SYSTEM
//=========================================

//-----------------------------------------
// Sight
//-----------------------------------------
sna_sns_sght_eye_height                 = char_height * 0.7;                    // Set the eye height.
sna_sns_sght_eye_height_crouch          = char_height * 0.6;                    // Set the crouched eye height.
sna_sns_sght_angle_wish                 = (spr_dir == 1) ? 0 : 180;             // The desired angle for the vision cone.
sna_sns_sght_angle                      = sna_sns_sght_angle_wish;              // The current vision cone angle.
sna_sns_sght_angle_dampening            = 0.8;                                  // How fast the vision cone rotates to the wish angle.

sna_sns_sght_distance                   = 256;                                  // How far the opponent can see
sna_sns_sght_conewidth                  = 30;                                   // The opponent's peripheral vision angle

sna_sns_sght_can_see                    = true;                                 // Can the opponent currently see?

sna_sns_sght_sees_snake                 = false;                                // Is Snake in the opponent's sight?



