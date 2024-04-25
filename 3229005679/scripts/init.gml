// STAT NAME		    VALUE                   BASECAST RANGE      NOTES

// Physical size
char_height             = 38;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1.1;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3.25;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 9;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 4;		            // 4    -  9
dash_speed              = 6.5;		            // 5    -  9
dash_turn_time          = 12;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.5;		            // 0.25 -  0.5
ground_friction         = 0.5;		            // 0.3  -  1
moonwalk_accel          = 1.2;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 6;		            // 4    -  8
air_max_speed           = 4;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 1;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 13;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = 9;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 6;		            // 4    -  7
walljump_vsp            = 9;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 15;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.12;		            // 0    -  0.15
wave_land_time          = 11;		            // 6    -  12
wave_land_adj           = 1.3;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9 + (has_rune("D") * 4.5);		            // 7    -  11
roll_backward_max       = 9 + (has_rune("D") * 4.5);		            // 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.18;
crouch_anim_speed       = 0.15;
walk_anim_speed         = 0.3;
dash_anim_speed         = 0.4;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 9;
crouch_recovery_frames  = 2;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 26;		// 18   -  32
can_wall_cling          = false;    // lets the character cling onto walls, you can use [clinging] to check when the character is currently clinging
wall_frames             = 0;		// amount of animation frames to play while clinging, spread accross 60 frames// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;


// Hurtbox sprites
hurtbox_spr         = sprite_get("vigilante_hurt");//asset_get("ferret_hurtbox");
crouchbox_spr       = asset_get("orca_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("calzonification_end")); 

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_orc"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");
dashing_sfx = noone
// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 1

wait_time = 180;                      // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 70;                    // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait0");   // handled elsewhere



//////////////////////////////////////////////////////// CUSTOM VARIABLES ////////////////////////////////////////////////////////


//custom intro
AG_MUNO_ATTACK_EXCLUDE = 80; //this is used to exclude the intro attack from the framedata woodcock buddy, letting you see the stats of the character instead


bear_uspecial = true
vigiParryRNG = 0;
tauntRNG = 0;
prev_hsp = 0;
if (get_player_color(player) == 1){
    hasAltCloth = 1
} else {
    hasAltCloth = 0;
}

vigiGhost = noone;
ghostSound = sound_get("ghostambient2");

vigiWeenie = noone;
weenieSound = sound_get("galloping2");


vigiCow = noone;
vigiCowTargetX = 0;
vigiCowTargetY = 0;

afterimage_array = 0;
//afterimage_colour = 0;

vigiCheese = noone;
vigiDynamite = noone;
vigiDstrongType = 0;

cheeseBulletEnd = hit_fx_create(sprite_get("cheeseBulletEnd"), 8);
ghostHit = hit_fx_create(sprite_get("johnHitParticles"), 18);
ghostCloud = hit_fx_create(sprite_get("johnDeathParticles"), 18);
targetBreak = hit_fx_create(sprite_get("targetBreak"), 44);
uairExplosion = hit_fx_create(sprite_get("uairExplosion"), 28);
bairDestroy = hit_fx_create(sprite_get("bairProjDestroy"), 30);
dynamiteBoomGround = hit_fx_create(sprite_get("dynamiteExplosionGround"), 28);
rocketBoomGround = hit_fx_create(sprite_get("rocketExplosionGround"), 28);
crateExplosion = hit_fx_create(sprite_get("explosion2"), 27); // 30
plankFlying = hit_fx_create(sprite_get("plank"), 60);
stompVFX = hit_fx_create(sprite_get("stompVFX"), 24);
bandanaFall = hit_fx_create(sprite_get("outlaw_bandana"), 20);

fakeEmpty = hit_fx_create(sprite_get("emptypixel"), 1);

vigiStep = sound_get("vigistep2");


//Compat and Alts
miiverse_post = sprite_get("miiverse");
sonic_rainbowring_atk = 46;



//Image Mask
start_predraw = true;
switch (get_player_color(player)){

    case 1:

        wait_time = 0;
        set_ui_element(UI_HUD_ICON, sprite_get("hud_outlaw"));

    break;

    case 27:

        wait_time = 0;
        set_player_stocks(player, 1);
        set_ui_element(UI_HUD_ICON, sprite_get("hud_blank"));
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_blank"));
        set_ui_element(UI_CHARSELECT, sprite_get("charselect_blank"));

    break;

    default:

        set_ui_element(UI_HUD_ICON, sprite_get("hud"));
        
    break;

}
