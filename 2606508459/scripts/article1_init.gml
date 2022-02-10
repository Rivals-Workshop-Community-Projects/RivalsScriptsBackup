//article1_init

init = 0;
even = 0;

timer = 0;
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

//====> DIP SWITCHES ###########################################
ds_showParticles = true; //Show the particle effects

//====> CONSTANTS ###########################################
//Movement
c_changeFactorX = 0.1;
c_changeFactorY = 0.1;
//c_changeFactorX = 0.07;
//c_changeFactorY = 0.07;
c_antiGravity_s = 0; //0.3;
c_antiGravity_f = 2;
c_direction = 1;

//Information
c_id = 1;
c_mode = 0; //0 = Electric, 1 = Fire
c_owner = noone;

//Properties
c_sprite = "";
c_hitFX = 0;
c_vanishFX = 0;
c_img_spd = 0;              //HG_PROJECTILE_ANIM_SPEED
c_HBdamage = 0;             //HG_DAMAGE
c_HBkb_angle = 0;           //HG_ANGLE
c_HBkb_value = 0;           //HG_BASE_KNOCKBACK
c_HBkb_scale = 0;           //HG_KNOCKBACK_SCALING
c_HBhitpause = 0;           //HG_BASE_HITPAUSE
c_HBeffect = 0;             //HG_EFFECT
c_HBsound_effect = noone    //HG_HIT_SFX
c_HBStartup = 0;            //How many frames until the hit box activates
c_HBPostHitCool = 0;        //Post Hit Cooldown (custom property)
c_HBRepositionDist = 0;     //Reposition Distance (custom property)
c_HBVRepositionDist = 0;    //Vertical Reposition Distance (custom property)
c_HBLifespan = 0;           //Make the spheres lower one level after this amount of frames, or not at all if the value is 0
c_strongMod = [2, 3, 1, 5];

c_callRadius = 0;
c_sclr_hold = 60;

//Hitbox Position
/*
c_xOff_A = [-3, -4, -5, -10];
c_yOff_A = [-3, -6, -10, -10];
c_xOff_B = [-2, 0, 0, 0];
c_yOff_B = [-5, -8, -10, -20];
*/

//Hitbox State
c_movementCool = 10;        //How many frames the article waits before registering another hit by the player
c_repositionCool = 15;      //How many frames the article waits before registering another external hit that repositions it
c_reduceChargeNSCool = 20;  //How many frames between calling Side Special and reducing the charge by one
c_flipperChangeCool = 40;   //How many frames between calling Side Special and updating the angle flipper

//Trap Properties
c_trapCool = 0;         //Trap mechanic base duration (if enabled)
c_trapCoolMax = 0;      //Trap mechanic max duration (when at the highest possible percent)
c_trapCapPer = 0;       //The percentage at which c_trapCoolMax is reached
c_trapXOffset = 0;
c_trapYOffset = -5;

//Juice
fx_shine_on = true;
fx_shine_duration = 12;
fx_shine = [
    hit_fx_create( sprite_get("ball_shine_1"), fx_shine_duration ),
    hit_fx_create( sprite_get("ball_shine_2"), fx_shine_duration ),
    hit_fx_create( sprite_get("ball_shine_3"), fx_shine_duration ),
    hit_fx_create( sprite_get("ball_shine_4"), fx_shine_duration )
];

sclr_change = .01
sclr_min = 0
sclr_max = .4
sclr_timer = sclr_min
_sclr_hold = 0

fx_ballBounce_duration = 30;
fx_ballBounce = hit_fx_create( sprite_get("ballBounce"), fx_ballBounce_duration );
fx_ballBounce_x = 0;
fx_ballBounce_y = 20;
fx_ballBlast = hit_fx_create( sprite_get("ballBlast"), fx_ballBounce_duration );
fx_ballBlast_up = hit_fx_create( sprite_get("ballBlast_up"), fx_ballBounce_duration );
fx_ballBlast_down = hit_fx_create( sprite_get("ballBlast_down"), fx_ballBounce_duration );
fx_ballLeft = hit_fx_create( sprite_get( "ballLeft" ), 24 );

c_fx_ballSquish_frames = 8;
_fx_ballSquish_frames = 0;
pf_squish = 0;

/*
spr_dust = sprite_get("ball_dust");
spr_dustOL = sprite_get("ball_dust_ol");
arr_particles_init = [
    [40, 80, -50, 20, 2],
    [40, 80, -50, 20, 2],
    [40, 80, -50, 20, 1],
    [40, 80, -50, 20, 1],
    [40, 80, -50, 20, 0],
    [40, 80, -50, 20, 0],
];
arr_particles_scatter = [
    [-20, 20, -20, 20],
    [-20, 20, -20, 20],
    [-20, 20, -20, 20],
    [-20, 20, -20, 20],
    [-20, 20, -20, 20],
    [-20, 20, -20, 20]
];
*/

c_fxCool = 5;
c_parCool = 40;
c_shine_f = 2;

//====> VARIABLES ###########################################
//Movement
_targetX = 0;
_targetY = 0;
_antiGravity_f = c_antiGravity_f;
_consUnfreeF = 0;
_freeTimer = 0;
flag_freeTimer = false;
pf_x = 0;
pf_y = [0, 0, 0, 0, 0];
_ballHitpause = false;
_parryMode = false;

//Hitbox State
_hit = 0;
_charge = 0;
_currHB = noone;
_movementCool = 0;
_postHitCool = 0;               //Minimum value is not 0, is -1, which signifies a stage where the projectile must be destroyed
_postHitCoolMax = 0;            //The value assigned to _postHitCool to restart it, used for the scatter effect
_repositionCool = 0;
_repositionCause = noone;       //The hitbox object that caused the article to be repositioned
_HBDestroyedByTimer = false;    //To control whenever the hitbox stopped existing due to timing out (true) instead of being destroyed (false)
_reduceChargeNSCool = 0;
_reduceChargeNSFlag = false;    //True means that when _reduceChargeNSCool hits zero the charge will be reduced
_flipperChangeCool = 0;
_lifetime = 0;
_explode = false;
_inRange = false;

//Trap
_trap = noone;
_trapCool = 0;
a_trapX = noone;
a_trapY = noone;
_trapX = 0;
_trapY = 0;

//Juice
_fxCool = 0;
_parCool = 0;
_shine_f = 0;
_offscreen = false;
_offscreenId = 0;
_offscreenX = 0;
_offscreenY = 0;

//Flags
flag_destroy = false;           //Allowing the articles to destroy themselves is pretty buggy so this is just so update can delete them instead

//arr_particles_pos = [];
//arr_particles_tar = [];

//END