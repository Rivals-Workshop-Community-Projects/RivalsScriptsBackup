/* STAT NOTES
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
*/

// STAT NAME		    VALUE       BASECAST RANGE      NOTES

// Physical size
char_height             = 74;       //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1;		// 0.9  -  1.2

// Ground movement
walk_speed              = 2;		// 3    -  4.5
walk_accel              = 0.2;		// 0.2  -  0.5
walk_turn_time          = 6;		// 6
initial_dash_time       = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		// 4    -  9
dash_speed              = 6.5;		// 5    -  9
dash_turn_time          = 14;		// 8    -  20
dash_turn_accel         = 1.5;		// 0.1  -  2
dash_stop_time          = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		// 0.25 -  0.5
ground_friction         = 0.5;		// 0.3  -  1
moonwalk_accel          = 1.3;		// 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		// 4    -  8
max_jump_hsp            = 6;		// 4    -  8
air_max_speed           = 4;  		// 3    -  7
jump_change             = 3;		// 3
air_accel               = 0.3;		// 0.2  -  0.4
prat_fall_accel         = 0.85;		// 0.25 -  1.5
air_friction            = 0.04;		// 0.02 -  0.07
max_fall                = 9;		// 6    -  11
fast_fall               = 14;		// 11   -  16
gravity_speed           = 0.5;		// 0.3  -  0.6
hitstun_grav            = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time         = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		// 4    -  7.4
djump_speed             = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 6;		// 4    -  7
walljump_vsp            = 8;		// 7    -  10
land_time               = 5;		// 4    -  6
prat_land_time          = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.12;		// 0    -  0.15
wave_land_time          = 8;		// 6    -  12
wave_land_adj           = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		// 9    -  11
roll_backward_max       = 9;		// 9    -  11       always the same as forward
air_dodge_speed         = 7.5;		// 7.5  -  8
techroll_speed          = 10;		// 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.15;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.2;
dash_anim_speed         = 0.3;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 10;
crouch_recovery_frames  = 3;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 16;		// 18   -  32
wall_frames             = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 6;

// Airdodge
air_dodge_startup_frames    = 0;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;
roll_fx = hit_fx_create(sprite_get("roll_fx"), 25);

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 3;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;


// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreenbg1")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

//color stuff
alt_cur = get_player_color(player);
var corr = (!alt_cur? "corr_": "");
set_ui_element(UI_WIN_PORTRAIT, sprite_get(corr + "portrait"));
set_ui_element(UI_WIN_PORTRAIT, sprite_get(corr + "portrait"));
set_ui_element(UI_WIN_SIDEBAR, sprite_get(corr + "result_small"));
set_ui_element(UI_CHARSELECT, sprite_get(corr + "charselect"));
set_ui_element(UI_HUD_ICON, sprite_get(corr + "hud"));
set_ui_element(UI_HUDHURT_ICON, sprite_get(corr + "hud_hurt"));

//sfx change
air_dodge_sound = sound_get("CharSFX_Dash_v1");
jump_sound = sound_get("CharSFX_Jump_v1");
djump_sound = sound_get("CharSFX_Jump_v3");
stop_sfx = 0;

//respawn
respawn_anim = 0;
platpos = [0, 0, 1];

//qi and parry
parry_hit = 0;
qi_stack = 3; //caps at 5
parry_fx = hit_fx_create(sprite_get("unbounded_parry"), 21);
unbound_fx_idx = 0;
unbound_timer = 0;
parryboost = 0;
qianim = [0, 0, 0, 0, 0];
qifrm = [0, 0, 0, 0, 0];
taichi_cooldown = 0;

//dstrong
movepl = [];

//fspecial
grabp = noone;
draw_fx = 0;
fx_shape = hit_fx_create(sprite_get("talishapes"), 60);
fx_explode = hit_fx_create(sprite_get("talisman_explode"), 28);
fspec_charge = 0;
fspec_single_charge = 15;
fspec_fx_pos = [[0, -80], [40, -50], [-40, -50], [20, 0], [-20, 0]];
dashline = hit_fx_create(sprite_get("dashline"), 20);
dash_vfx = noone;
fspecial_dashhit = 0;

//nspecial
circletimer = 0;
bowcharge = hit_fx_create(sprite_get("bowcharge"), 28);

//uspecial
usp_pos = [0, 0];
usp_angle = -30;
mov_angle = 0;
usp_pratcancel = 1;
usp_wallboost = 0;
on_controller = 0;
uspecial_detectbox = noone;

//dspecial
nymph = noone;
nymphcontrol = 0;
is_Yi_ninesols = 1;
nymph_cooldown = 0;
nymphbounce = 3;
nymphgrab = 1;
playtest_active = false;
with (oTestPlayer) playtest_active = true;

//hit fx
hit_slash_small = hit_fx_create(sprite_get("slashhit"), 20);
hit_slash_big = hit_fx_create(sprite_get("bigslashhit"), 24);
hit_bow_big = hit_fx_create(sprite_get("arrowhit"), 20);

//cat hotline
old_idx = 0;
codec_avail = 1;
codec_buffer = 10;
codec_controls = 0;
codec_play = [];
codec_timer = 0;
codec_intro = 0;
codec_yi = 0;
codec_speakername = "";
codec_speakerimg = 0;
codec_static = null;
special_url = null;
missing_codec = [
	msg("yi", 0, 62, "Abacus, do you have information on this opponent?"),
	msg("ruyi", 0, 44, "I regret to inform you Lord Yi, I am unable to retrieve any data or information on this particular contender."),
	msg("kuafu", 1, 22, "No information? That's unusually rare for you."),
	msg("kuafu", 6, 63, "Perhaps your system needs an update."),
	msg("ruyi", 0, 2, "I'll try to gather data as we go, however I fear the battle might already be over by then."),
	msg("yi", 0, 70, "It's fine. I'll try to figure it out myself."),
	msg("ruyi", 0, 33, "Very well, may victory and skill favour you in this battle."),
	msg("kuafu", 0, 45, "Go get them, brother!"),
	msg("shuanshuan", 1, 62, "Good Luck, Yi!")
];
basecast_codec = [];
codec_chars = ["yi", "kuafu", "shuanshuan", "ruyi"];
codex_textspeed = 1;

/*
msg = {
	char: character,
	expr: expression,
	txt: text,
	clip: voiceclip
}
codec_play = [msg, msg, msg, msg];
*/

//hotline compat variables
yi_codec_available = 1;
yi_codec_data = [
	msg("yi", 0, 12, "What the hell’s going on?"),
	msg("kuafu", 3, 20, "What in the...?! That guy looks exactly like Yi!"),
	msg("yi", 0, 54, "This mirror image has every exact move I have, even my Azure bow and my mystic nymph... How is this possible?"),
	msg("shuanshuan", 3, 35, "There are two of Yis? But wait, their colour is different then Yi's colour."),
	msg("shuanshuan", 4, 20, "I mean, our Yi, I mean, oh, I don’t know what’s going on!"),
	msg("ruyi", 0, 0, "This could be a result of the Abyss, or a third party that is producing clones with your DNA, which they somehow obtained."),
	msg("ruyi", 0, 29, "Whoever dares to make impersonations of my lord is unforgivable!"),
	msg("ruyi", 0, 37, "Give me a moment, my lord, I'm gathering every analysis I can!"),
	msg("yi", 0, 65, "No need for that."),
	msg("yi", 0, 1, "If oneself knows oneself, then one must know how to surpass oneself."),
	msg("shuanshuan", 3, 36, "What does that mean, Yi?"),
	msg("yi", 0, 3, "It means if I know myself, then I know how to beat myself. "),
	msg("yi", 0, 4, "For instance, I'm very lightweight, that's a start."),
	msg("yi", 0, 71, "And if this mirror image has the same weaknesses I have, then I'm sure to win."),
	msg("yi", 0, 85, "For the time being, wait until I come back to the Pavilion, and be prepared in case of the worst outcome..."),
	msg("yi", 0, 77, "And do not contact me until I come home."),
	msg("ruyi", 0, 33, "...understood, may victory and triumph favour you, my lord"),
	msg("kuafu", 5, 45, "Get that imposter who dared wear the face of my brother I swore to!"),
	msg("shuanshuan", 1, 122, "I know my real brother can never lose! You can do it, Yi!")
];

yi_voices = ["VO_YiAdult_Emotion_Affirmation_v1", "VO_YiAdult_Emotion_Affirmation_v2", "VO_YiAdult_Emotion_Affirmation_v3", "VO_YiAdult_Emotion_Affirmation_v4", "VO_YiAdult_Emotion_Affirmation_v5", "VO_YiAdult_Emotion_Anger_v1", "VO_YiAdult_Emotion_Anger_v2", "VO_YiAdult_Emotion_Anger_v3", "VO_YiAdult_Emotion_Anger_v4", "VO_YiAdult_Emotion_Anger_v5", "VO_YiAdult_Emotion_Bafflement_v1", "VO_YiAdult_Emotion_Bafflement_v2", "VO_YiAdult_Emotion_Bafflement_v3", "VO_YiAdult_Emotion_Bafflement_v4", "VO_YiAdult_Emotion_Bafflement_v5", "VO_YiAdult_Emotion_Bewilderment_v1", "VO_YiAdult_Emotion_Bewilderment_v2", "VO_YiAdult_Emotion_Bewilderment_v3", "VO_YiAdult_Emotion_Bewilderment_v4", "VO_YiAdult_Emotion_Bewilderment_v5", "VO_YiAdult_Emotion_Blame_v1", "VO_YiAdult_Emotion_Blame_v2", "VO_YiAdult_Emotion_Blame_v3", "VO_YiAdult_Emotion_DisdainHurt_v1", "VO_YiAdult_Emotion_DisdainHurt_v2", "VO_YiAdult_Emotion_DisdainHurt_v3", "VO_YiAdult_Emotion_DisdainHurt_v4", "VO_YiAdult_Emotion_Disdain_v1", "VO_YiAdult_Emotion_Disdain_v2", "VO_YiAdult_Emotion_Disdain_v3", "VO_YiAdult_Emotion_Disdain_v4", "VO_YiAdult_Emotion_Disdain_v5", "VO_YiAdult_Emotion_Disdain_v6", "VO_YiAdult_Emotion_Frustration_v1", "VO_YiAdult_Emotion_Frustration_v2", "VO_YiAdult_Emotion_Frustration_v3", "VO_YiAdult_Emotion_Frustration_v4", "VO_YiAdult_Emotion_Frustration_v5", "VO_YiAdult_Emotion_Irritation_v1", "VO_YiAdult_Emotion_Irritation_v2", "VO_YiAdult_Emotion_Irritation_v3", "VO_YiAdult_Emotion_Muted_v1", "VO_YiAdult_Emotion_Muted_v2", "VO_YiAdult_Emotion_Muted_v3", "VO_YiAdult_Emotion_Sigh_v1", "VO_YiAdult_Emotion_Sigh_v2", "VO_YiAdult_Emotion_Sigh_v3", "VO_YiAdult_Emotion_Sigh_v4", "VO_YiAdult_Emotion_Sigh_v5", "VO_YiAdult_Emotion_Sneer_v1", "VO_YiAdult_Emotion_Sneer_v2", "VO_YiAdult_Emotion_Sneer_v3", "VO_YiAdult_Emotion_Sneer_v4", "VO_YiAdult_Emotion_Struggle_v1", "VO_YiAdult_Emotion_Struggle_v2", "VO_YiAdult_Emotion_Struggle_v3", "VO_YiAdult_Emotion_Summoning_v1", "VO_YiAdult_Emotion_Summoning_v2", "VO_YiAdult_Emotion_Summoning_v3", "VO_YiAdult_Emotion_Summoning_v4", "VO_YiAdult_Emotion_Think_v1", "VO_YiAdult_Emotion_Think_v2", "VO_YiAdult_Emotion_Think_v3", "VO_YiAdult_Emotion_Think_v4", "VO_YiAdult_Phrase_Damnit", "VO_YiAdult_Phrase_Enough", "VO_YiAdult_Phrase_GoodBye_v1", "VO_YiAdult_Phrase_GoodBye_v2", "VO_YiAdult_Phrase_Heng", "VO_YiAdult_Phrase_HengYouThere", "VO_YiAdult_Phrase_IGetIt", "VO_YiAdult_Phrase_IPromise", "VO_YiAdult_Phrase_ItsEnough", "VO_YiAdult_Phrase_NeverForget", "VO_YiAdult_Phrase_No_v1", "VO_YiAdult_Phrase_No_v2", "VO_YiAdult_Phrase_No_v3", "VO_YiAdult_Phrase_SeeYou_v1", "VO_YiAdult_Phrase_SeeYou_v2", "VO_YiAdult_Phrase_SeeYou_v3", "VO_YiAdult_Phrase_SeeYou_v4", "VO_YiAdult_Phrase_SorryIMissYou", "VO_YiAdult_Phrase_Sorry_v1", "VO_YiAdult_Phrase_Sorry_v2", "VO_YiAdult_Phrase_WaitMe_v1", "VO_YiAdult_Phrase_WaitMe_v2", "VO_YiAdult_Phrase_WhatHappened", "VO_YiAdult_Phrase_Why"];
ruyi_voices = ["VO_Abacus_Emotion_Affirmation", "VO_Abacus_Emotion_Astonishment", "VO_Abacus_Emotion_Dilemma", "VO_Abacus_Emotion_Doubt", "VO_Abacus_Emotion_Panic", "VO_Abacus_Emotion_Perplexity", "VO_Abacus_Emotion_Questioning", "VO_Abacus_Emotion_Tension", "VO_Abacus_Emotion_Unease", "VO_Abacus_Phrase_Affirmative_v1", "VO_Abacus_Phrase_Affirmative_v2", "VO_Abacus_Phrase_Affirmative_v3", "VO_Abacus_Phrase_Appreciate", "VO_Abacus_Phrase_BeCareful", "VO_Abacus_Phrase_Complete", "VO_Abacus_Phrase_DreamScape", "VO_Abacus_Phrase_GotWhatIWanted", "VO_Abacus_Phrase_KuafuMaster", "VO_Abacus_Phrase_Malfunction_v1", "VO_Abacus_Phrase_Malfunction_v2", "VO_Abacus_Phrase_Malfunction_v3", "VO_Abacus_Phrase_Malfunction_v4", "VO_Abacus_Phrase_Malfunction_v5", "VO_Abacus_Phrase_MasterHype_v1", "VO_Abacus_Phrase_MasterHype_v2", "VO_Abacus_Phrase_MasterHype_v3", "VO_Abacus_Phrase_MasterHype_v4", "VO_Abacus_Phrase_MasterHype_v5", "VO_Abacus_Phrase_Master_v1", "VO_Abacus_Phrase_Master_v2", "VO_Abacus_Phrase_Master_v3", "VO_Abacus_Phrase_Master_v4", "VO_Abacus_Phrase_Master_v5", "VO_Abacus_Phrase_MayLuckBeWith", "VO_Abacus_Phrase_MovieName", "VO_Abacus_Phrase_Report_v1", "VO_Abacus_Phrase_Report_v2", "VO_Abacus_Phrase_Report_v3", "VO_Abacus_Phrase_Report_v4", "VO_Abacus_Phrase_Report_v5", "VO_Abacus_Phrase_SomethingWrong", "VO_Abacus_Phrase_Sorry", "VO_Abacus_Phrase_Warning_v1", "VO_Abacus_Phrase_Warning_v2", "VO_Abacus_Phrase_YourHighness"];
kuafu_voices = ["VO_KuaFu_Emotion_Anger_v1", "VO_KuaFu_Emotion_Anger_v2", "VO_KuaFu_Emotion_Anger_v3", "VO_KuaFu_Emotion_Anger_v4", "VO_KuaFu_Emotion_Anger_v5", "VO_KuaFu_Emotion_Anger_v6", "VO_KuaFu_Emotion_Astonishment_v1", "VO_KuaFu_Emotion_Astonishment_v2", "VO_KuaFu_Emotion_Astonishment_v3", "VO_KuaFu_Emotion_Astonishment_v4", "VO_KuaFu_Emotion_Astonishment_v5", "VO_KuaFu_Emotion_Blame_v1", "VO_KuaFu_Emotion_Blame_v2", "VO_KuaFu_Emotion_Blame_v3", "VO_KuaFu_Emotion_Calling_v1", "VO_KuaFu_Emotion_Calling_v2", "VO_KuaFu_Emotion_Calling_v3", "VO_KuaFu_Emotion_Calling_v4", "VO_KuaFu_Emotion_Calling_v5", "VO_KuaFu_Emotion_Confusion_v1", "VO_KuaFu_Emotion_Confusion_v2", "VO_KuaFu_Emotion_Confusion_v3", "VO_KuaFu_Emotion_Confusion_v4", "VO_KuaFu_Emotion_Confusion_v5", "VO_KuaFu_Emotion_Contemplation_v1", "VO_KuaFu_Emotion_Contemplation_v2", "VO_KuaFu_Emotion_Contemplation_v3", "VO_KuaFu_Emotion_Contemplation_v4", "VO_KuaFu_Emotion_Dejection_v1", "VO_KuaFu_Emotion_Dejection_v2", "VO_KuaFu_Emotion_Dejection_v3", "VO_KuaFu_Emotion_Dejection_v4", "VO_KuaFu_Emotion_Dejection_v5", "VO_KuaFu_Emotion_Disdain_v1", "VO_KuaFu_Emotion_Disdain_v2", "VO_KuaFu_Emotion_Disdain_v3", "VO_KuaFu_Emotion_Disdain_v4", "VO_KuaFu_Emotion_Disdain_v5", "VO_KuaFu_Emotion_Disdain_v6", "VO_KuaFu_Emotion_Disdain_v7", "VO_KuaFu_Emotion_Excitement_v1", "VO_KuaFu_Emotion_Excitement_v2", "VO_KuaFu_Emotion_Excitement_v3", "VO_KuaFu_Emotion_Excitement_v4", "VO_KuaFu_Emotion_Exclamation_v1", "VO_KuaFu_Emotion_Exclamation_v2", "VO_KuaFu_Emotion_Exclamation_v3", "VO_KuaFu_Emotion_Exclamation_v4", "VO_KuaFu_Emotion_Exclamation_v5", "VO_KuaFu_Emotion_Happiness_v1", "VO_KuaFu_Emotion_Happiness_v2", "VO_KuaFu_Emotion_Happiness_v3", "VO_KuaFu_Emotion_Happiness_v4", "VO_KuaFu_Emotion_Happiness_v5", "VO_KuaFu_Emotion_Impatience_v1", "VO_KuaFu_Emotion_Impatience_v2", "VO_KuaFu_Emotion_Impatience_v3", "VO_KuaFu_Emotion_Impatience_v4", "VO_KuaFu_Emotion_Joy_v1", "VO_KuaFu_Emotion_Joy_v2", "VO_KuaFu_Emotion_Joy_v3", "VO_KuaFu_Emotion_Perplexity_v1", "VO_KuaFu_Emotion_Perplexity_v2", "VO_KuaFu_Emotion_Perplexity_v3", "VO_KuaFu_Emotion_Perplexity_v4", "VO_KuaFu_Emotion_Perplexity_v5", "VO_KuaFu_Emotion_Questioning_v1", "VO_KuaFu_Emotion_Questioning_v2", "VO_KuaFu_Emotion_Questioning_v3", "VO_KuaFu_Emotion_Questioning_v4", "VO_KuaFu_Emotion_Questioning_v5", "VO_KuaFu_Emotion_Surprise_v1", "VO_KuaFu_Emotion_Surprise_v2", "VO_KuaFu_Emotion_Surprise_v3", "VO_KuaFu_Emotion_Surprise_v4", "VO_KuaFu_Emotion_Surprise_v5", "VO_KuaFu_Phrase_AhSuchHassle", "VO_KuaFu_Phrase_AllICanSay", "VO_KuaFu_Phrase_Apeman", "VO_KuaFu_Phrase_AreYouSerious_v1", "VO_KuaFu_Phrase_AreYouSerious_v2", "VO_KuaFu_Phrase_AreYouSerious_v3", "VO_KuaFu_Phrase_AreYouSerious_v4", "VO_KuaFu_Phrase_Bro", "VO_KuaFu_Phrase_ButPerhaps", "VO_KuaFu_Phrase_Done_v1", "VO_KuaFu_Phrase_Done_v2", "VO_KuaFu_Phrase_Done_v3", "VO_KuaFu_Phrase_Eh_v1", "VO_KuaFu_Phrase_Eh_v2", "VO_KuaFu_Phrase_Eh_v3", "VO_KuaFu_Phrase_Eh_v4", "VO_KuaFu_Phrase_ForgetIt", "VO_KuaFu_Phrase_GoodbyeBro_v1", "VO_KuaFu_Phrase_GoodbyeBro_v2", "VO_KuaFu_Phrase_GoodbyeBro_v3", "VO_KuaFu_Phrase_HaveNightmare", "VO_KuaFu_Phrase_IGuess", "VO_KuaFu_Phrase_ISwear", "VO_KuaFu_Phrase_Ithought", "VO_KuaFu_Phrase_KunlunHammer", "VO_KuaFu_Phrase_Listen_v1", "VO_KuaFu_Phrase_Listen_v2", "VO_KuaFu_Phrase_MaySunBeWithUs", "VO_KuaFu_Phrase_No", "VO_KuaFu_Phrase_NoSuchThing", "VO_KuaFu_Phrase_Noway", "VO_KuaFu_Phrase_ReturnHome", "VO_KuaFu_Phrase_ShutUp", "VO_KuaFu_Phrase_Sorry", "VO_KuaFu_Phrase_SuchHassle_v1", "VO_KuaFu_Phrase_SuchHassle_v2", "VO_KuaFu_Phrase_SuchHassle_v3", "VO_KuaFu_Phrase_SuchHassle_v4", "VO_KuaFu_Phrase_TheSeal", "VO_KuaFu_Phrase_What_v1", "VO_KuaFu_Phrase_What_v2", "VO_KuaFu_Phrase_Why", "VO_KuaFu_Phrase_YiListen", "VO_KuaFu_Phrase_YiNo", "VO_KuaFu_Phrase_YiReally", "VO_KuaFu_Phrase_YiSad", "VO_KuaFu_Phrase_Yi_v1", "VO_KuaFu_Phrase_Yi_v2", "VO_KuaFu_Phrase_YouHearMe"];
shuanshuan_voices = ["VO_Shuan_Emotion_Admiration_v1", "VO_Shuan_Emotion_Admiration_v2", "VO_Shuan_Emotion_Admiration_v3", "VO_Shuan_Emotion_Admiration_v4", "VO_Shuan_Emotion_Admiration_v5", "VO_Shuan_Emotion_Amazement_v1", "VO_Shuan_Emotion_Amazement_v2", "VO_Shuan_Emotion_Amazement_v3", "VO_Shuan_Emotion_Amazement_v4", "VO_Shuan_Emotion_Anxiety_v1", "VO_Shuan_Emotion_Anxiety_v2", "VO_Shuan_Emotion_Anxiety_v3", "VO_Shuan_Emotion_Anxiety_v4", "VO_Shuan_Emotion_Anxiety_v5", "VO_Shuan_Emotion_Astonishment_v1", "VO_Shuan_Emotion_Astonishment_v2", "VO_Shuan_Emotion_Astonishment_v3", "VO_Shuan_Emotion_Astonishment_v4", "VO_Shuan_Emotion_Astonishment_v5", "VO_Shuan_Emotion_Awkwardness_v1", "VO_Shuan_Emotion_Awkwardness_v2", "VO_Shuan_Emotion_Awkwardness_v3", "VO_Shuan_Emotion_Awkwardness_v4", "VO_Shuan_Emotion_Awkwardness_v5", "VO_Shuan_Emotion_Certainty_v1", "VO_Shuan_Emotion_Certainty_v2", "VO_Shuan_Emotion_Certainty_v3", "VO_Shuan_Emotion_Certainty_v4", "VO_Shuan_Emotion_Certainty_v5", "VO_Shuan_Emotion_Confidence_v1", "VO_Shuan_Emotion_Confidence_v2", "VO_Shuan_Emotion_Confidence_v3", "VO_Shuan_Emotion_Confidence_v4", "VO_Shuan_Emotion_Confidence_v5", "VO_Shuan_Emotion_Confusion_v1", "VO_Shuan_Emotion_Confusion_v2", "VO_Shuan_Emotion_Confusion_v3", "VO_Shuan_Emotion_Confusion_v4", "VO_Shuan_Emotion_Confusion_v5", "VO_Shuan_Emotion_Confusion_v6", "VO_Shuan_Emotion_Defiance_v1", "VO_Shuan_Emotion_Defiance_v2", "VO_Shuan_Emotion_Defiance_v3", "VO_Shuan_Emotion_Defiance_v4", "VO_Shuan_Emotion_Dizziness_v1", "VO_Shuan_Emotion_Dizziness_v2", "VO_Shuan_Emotion_Dizziness_v3", "VO_Shuan_Emotion_Dizziness_v4", "VO_Shuan_Emotion_Dizziness_v5", "VO_Shuan_Emotion_DryLaugh_v1", "VO_Shuan_Emotion_DryLaugh_v2", "VO_Shuan_Emotion_DryLaugh_v3", "VO_Shuan_Emotion_Fear_v1", "VO_Shuan_Emotion_Fear_v2", "VO_Shuan_Emotion_Fear_v3", "VO_Shuan_Emotion_Fear_v4", "VO_Shuan_Emotion_Grief_v1", "VO_Shuan_Emotion_Grief_v2", "VO_Shuan_Emotion_Grief_v3", "VO_Shuan_Emotion_Grief_v4", "VO_Shuan_Emotion_Grief_v5", "VO_Shuan_Emotion_Happy_v1", "VO_Shuan_Emotion_Happy_v2", "VO_Shuan_Emotion_Happy_v3", "VO_Shuan_Emotion_Happy_v4", "VO_Shuan_Emotion_Happy_v5", "VO_Shuan_Emotion_Helplessness_v1", "VO_Shuan_Emotion_Helplessness_v2", "VO_Shuan_Emotion_Helplessness_v3", "VO_Shuan_Emotion_Helplessness_v4", "VO_Shuan_Emotion_Helplessness_v5", "VO_Shuan_Emotion_Hesitation_v1", "VO_Shuan_Emotion_Hesitation_v2", "VO_Shuan_Emotion_Hesitation_v3", "VO_Shuan_Emotion_Hesitation_v4", "VO_Shuan_Emotion_Indecision_v1", "VO_Shuan_Emotion_Indecision_v2", "VO_Shuan_Emotion_Indecision_v3", "VO_Shuan_Emotion_Indecision_v4", "VO_Shuan_Emotion_Indecision_v5", "VO_Shuan_Emotion_Panic_v1", "VO_Shuan_Emotion_Panic_v2", "VO_Shuan_Emotion_Panic_v3", "VO_Shuan_Emotion_Perplexity_v1", "VO_Shuan_Emotion_Perplexity_v2", "VO_Shuan_Emotion_Perplexity_v3", "VO_Shuan_Emotion_Perplexity_v4", "VO_Shuan_Emotion_Perplexity_v5", "VO_Shuan_Emotion_Perplexity_v6", "VO_Shuan_Emotion_Playfulness_v1", "VO_Shuan_Emotion_Playfulness_v2", "VO_Shuan_Emotion_Playfulness_v3", "VO_Shuan_Emotion_Playfulness_v4", "VO_Shuan_Emotion_Playfulness_v5", "VO_Shuan_Emotion_Protest_v1", "VO_Shuan_Emotion_Protest_v2", "VO_Shuan_Emotion_Protest_v3", "VO_Shuan_Emotion_Protest_v4", "VO_Shuan_Emotion_Protest_v5", "VO_Shuan_Emotion_Sadness_v1", "VO_Shuan_Emotion_Sadness_v2", "VO_Shuan_Emotion_Sadness_v3", "VO_Shuan_Emotion_Sadness_v4", "VO_Shuan_Emotion_Surprise_v1", "VO_Shuan_Emotion_Surprise_v2", "VO_Shuan_Emotion_Surprise_v3", "VO_Shuan_Emotion_Surprise_v4", "VO_Shuan_Emotion_Surprise_v5", "VO_Shuan_Emotion_Surprise_v6", "VO_Shuan_Emotion_Terror_v1", "VO_Shuan_Emotion_Terror_v2", "VO_Shuan_Emotion_Terror_v3", "VO_Shuan_Emotion_Terror_v4", "VO_Shuan_Emotion_Terror_v5", "VO_Shuan_Phrase_Abacus", "VO_Shuan_Phrase_AMeal", "VO_Shuan_Phrase_AtLeastYouHere", "VO_Shuan_Phrase_BigBroCall_v1", "VO_Shuan_Phrase_BigBroCall_v2", "VO_Shuan_Phrase_BigBroCall_v3", "VO_Shuan_Phrase_BigBroCall_v4", "VO_Shuan_Phrase_BigBroCall_v5", "VO_Shuan_Phrase_BigBroCheerUp", "VO_Shuan_Phrase_BigBroNervous_v1", "VO_Shuan_Phrase_BigBroNervous_v2", "VO_Shuan_Phrase_BigBroNo", "VO_Shuan_Phrase_BigBroQuestion_v1", "VO_Shuan_Phrase_BigBroQuestion_v2", "VO_Shuan_Phrase_BigBroWait_v1", "VO_Shuan_Phrase_BigBroWait_v2", "VO_Shuan_Phrase_BigBroWhy_v1", "VO_Shuan_Phrase_BigBroWhy_v2", "VO_Shuan_Phrase_BigBroYouAlright", "VO_Shuan_Phrase_Cheater", "VO_Shuan_Phrase_DinnerTonight", "VO_Shuan_Phrase_Done_v1", "VO_Shuan_Phrase_Done_v2", "VO_Shuan_Phrase_DontGo", "VO_Shuan_Phrase_DoYouKnow_v1", "VO_Shuan_Phrase_DoYouKnow_v2", "VO_Shuan_Phrase_Fine_v1", "VO_Shuan_Phrase_Fine_v2", "VO_Shuan_Phrase_ForReal_v1", "VO_Shuan_Phrase_ForReal_v2", "VO_Shuan_Phrase_HalfBelieve", "VO_Shuan_Phrase_IGotIt", "VO_Shuan_Phrase_IHaveNothingLeft", "VO_Shuan_Phrase_IKnow_v1", "VO_Shuan_Phrase_IKnow_v2", "VO_Shuan_Phrase_IWont", "VO_Shuan_Phrase_KunlunSaint", "VO_Shuan_Phrase_NoIWont", "VO_Shuan_Phrase_NoNo_v1", "VO_Shuan_Phrase_NoNo_v2", "VO_Shuan_Phrase_NotFair", "VO_Shuan_Phrase_No_v1", "VO_Shuan_Phrase_No_v2", "VO_Shuan_Phrase_NullNymph", "VO_Shuan_Phrase_OK_v1", "VO_Shuan_Phrase_OK_v2", "VO_Shuan_Phrase_SeeYou", "VO_Shuan_Phrase_Thanks_v1", "VO_Shuan_Phrase_Thanks_v2", "VO_Shuan_Phrase_ThankYou", "VO_Shuan_Phrase_WeTogether_v1", "VO_Shuan_Phrase_WeTogether_v2", "VO_Shuan_Phrase_Why", "VO_Shuan_Phrase_WhyCried_v1", "VO_Shuan_Phrase_WhyCried_v2", "VO_Shuan_Phrase_Wonderful_v1", "VO_Shuan_Phrase_Wonderful_v2", "VO_Shuan_Phrase_Wrong", "VO_Shuan_Phrase_YouBack", "VO_Shuan_Phrase_YouLied"];



#define msg(character, expression, voiceclip, text)
return {
	char: character,
	expr: expression,
	txt: text,
	clip: voiceclip
}