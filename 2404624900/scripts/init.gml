hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 55;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .15;

walk_speed = 2.5;
walk_accel = 0.3;
walk_turn_time = 4;
initial_dash_time = 12;
initial_dash_speed = 6;
dash_speed = 6.5;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 2;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 9; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 38; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 13;
walljump_time = 12;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

can_wall_cling = true;



introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked 
//by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;


toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 5;

childsupport = 1;

gfzsignspr = sprite_get("sign_ryu");



// Make these clear the buffer of the inputs that you use for costume changing during the intro. This prevents costume switching when restarting a game if either input is mapped to A. [Edit optional]
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_JUMP_PRESSED);

trummelcodecneeded = false;
trummelcodec_id = noone;

kirbyability = 16;
swallowed = 0;

izuna = 0;
grabbedid = noone;
counter = false;

ryu_moving = 0;

i_died = false;

djump = 1;

orb_alive = false;
counter_x = 0;
counter_y = 0;
counter_dir = 0;
charge_cont = 0;
fstrong_dis = 0;
ustrong_dis = 0;
dstrong_dis = 0;
strong_max = false;
strong_max_cont = 0;
clone_was = false;
max_reach = false;

shadow_clone = noone;

proj_tap = 0;

wily_robotmaster_img = sprite_get("hayabusa_robotmaster");

//clone_indicator = false;
//clone_timer = 0;
//clone_timer_hud = 0;
//clone_action = 0;
clone_died = false;
clone_alive = false;
clone_counter = false;
clone_proj = false;
clone_izuna = false;
{
clone_action1 = 0;
clone_action2 = 0;
clone_action3 = 0;
clone_action4 = 0;
clone_action5 = 0;
clone_action6 = 0;
clone_action7 = 0;
clone_action8 = 0;
clone_action9 = 0;
clone_action10 = 0;
clone_action11 = 0;
clone_action12 = 0;
clone_action13 = 0;
clone_action14 = 0;
clone_action15 = 0;
clone_action16 = 0;
clone_action17 = 0;
clone_action18 = 0;
clone_action19 = 0;
clone_action20 = 0;
clone_action21 = 0;
clone_action22 = 0;
clone_action23 = 0;
clone_action24 = 0;
clone_action25 = 0;
clone_action26 = 0;
clone_action27 = 0;
clone_action28 = 0;
clone_action29 = 0;
clone_action30 = 0;
clone_action31 = 0;
clone_action32 = 0;
clone_action33 = 0;
clone_action34 = 0;
clone_action35 = 0;
clone_action36 = 0;
clone_action37 = 0;
clone_action38 = 0;
clone_action39 = 0;
clone_action40 = 0;
clone_action41 = 0;
clone_action42 = 0;
clone_action43 = 0;
clone_action44 = 0;
clone_action45 = 0;
clone_action46 = 0;
clone_action47 = 0;
clone_action48 = 0;
clone_action49 = 0;
clone_action50 = 0;
clone_action51 = 0;
clone_action52 = 0;
clone_action53 = 0;
clone_action54 = 0;
clone_action55 = 0;
clone_action56 = 0;
clone_action57 = 0;
clone_action58 = 0;
clone_action59 = 0;
clone_action60 = 0;
clone_action61 = 0;
clone_action62 = 0;
clone_action63 = 0;
clone_action64 = 0;
clone_action65 = 0;
clone_action66 = 0;
clone_action67 = 0;
clone_action68 = 0;
clone_action69 = 0;
clone_action70 = 0;
clone_action71 = 0;
clone_action72 = 0;
clone_action73 = 0;
clone_action74 = 0;
clone_action75 = 0;
clone_action76 = 0;
clone_action77 = 0;
clone_action78 = 0;
clone_action79 = 0;
clone_action80 = 0;
clone_action81 = 0;
clone_action82 = 0;
clone_action83 = 0;
clone_action84 = 0;
clone_action85 = 0;
clone_action86 = 0;
clone_action87 = 0;
clone_action88 = 0;
clone_action89 = 0;
clone_action90 = 0;
clone_action91 = 0;
clone_action92 = 0;
clone_action93 = 0;
clone_action94 = 0;
clone_action95 = 0;
clone_action96 = 0;
clone_action97 = 0;
clone_action98 = 0;
clone_action99 = 0;
clone_action100 = 0;
clone_action101 = 0;
clone_action102 = 0;
clone_action103 = 0;
clone_action104 = 0;
clone_action105 = 0;
clone_action106 = 0;
clone_action107 = 0;
clone_action108 = 0;
clone_action109 = 0;
clone_action110 = 0;
clone_action111 = 0;
clone_action112 = 0;
clone_action113 = 0;
clone_action114 = 0;
clone_action115 = 0;
clone_action116 = 0;
clone_action117 = 0;
clone_action118 = 0;
clone_action119 = 0;
clone_action120 = 0;
clone_action121 = 0;
clone_action122 = 0;
clone_action123 = 0;
clone_action124 = 0;
clone_action125 = 0;
clone_action126 = 0;
clone_action127 = 0;
clone_action128 = 0;
clone_action129 = 0;
clone_action130 = 0;
clone_action131 = 0;
clone_action132 = 0;
clone_action133 = 0;
clone_action134 = 0;
clone_action135 = 0;
clone_action136 = 0;
clone_action137 = 0;
clone_action138 = 0;
clone_action139 = 0;
clone_action140 = 0;
clone_action141 = 0;
clone_action142 = 0;
clone_action143 = 0;
clone_action144 = 0;
clone_action145 = 0;
clone_action146 = 0;
clone_action147 = 0;
clone_action148 = 0;
clone_action149 = 0;
clone_action150 = 0;
clone_action151 = 0;
clone_action152 = 0;
clone_action153 = 0;
clone_action154 = 0;
clone_action155 = 0;
clone_action156 = 0;
clone_action157 = 0;
clone_action158 = 0;
clone_action159 = 0;
clone_action160 = 0;
clone_action161 = 0;
clone_action162 = 0;
clone_action163 = 0;
clone_action164 = 0;
clone_action165 = 0;
clone_action166 = 0;
clone_action167 = 0;
clone_action168 = 0;
clone_action169 = 0;
clone_action170 = 0;
clone_action171 = 0;
clone_action172 = 0;
clone_action173 = 0;
clone_action174 = 0;
clone_action175 = 0;
clone_action176 = 0;
clone_action177 = 0;
clone_action178 = 0;
clone_action179 = 0;
clone_action180 = 0;
clone_action181 = 0;
clone_action182 = 0;
clone_action183 = 0;
clone_action184 = 0;
clone_action185 = 0;
clone_action186 = 0;
clone_action187 = 0;
clone_action188 = 0;
clone_action189 = 0;
clone_action190 = 0;
clone_action191 = 0;
clone_action192 = 0;
clone_action193 = 0;
clone_action194 = 0;
clone_action195 = 0;
clone_action196 = 0;
clone_action197 = 0;
clone_action198 = 0;
clone_action199 = 0;
clone_action200 = 0;
clone_action201 = 0;
clone_action202 = 0;
clone_action203 = 0;
clone_action204 = 0;
clone_action205 = 0;
clone_action206 = 0;
clone_action207 = 0;
clone_action208 = 0;
clone_action209 = 0;
clone_action210 = 0;
clone_action211 = 0;
clone_action212 = 0;
clone_action213 = 0;
clone_action214 = 0;
clone_action215 = 0;
clone_action216 = 0;
clone_action217 = 0;
clone_action218 = 0;
clone_action219 = 0;
clone_action220 = 0;
clone_action221 = 0;
clone_action222 = 0;
clone_action223 = 0;
clone_action224 = 0;
clone_action225 = 0;
clone_action226 = 0;
clone_action227 = 0;
clone_action228 = 0;
clone_action229 = 0;
clone_action230 = 0;
clone_action231 = 0;
clone_action232 = 0;
clone_action233 = 0;
clone_action234 = 0;
clone_action235 = 0;
clone_action236 = 0;
clone_action237 = 0;
clone_action238 = 0;
clone_action239 = 0;
clone_action240 = 0;
clone_action241 = 0;
clone_action242 = 0;
clone_action243 = 0;
clone_action244 = 0;
clone_action245 = 0;
clone_action246 = 0;
clone_action247 = 0;
clone_action248 = 0;
clone_action249 = 0;
clone_action250 = 0;
clone_action251 = 0;
clone_action252 = 0;
clone_action253 = 0;
clone_action254 = 0;
clone_action255 = 0;
clone_action256 = 0;
clone_action257 = 0;
clone_action258 = 0;
clone_action259 = 0;
clone_action260 = 0;
clone_action261 = 0;
clone_action262 = 0;
clone_action263 = 0;
clone_action264 = 0;
clone_action265 = 0;
clone_action266 = 0;
clone_action267 = 0;
clone_action268 = 0;
clone_action269 = 0;
clone_action270 = 0;
clone_action271 = 0;
clone_action272 = 0;
clone_action273 = 0;
clone_action274 = 0;
clone_action275 = 0;
clone_action276 = 0;
clone_action277 = 0;
clone_action278 = 0;
clone_action279 = 0;
clone_action280 = 0;
clone_action281 = 0;
clone_action282 = 0;
clone_action283 = 0;
clone_action284 = 0;
clone_action285 = 0;
clone_action286 = 0;
clone_action287 = 0;
clone_action288 = 0;
clone_action289 = 0;
clone_action290 = 0;
clone_action291 = 0;
clone_action292 = 0;
clone_action293 = 0;
clone_action294 = 0;
clone_action295 = 0;
clone_action296 = 0;
clone_action297 = 0;
clone_action298 = 0;
clone_action299 = 0;
clone_action300 = 0;
    }
    
ryu_got_hit = false;

runeG_hit = false;
runeM_hit = false;
runen_cont = 0;
runen_x = 0;

//MOTION BLUR CODE
blur = array_create(10);

clone_hit = hit_fx_create( sprite_get( "clone_hit" ), 13 );

boxing_title = "The Dragon Ninja";
boxing_short_name = "Ryu Hayabusa";


//Rune Support
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

// Tier 1 Rune
abyssMods[@ runes.A] = [1, "FSPECIAL Orb causes the Burn Status"];
abyssMods[@ runes.B] = [3, "Gives Ryu an extra Midair Jump"];
abyssMods[@ runes.C] = [2, "DAIR sends down throughout the entirety of the move"];
abyssMods[@ runes.D] = [3, "NAIR works like the NES Ninja Gaiden games"];
abyssMods[@ runes.E] = [3, "DSPECIAL protects both Ryu and the Clone"];
abyssMods[@ runes.F] = [2, "USPECIAL kills the opponent first at the Bottom Blastzone"];

// Tier 2 Rune
abyssMods[@ runes.G] = [1, "FSPECIAL Teleports Ryu to the Opponent if Hit"];
abyssMods[@ runes.H] = [0, "All of the Clone's Attacks Stuns the Target"];
abyssMods[@ runes.I] = [3, "Gains Armor at the start of USPECIAL"];
abyssMods[@ runes.J] = [3, "Ryu has way more control during the USPECIAL"];
abyssMods[@ runes.K] = [3, "Can instantly cancel DAIR with Jump or on hit"];

// Tier 3 Rune
abyssMods[@ runes.L] = [0, "Makes the Clone immune to Enemy Attacks"];
abyssMods[@ runes.M] = [0, "Instantly blow up the Clone with DSPECIAL"];
abyssMods[@ runes.N] = [3, "Unlimited Wall Cling Timer, and has Armor throughout it"];
abyssMods[@ runes.O] = [3, "Insantly Teleports to the Clone when pressing Taunt"];


spr_dash_clone = sprite_get("dash_clone");
spr_dtilt_clone = sprite_get("dtilt_clone");
spr_fstrong_clone = sprite_get("fstrong_clone");
spr_ustrong_clone = sprite_get("ustrong_clone");
spr_clone_hud = sprite_get("clone_hud");
spr_strongf1 = sprite_get("strongf1");
spr_strongf2 = sprite_get("strongf2");
spr_proj1 = sprite_get("proj1");
spr_proj2 = sprite_get("proj2");
spr_idle_clone = sprite_get("idle_clone");
spr_izuna3 = sprite_get("izuna3");
spr_wall_jump = sprite_get("walljump");


//Date Girl Support. Generated using McDucky's Date Girl Generator! 
{
Chatting = true;
DG_portrait = sprite_get("DG_portrait");
var DG_page = 0;

//Page 0 - Start---------------------------------------------------
DG_page = 0;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = false;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Hello Ms. Callie, it's a beautiful day isn't it? There are 
flying swallows in the air, the smell of the grass.
It's perfect!"

DG_nextindex[DG_page] = 1;

//Page 1 - First Question---------------------------------------------------
DG_page = 1;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Anyway, are you ready for your training today?

"

DG_options[DG_page] = 
"I'm ready to learn more about the Ninja Way!!!
I want to learn about the Izuna Drop Hayabusa Sensei!
Can't we just appreciate this perfect day and chill?"
			
DG_answers[DG_page] = [2,4,5];


//Page 2 - Ninja Way Answer---------------------------------------------------
DG_page = 2;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"That's what I'm talking about Ms. Callie! 
The first lesson on being a Master Ninja is...
be aware of your surroundings "

DG_nextindex[DG_page] = 3;

//Page 3 - Second Question---------------------------------------------------
DG_page = 3;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"A Ninja must always be prepared for anything, even
the impossible! Now tell me Ms. Callie, if I were to attack
you with a grab right now, how would you counter attack?"

DG_options[DG_page] = 
"I would quickly dodge out of the way and attack back!
I would stand my ground and parry your attempt!
I would just let you grab me right now Hayabusa Sensei!"
			
DG_answers[DG_page] = [8,9,10];


//Page 4 - Izuna Answer---------------------------------------------------
DG_page = 4;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Hahaha, you're quite a hasty one Ms. Callie! However
you must have patience first and foremost, so we need
to start with the basics."

DG_nextindex[DG_page] = 7;

//Page 5 - Chill Answer---------------------------------------------------
DG_page = 5;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Yes you are very much right. Meditating is a key part
of being a Ninja. So now let's just sit here, for hours and
hours, and find true peace in our mind."

DG_nextindex[DG_page] = 6;

//Page 6 - Chill Ending---------------------------------------------------
DG_page = 6;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"(That is not what I meant, but alright,
I guess I can just meditate a little bit.)
"
//Page 7 - Izuna Cont.---------------------------------------------------
DG_page = 7;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"But don't worry Ms. Callie, with enough practice and
training, and specially an Unbreakable Determination, you'll
be a master of the Izuna Drop Technique! "

DG_nextindex[DG_page] = 3;

//Page 8 - Dodge and Attack---------------------------------------------------
DG_page = 8;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"That is a great choice Ms. Callie, a Ninja should avoid 
getting hit as much as possible, always move out of the way
and strike when they least expect!"

DG_nextindex[DG_page] = 11;

//Page 9 - Parry Back---------------------------------------------------
DG_page = 9;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"That could be a risky maneuver, however the payoff can
also be much bigger, if you're confident you can land that
Parry, that should for sure turn the tide of battle!"

DG_nextindex[DG_page] = 11;

//Page 10 - Getting Hit
DG_page = 10;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"That wouldn't work Ms. Callie, if an enemy attacks you,
you should always find a way to avoid getting hit by it.
I thought you knew better than that."

DG_dialogue_right[DG_page] = 
"(I don't think he understood what I meant...) 

"
DG_nextindex[DG_page] = 11;

//Page 11 - Normal Ending
DG_page = 11;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"That should be enough theory for now Ms. Callie,
now onto some actual practice! Keep your mind focused
and this battle should be yours."
}

user_event(14);