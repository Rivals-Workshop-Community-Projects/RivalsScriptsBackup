// init for other players

Cann_EnmDamage = 0;

// The COMMAND GRAB Code
// By Wabungus!

// Grab Movement:

/* The following variables are used by the method in attack_update.gml
 * They are what actually causes the 'grab' part of the grab, including
 * moving the caught object around and whatnot.
 */

// Id of the object to be grabbed (supports articles & players)
grabId = 0;

// Total number of movements for grab
grabPositionsTotal = 0;

// Current movement to be performing
grabPositionsCurrent = 0;

// Easing Timer for Grab Movements
grabEasingTimer = 0;

// Position of grabbed object at start of move
grabStartX = 0;
grabStartY = 0;

// Remaining time in window when grab activates (-1 means it hasn't been set yet)
grabWindowRemaining = -1;

// Final Value Changes Check - If ones grab windows last longer than the length
//                             of time designated for movement, this makes sure
//                             that the opponent stays in place until the end
grabHoldPosition = false;

// Visibilty Reset
grabVisibleReset = false; // Makes object visible at end of grab

// Grab Activation:

/* These are variables that are relevant to how the player would activate
 * the grab in various locations and with various types of objects.
 * This code is best suited for usage on players and articles, however I
 * have included the ability to grab player's hitboxes as well.
 */

// - Player Specific

// Values used for if grabbed player falls out of grab early somehow (EX: grab canceled due to landing lag)
grabOpponetDamage = 0;
grabKnockbackScaling = 0;
grabHitBoxDamage = 0;
GrabKnockback = 0;
GrabLaunchAngle = 0;

// - Hitbox Specific: 

// Store the original size of the hitbox, since it must be set to zero during grab
// Hitbox IDs to check when grabbing
grabHitboxID = ds_list_create();
grabIsHitbox = false; // Used for reseting hit priority

// - Article Specific:



// What kinds of things will this move grab
grabCanPlayer = false;
grabCanHitbox = false;
grabCanArticle = false;

// Grab Drop Info

// Lets the grab code know this is a player
grabObjectType = 1; 

/* Grabbable Object Types
 * 1 = Player
 * 2 = Hitbox
 * 3 = Article (note: must have article_hit.gml active)
 */