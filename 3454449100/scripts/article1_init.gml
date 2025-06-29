//article1_init

//Used for Koopa Troopa's Neutral Special

//Sprite and direction
sprite_index = sprite_get("shell_idle");   
mask_index = sprite_get("shell_hurtbox");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 1;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
exist_timer = 0;                                    //How long the article has existed.

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);


//other vars

// look at top of update file to change these lol
playerBounceRectX1Coord = 0
playerBounceRectX2Coord = 0;
playerBounceRectY1Coord = 0;
playerBounceRectY2Coord = 0;

initialThrownDirection = "idk";
shouldBeDestroyed = false;
baseReboundSpeed = 9;
playerGrabbedShell = false;
playerJumpedOnShellCooldown = 0;

shellWasHitByAttack = false;
hitByOrigOwner = true;
hitbox_hit = player_id;

forwardOnGroundTimer = 0;

shellHitLockout = 0;

whoHitShell = player;
shellOwnedByOrigKoopa = true;
whoParriedShell = noone;
additionalHitHitpause = 0;
shellWasParried = false;

currShellHitbox = noone;
shellHitpause = false;
shellHitpauseAmt = false;
shellHitPlayer = false;

wallBounceCooldown = 0;
wallBounceCooldownMax = 8;
storedHSP = 0;
storedVSP = 0;
timesParried = 0;
wasShellParriedAtAll = false;

canShellBounce = false;

ownedByOriginalKoopaAndReboundedOffOfEnemy = false;
hud_color = get_player_hud_color(player_id.player);

isAKoopaShell = true;

movingButIdleTimer = 0;

exist_timer = 0;
speedValue = 0;
maxSpeed = 0;
outsideOfBlastzones = false;

teamOfOriginalKoopa = player_id.player;
teamOfPlayerWhoHitShell = player_id.player;

wasShellParriedAtAll = false;

vfx_shell_hit_med = hit_fx_create(sprite_get("vfx_shell_hit_med"), 7*4);

/*
with (player_id){
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, vfx_shell_hit_med);
}
*/

Pocketable = false; // yeah