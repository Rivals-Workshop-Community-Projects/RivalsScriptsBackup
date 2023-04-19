//article1_init

// Hitbox & Misc
sprite_index = sprite_get("article_hitbox");
new_sprite = sprite_get("article_hitbox");
image_index = 0;  
animation_type = 0;
anim_timer = 0;
anim_type = 0;
uses_shader = true;

// Stats
can_be_grounded = false;
ignores_walls = false;

// States
state = player_id.atk_NSpecialProjectile;
state_timer = 0;

opacity = 1;
spawnHitbox = false;
getOppDamage = 0;

vsp = -6;
if (player_id.free == true) {
    hsp = 3.5 * player_id.spr_dir;
} else {
    hsp = 3 * player_id.spr_dir;
}
old_hsp = hsp;
old_x = x;
wall_hit = false;

flytrapBounceDelay = 0;

jacksMultis = 0;

currentOwner = player_id;
ownerColor = get_player_hud_color( player_id.player );

// Article controller vibration

// Note: WHY DOES THIS HAVE TO BE SO HARD. ITS LEGIT 1 LINE OF CODE
//       ON A BANNED FUNCTION WHY :skull_emoji:

cloneCV_ID = player_id.CV_cloneID;

// ARTICLE HIT VARIABLES - By Wabungus
artHit_Hitstop = -20; // Hitstop amount from last hitbox to hit conduit
artHit_hbGroup = ds_list_create(); // Stores groups of hitboxes that hit
artHit_hbTempStorage = ds_list_create(); // Will be pushed to livingID
artHit_hbVerify = 0; // Used for priority checking
artHit_hbLastHitID = 0; // Used for checking if hitstop should be reduced
artHit_hbHitPlayer = 0; // Player number of last player to hit conduit
artHit_hbSkipRemaining = false;
artHit_hbLastID = 0;
artHit_healthInitial = 2; // Set this to -4 for articles without health (or just a high value)
artHit_health = artHit_healthInitial;  // Health during game
arthit_multiOverload = false; // Prevents running ArtAnim over and over
arthit_lockout = 0; // in case a million hitboxes are spammed out all at once
// HFX
artHit_oHitHFX = -1; // put in hit effect to use, if -1 will default to the hitbox that hit
artHit_eHitHFX = -1; // put in hit effect to use, if -1 will default to the hitbox that hit

// Hitpause on Self
artHit_oHitPSelf = true; // causes article to enter hitpause when hit by owner [CHANGE]
arthit_eHitPSelf = true; // causes article to enter hitpause when hit by enemy [CHANGE]

// Hitpause on Attacker
artHit_oHitPAtk = false; // Causes the attacker to enter hitpause when hitting [CHANGE]
artHit_eHitPAtk = false; // Causes the attacker to enter hitpause when hitting [CHANGE]

// Sound When Hit
artHit_oSound = -1; // put in a sound to use, if -1 will default to the hitbox that hit [CHANGE]
artHit_eSound = -1; // put in a sound to use, if -1 will default to the hitbox that hit [CHANGE]
// note that sound must be a sound / asset get to work

// Camera Shake
artHit_oShakeIntensity = 2; // camera shake amount [CHANGE]
artHit_oShakeTime = 2; // camera shake time [CHANGE]
artHit_eShakeIntensity = 2; // camera shake amount [CHANGE]
artHit_eShakeTime = 2; // camera shake time [CHANGE]

// Hitpause when hit
arthit_trueHitpause = -15; // Time where the article will be frozen in place

// Article Launching - after hitpause launch article around
artHit_oLauching = true; // Can the hitbox be launched [CHANGE]
artHit_eLauching = true; // Can the hitbox be launched [CHANGE]
artHit_kbAdjust = 1.1; // Weight Value
artHit_launchFinalKB = 0;
artHit_launchDirection = 0;
artHit_launchAttack = 0; // Attack that hit you (use for special things)
artHit_launchHBNumber = 0; // Hitbox Number of what hit you

// Do grabs on hit (uses the COMMAND GRAB CODE by Wabungus)
artHit_grabbable = true; // Command Grab code connection [CHANGE]
artHit_inGrab = false;
artHit_grabberID = 0; // ID of player doing grab
grabObjectType = 3;
// move the objects center for the grab's detection
grabObjectCenter_x = 0;
grabObjectCenter_y = -20;

// ARTICLE ANIMATION & ATTACK VARIABLES - By Wabungus
artAnim_active = false; // Is an attack occuring?
switch (state) {
    case 1:
        artAnim_image = sprite_get("book");
        despawningTimer = 100;
        break;
    case 2:
        artAnim_image = sprite_get("jacks");
        despawningTimer = 100;
        break;
    case 3:
        artAnim_image = sprite_get("dynamite");
        despawningTimer = 100;
        break;
    default:
        artAnim_image = sprite_get("dynamite");
        despawningTimer = 0;
        break;
}
artAnim_frame = 0; // Frame to draw
artAnim_timer = 0; // timer used for drawing frames
artAnim_window = 0;
artAnim_stickFrame = false; // causes the last frame of the anim to stick
artAnim_interruptible = false; // if the animation can be cancelled out of early
artAnim_spriteDirection = player_id.spr_dir;

// Attack Specific Variables
artAnim_activeHitboxes = ds_list_create(); // Stores all article hitboxes
artAnim_attackhit = false; // will put the article in hitpause when it hits
artAnim_hitpause = 0; // hitpause

// Animation Handling
artAnim_currentAnim = state - 1;
artAnim_newAnim = state - 1;

// ARTICLE DELETION
artDel_activate = false;