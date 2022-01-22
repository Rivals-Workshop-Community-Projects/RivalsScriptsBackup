/*
If you're not a completely awful person and are not annoying, consider joining my character discord server.
If you're smart enough to find init.gml, you'll probably fit in.
https://discord.gg/VHr3eMv
Give me your thoughts on my character, but do know that I don't plan on making balance changes unless I really need to. I am fine with making bug fixes cause nobody wants to play a buggy character. (Hi Landkon! I know you like init.gml files, so here's an easter egg for you!)

Here's a list of things I'm willing/hesitant/not willing to change.

Willing (These are things I feel people will most likely request changes for):
	Frame Data
	Hitpause + Scaling
	Visual Effects
	Angle Flippers
	Minor Changes to player variables
	Freedom of movement with NSPECIAL and HSP
	Adding different ways to make Taunt better
	
Hesitant (I really don't want to nerf my character too hard, don't want another bottom tier character because I already have one):
	Range of Clownfish auto recover
	Knockback + Scaling on any move that isn't the Throw
	Damage
	Amount of soft armor on clownfish
	Clownfish Ai, I barely understand how it works, so maybe? If I can figure it out, but sometimes it works and sometimes it doesn't.
	
Not: (Don't ask, your opinions on these things will not change how I feel)
	Hurtboxes on Grab moves, I'm sorry, I can't deal with them, I have no clue how to make the hurtbox work.
	Grab invincibility, It would probably break, sadly.
	Taunt Functionality being a thing, Adapt
	Any Jump Cancels
	Knockback_adj
	Decreasing Hitbox sizes
	Increasing Hurtbox sizes
	HSP from FSPECIAL
	Unique Interactions and Tech

Character Info ---

Anemone


Clownfish
	Bubble
		Soft armor baby, tough guy
	No Bubble
		Lose access to specials and strongs (Except USPECIAL gets a little hop)


PLANS----------------------------------------

[X] Make it so clownfish cannot do special moves when Anemone is doing a special move.
[X] Give all of clownfish's moves unique hurtboxes with bubble included.
[No] Set Play Mode with Clownfish(Maybe)
















Gameplay-------------------------------------------------------------
Let's do some fricking statistics alright?

Grabs Frame Data (Hit Player Gml to add more)
USTRONG - Frame 11 - Hits Idle and Slightly Above Anemone, slides off ledge
NSPECIAL - Frame 14 - Hits slightly infront, allows fish to move around to combo into locked grab, Activates automatically on the opponent frame 1, and gives me a horizontal boost forward, slides off ledge
UAIR - Frame 16 - Aerial, which allows for earlier kills
~~~Not In Game Anymore ~~~ FSPECIAL - Frame 7 (Hold Special to activate grab) - Hits infront, Grabbing opponent or platform/ground gives a jump cancelled horizontal boost.

Unique Interactions and Tech-------------------------------------------------------

Anemone
	
	Unique Interactions
	USPECIAL - Clownfish Floats up if he's above you
		Very funny and useful for keeping clownfish alive
	DAIR (Sweetspot) - Bounce off of Clownfish or Bubble, Popping Both
		Very funny and cool. + It's useful for recovering vertically as that is a weakness of Anemone, vertical recovery.
	USTRONG, NSPECIAL, UAIR - Command Grab Hitbox
		Useful for kills off of the top, Anemone has no problem killing off the top.
	FSPECIAL - Hit Bubble or Clownfish to fling anemone forward
		Covers another weakness of Anemone being really slow on the ground and air.
	
	Tech	
	Wave Dash + Low Friction
		Slippy Slide, haha, luigi. 

	Strongs can be used off ledge and in the air
	
	
	
	UAIR - Landing before the throw starts will let you combo into other moves instead of the throw

Clownfish
	
	Tech
	FAIR - Holding Neutral will have greater friction
	NSPECIAL - Jump cancelable if on the ground during attack part (Disabled During Anemone's NSPECIAL control, unless taunt is held)


Thoughts-------------------------------------------------------------
Everything I think of reminds me of Mycolich, but I don't want my animations to look like Mycolich. It's really hard to make unique animation.
Very Important image: https://cdn.discordapp.com/emojis/839933692549398538.png?v=1 
FSPECIAL caused issues with jump cancel + grab code, so I opted to just leave the jump cancel because I like crayons, yummy. Also FSPECIAL was frame 7, that's kinda fast compared to the other grabs and it has a good secondary effects. His name is Duff McWhalen BTW.
I have no clue if Anemone is a grappler zoner or a zoner with command grab moves or if he's a zoner at all. Archetype are confusing I just like to hold forward and use forward airs and forward strongs.
Clownfish code makes me cry (hypothetically) because I don't wanna code his knockback stuff but I need to
While writing out in the Unique Interactions and Tech area I had this thought, "Oh my god, Invisible ceiling glitch would be hilarious to add, but I will not for that is a really strong gimmick. Okay, maybe, but I'm testing it right now. More detail later"
	I can't figure out a good way to do it because jab will not be parryable

Rune Ideas: [6, 5, 4]
	[1] UTILT can be held longer
	[1] NAIR can be held infinitely (until landiing)	
	[1] NSPECIAL has a larger detection range and hitbox
	[1] USPECIAL Lasts Longer
	
	[2] Clownfish Armor increased
	[2] Invincible Bubbles
	[2] More KB on throw
	[2] FSPECIAL (despite being glitchy) becomes a grab
	[2] USPECIAL Acts different
	
	[3] infinite Bubbles
	[3] Clownfish always bubbled, with 1 knockback_adj (still armored)
	[3] Kash respawns on his death


Known Glitches-------------------------------------------------------
Bug #1:Creating a new oPlayer will sometimes freeze the game for upto 2 seconds
	Thought to be cause of bug: Reloading in Practice mode


[X] Bubble Hurt State exists
[X] Parry stun needs an animation for clownfish
[X] oTestPlayer bugs
[X] Make clownfish not destroy/create

[X] Bubble can attack somehow
[?] Clownfish is active during respawn
[X] Clownfish doesn't regain bubble on death
[X] Clownfish dying first has some weird effects (% gets reset, clownfish invisibile
[?] Airdodge funky


Shoutouts to some of my friends for helping/supporting me as I gush about my character in a private server
BernardO
Danielone
KirbSoup
InnerOtaku
Reiga
SB2749
SnolidIce
SpiderBoi
Acoylte
AtTractionByZer0
VVizard
Mawral

*/

kashControl = 0


debugAttack = 1
clownfishDeadHealth = 0


hudShiftX = 152
hudShiftY = -16

canTutorial = ((get_training_cpu_action() != CPU_FIGHT))
tutorialMode = 1
tutorialPage = 1
tutorialPageTotal = 10 //Max Pages
tutorialX = 120
tutorialY = 30
tutorialArrow = 0
tutorialDisplay = 0


//Modes
clownMode = 0 //1 = Set Play
tauntPress = 0
tauntRep = 0
specialPress = 0
clownRadius = 9999 //384 (Default)
clownSet = 0
tauntMode = 1
returnRatio = .75 //How far down it takes for Kash to automatically recover.
returnRatioX = .95
returnMoneX = 400
returnDebug = 10
/*
0 - Hold Taunt 
Anemone - Cannot Attack, Cannot Move
Clownfish - Can Attack, Can Move
1 - On/Off Taunt
Anemone - Cannot Attack, Cannot Move
Clownfish - Can Attack, Can Move
2 - Set-Play (Hold)
Anemone - Can Attack, Can Move
Clownfish - Can Attack, Cannot Move
3 - Set-Play (On/Off )
Anemone - Can Attack, Can Move
Clownfish - Can Attack, Cannot Move


*/





armyHudY = 0
armyHudX = 0
bubbleHudY = 0
bubbleHudX = 0



sprCircle = sprite_get("grabCircle")
sprSquare = sprite_get("grabSquare")
sprRound = sprite_get("grabRound")

anemoneGrab = -4
shouldThrow = 0
uspecialSpin = 0
fspecialGrab = 0
fspecialDidHold = 0
utiltHoldLimit = 6
utiltHold = utiltHoldLimit


debug = 0



hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 64;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 7;
initial_dash_speed = 3;
dash_speed = 3.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 4;
djump_speed = 11;
leave_ground_max = 3; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 12; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 16;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 6;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 0;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
bubble = -4

clownfish = -4
cfCreate = 1

army = noone;

//WOOOO (Bernard Code)
if !custom_clone {
        army_leader = self;
        is_nana = false;
		nanaDamage = 0 // 0 
    } else {
		is_nana = true;
    }
    if !is_nana {
		if (object_index != oTestPlayer){
			if instance_exists(bubble) {
				instance_destroy(bubble)
			}
			bubble = instance_create(x,y, "oPlayer");
			bubble.y -= 64
			bubble.army_leader = self;		
			bubble.is_bubble = 1
			army = instance_create(x - 25*spr_dir,y,"oPlayer");
			army.army_leader = self;
		}
    } else {
        custom_clone = true
        disable_ai = false;
    }

spawnClown = 0
debugA = 0
debugB = 0