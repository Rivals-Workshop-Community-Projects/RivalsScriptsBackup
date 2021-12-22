//article1_init

// Animation

sprite_index = sprite_get("cannonballair");
image_index = 0;  
new_sprite = sprite_get("cannonballair"); 
animation_type = 0;
anim_timer = 0;
anim_type = 0;
uses_shader = true;

// Stats

//can_be_grounded = false;
ignores_walls = true;

cannonball_WallHsp = 0;
cannonball_FloorVsp = 0;
cannonball_WallBounced = false;
cannonball_HspStore = hsp;
cannonball_VspStore = vsp;
cannonball_HitDelaying = 0;

// Speed Up 

cannonball_speedup = false;
cannonball_speeduptimer = 0;
cannonball_didspeedup = false;

// Hitting Player Stuff

cannoball_BonkLD = 0;
cannonball_NoBonkTime = 0;
cannonball_BonkHsp = 0; // Hsp Storage for Bonk
cannonball_BonkVsp = 0;

// Getting Hit Varaibles

cannonball_KB = 0;
cannonball_LD = 0;
cannonball_HitboxATK = 0; // Gets the attack so that certain moves can have differing launch power
cannonball_xAttacker = 0;
cannonball_yAttacker = 0;
cannonball_HspAttacker = 0;
cannonball_VspAttacker = 0;

cannonball_Agro = false; // Can hurt Cann
cannonball_EnemyID = 0;
cannonball_EnemyNumber = 0;

cannonball_ShakeTime = 0;

cannonball_WasHit = false;
cannonball_CannotHit = false;
cannonball_Burned = false;

cannonball_HitBlockout = 0;
cannonball_HitboxChecker[0] = 0; // Info of last hitbox to hit it

// Become Burning Variables

cannonball_BurnCounter = 4; // How many hits / touching ground are left before it becomes explosive
cannonball_BurningForm = false; // If true will explode on next hit
cannoball_BurnStartFX = false; // Set to true when the effects of becoming burned have occured
cannoball_BurnStartFXtimer = 0;
cannoball_BurnStartFXFrame = 0; // Frame of the explosion anim
cannoball_BurnStartFXSound = false; // If sound was played

cannonball_GrabbedByCannUSpc = 0; // If grabbed by Cann's USpecial
cannonball_GoThuPlatTimer = 0;
cannonball_GoThuPlatCheck = false; // Set to true if it was attempted to put the cannonball through a platform

cannonball_GrabbedByCannFSpc = 0; // If grabbed by Cann's FSpecial
cannonball_GrabbedFSpcInvis = false; // If true the cannonball becomes invisible

cannonball_GrabbedByCannDSpc = 0;
cannonball_LastOppHitID = 0;
cannonball_LastOppHitX = 0; // Stores position of last opponent to hit the ball
cannonball_LastOppHitY = 0;
cannonball_LastOppHitLD = 0;

cannonball_FinalDir = 1; // If 1: Right | If 2: Left

// Opponent Hit Form

cannonball_OppHit = false; // If true, the cannonball will have an outline and be able to hit Cann until it lands next
cannonball_NoHitPlayer = 0; // If greater than 0, will not hit opponents

// Variables

if (spr_dir = 1 && hsp > 0) {
	hsp = player_id.CannNSpecialHsp + player_id.hsp;
} else if (spr_dir = -1 && hsp < 0) {
	hsp = player_id.CannNSpecialHsp + player_id.hsp;
} else {
	hsp = player_id.CannNSpecialHsp;
}
vsp = player_id.CannNSpecialVsp;

cannonball_enemy_id = 0;
cannonball_enemy_idX = 0;
cannonball_enemy_idY = 0;

cannonball_dir = player_id.spr_dir;

// States

state = 0;
state_timer = 0;
