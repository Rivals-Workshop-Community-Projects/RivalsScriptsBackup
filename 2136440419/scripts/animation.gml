// HODAN'S ANIMATION.GML

if (attack == AT_USTRONG) {
    // This is the code for the grab attack. It has to be here because this is
    // an early script in the load order, which means the enemy will properly move with the attack
    if (window == 5 && grabbed != -1) {
		// Double check that someone's actually grabbed and nothing glitched
		if (window_timer < get_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH)) {
			// Set the frame to be relative to the actual grab attack
			var frame = image_index - get_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START);
			
			if (frame < 5) {
			    with (grabbed) {
			        set_state(PS_HITSTUN);
			        can_jump = false;
			        can_shield = false;
			        can_attack = false;
			        can_strong = false;
			        can_wall_jump = false;
			        can_fast_fall = false;
			    }
			   	grabbed.hsp = 0;
				grabbed.vsp = 0;
			}
			switch frame {
				// Switch statement that adjusts the x/y pos of the grabbed enemy
				// every time the animation updates. This has to be hardcoded, AFAIK
				case 0: 
					grabbed.spr_dir = 0; // Deletes their collision and makes them invisible.
					// Don't use spr_dir 0 in your code. Use something better.
					grabbed.x = x + 50 * spr_dir;
					grabbed.y = y - 146;
					break;
				case 1:
					grabbed.x = x + 10 * spr_dir;
					grabbed.y = y - 150;
					// Lets you turn around after the initial grab
					if (left_down) {
						spr_dir = -1;
					} else if (right_down) {
						spr_dir = 1;
					}
					break;
				case 2:
					grabbed.x = x - 16 * spr_dir;
					grabbed.y = y - 150;
					break;
				case 3:
					grabbed.x = x - 30 * spr_dir;
					grabbed.y = y - 150;
					break;
				case 4:
					// Resets spr_dir, makes it so you go through platforms, and
					// sets the trajectory to follow through.
					grabbed.spr_dir = spr_dir;
					grabbed.fall_through = true;
					grabbed.free = true;
					grabbed.vsp = 30;
					grabbed.hsp = 30 * spr_dir;
					break;
			}
		}
	}
}

// Putting this in animation so it happens before the character is rendered
if (grabbed != -1 && (!attacking || attack != AT_USTRONG)) {
	grabbed.spr_dir = spr_dir;
	grabbed = -1;
}

// NAIR landing hitbox parry. Why does it have to be in this script? Who knows.
if (attack == AT_NAIR && was_parried) {
	nair_parry = true;
}

switch (state){
    // Switch statement for various player states
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        // Master attack statement
        if (attack == AT_USPECIAL || attack == AT_DSPECIAL) {
            // Make USPECIAL amd DSPECIAL spin
            if (window == 2) {
                if (window_timer >= 4) {
                    // The four is how many frames the initial animation
                    // For the spin plays
                    // Make the image cycle between the four spin images
                    if (attack == AT_USPECIAL) {
                        image_index = (floor(((window_timer - 4) % 12)/3)) + 2;
                    } else {
                        image_index = (floor(((window_timer - 4) % 12)/3)) + 5;
                    }
                }
            }
        }
        // Tweak strong FAIR's animation
        if (attack == AT_FAIR && fair_strong) {
            if (window == 1 && window_timer < 15 && image_index = 3) {
                image_index = 2;
            }
            if (window == 3 && window_timer < get_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH)/3 ) {
                image_index = 5;
            } else if (window == 3) {
                image_index = 6;
            }
        }
        // Changes sprite if sweatwhirl is charged
        if ((attack == AT_FSPECIAL || attack == AT_NSPECIAL) && sweatwhirl_charged) {
            sprite_index = sprite_get("sweatwhirl_charged");
            hurtboxID.sprite_index = sprite_get("sweatwhirl_charged_hurt");
        }
        
        // NAIR hold animation
        if (attack == AT_NAIR && window == 2) {
            if (round(nair_anim_frame) >= (get_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START) + get_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES)) + 0.5) {
                nair_anim_frame = get_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START) + 1;
            }
            nair_anim_frame += get_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES)/get_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH);
            image_index = nair_anim_frame;
            //image_index = nair_anim_frame;
        }
        
        if (attack == AT_DATTACK && dattack_strong) {
            sprite_index = sprite_get("dattack_strong");
        }
        
        if (attacking && attack == AT_DSTRONG && dstrong_charged && window_timer > dstrong_parry_frame && window == 2) {
            // Gives Hodan back the huge hurtbox after the parry is over
            hurtboxID.sprite_index = sprite_get("dstrong_hurt");
            sprite_index = sprite_get("dstrong");
            // Make sure it'll be playing the correct sprite
            image_index = 3;
        }
        
        break;
        
    case PS_PARRY:
        if (dstrong_parry) {
            // Makes sure his sprite and hurtbox is the DSTRONG during DSTRONG parry
            hurtboxID.sprite_index = sprite_get("dstrong_parry_hurt");
            sprite_index = sprite_get("dstrong_parry");
            if (window == 0) {
                image_index = 2;
                hurtboxID.image_index = 2;
            } else if (window == 1) {
                image_index = 3;
                hurtboxID.image_index = 3;
            }
        }
        if (runeM) {
            if (ustrong_parry) {
                hurtboxID.sprite_index = sprite_get("ustrong_hurt");
                sprite_index = sprite_get("ustrong");
                if (window == 0) {
                    image_index = 4;
                    hurtboxID.image_index = 4;
                } else if (window == 1) {
                    image_index = 5;
                    hurtboxID.image_index = 5;
                }
            } else if (fstrong_parry) {
                hurtboxID.sprite_index = sprite_get("fstrong_hurt");
                sprite_index = sprite_get("fstrong");
                if (window == 0) {
                    image_index = 2;
                    hurtboxID.image_index = 2;
                } else if (window == 1) {
                    image_index = 3;
                    hurtboxID.image_index = 3;
                }
            }
        }
        break;
        
    default: break;
}

if (god_mode) {
    // This deletes your hurtbox unless you are parrying
    if (state != PS_PARRY || window != 1) {
        hurtboxID.sprite_index = sprite_get("empty");
    } else {
        if (!dstrong_parry && !fstrong_parry && !ustrong_parry) {
            hurtboxID.sprite_index = sprite_get("parry");
        } else {
            if (dstrong_parry) {
                hurtboxID.sprite_index = sprite_get("dstrong_parry_hurt");
            } else if (ustrong_parry) {
                hurtboxID.sprite_index = sprite_get("ustrong_hurt");
            } else if (fstrong_parry) {
                hurtboxID.sprite_index = sprite_get("fstrong_hurt");
            }
        }
    }
} else if (taunt_menu && taunt_switched && attacking && attack == AT_TAUNT) {
    hurtboxID.sprite_index = hurtbox_spr;
}