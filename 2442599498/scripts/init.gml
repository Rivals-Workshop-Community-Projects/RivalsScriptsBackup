/*
--------------------------
Article list index
--------------------------
1: text box/speech bubbles
2: background sprites
3: mettaton sprites
4: battle buttons
5: solid walls
6: yellow/white leg projectile
7: bomb projectile
8: mini mtt
9: mini mtt heart
10: square blocks (destructable/non-destructable)
11: arm projectile (arm)
12: arm projectile (slider)
13: ratings
14: heart2heart heart
15: heart2heart lightning
16: disco ball
17: disco beams
18: leg stabs
19: attack markers
20: player shadows/heart
--------------------------
*/

neo_dead = false;
neo_shake = false;

timer = 0;
phase_timer = 0;
state_timer = 0;

phase = 0;
state = 3;

attack_index = 1; //attack progression
speech_index = attack_index; //speech progression
flavour_index = 0; //flavour text progression

freeplay = false;
mtt_dead = false;
dead_timer = 0;

roomXmod = 0;
roomYmod = 0;

active_textbox = undefined;
textbox_finished = false; //true if textbox has ended, self deleted

button_selected = undefined;
select_timer = 0; //resets to 0 then increments every frame after selecting a menu button

draw_attack_bar = false; //whether attack bar is visible or not
attack_marker_exists = false;
mtt_hit = false;

mtt_take_damage = false; //if true, take damage/display damage bar
mtt_damage = 0; //amount of damage to take;
mtt_has_took_damage = false;
mtt_damage_timer = 0;

action_boost = 300; //number of rating when attacking mettaton, decreases by 50 after each attack
pose_boost = 100; //increases depending on % hp

boast_boost = true;
has_dissapointed = false;

current_randomise_rate = 59;

hp_total = 500; //mettaton hp total
hp_current = hp_total; //mettaton hp current

hp_old = hp_total;

heart_ids = array_create(4, undefined); //stores all the heart hurtbox objects

displayStats = false; //end of game stats
lineIndex = 0;
dataIndex = 0;
endTimer = 0;
textboxTime = 0;
lineTime = 0;
lineTextNum = 0;

//end data text
endText[0,0] = "";
endText[0,1] = "";
endText[0,2] = "";
endText[0,3] = "";
endText[0,4] = "";

endText[1,0] = "";
endText[1,1] = "";
endText[1,2] = "";
endText[1,3] = "";
endText[1,4] = "";

endText[2,0] = "";
endText[2,1] = "";
endText[2,2] = "";
endText[2,3] = "";
endText[2,4] = "";

endText[3,0] = "";
endText[3,1] = "";
endText[3,2] = "";
endText[3,3] = "";
endText[3,4] = "";

//keyboard_string = ""

intro_text[0] = "Ohhhh my."
intro_text[1] = "If you flipped my
switch, that can
only mean one
thing."
intro_text[2] = "You're desperate
for the premier
of my new body."
intro_text[3] = "How rude..."
intro_text[4] = "Lucky for you,
I've been aching
to show this off
for a long time."
intro_text[5] = "So... as thanks,
I'll give you a 
handsome reward."
intro_text[6] = "I'll make your
last living
moments..."

reveal_text[0] = "ABSOLUTELY beautiful!"


flavour_text[0,0] = "Mettaton NEO blocks the way!"
flavour_text[1,0] = "Stage lights are blaring."
flavour_text[2,0] = "Mettaton is saving your
essay for future use."
flavour_text[3,0] = "Stage lights are blaring."
flavour_text[4,0] = "Mettaton has low HP."

menu_index = 0;

menu_text[0,0] = "Check"
menu_text[0,1] = ""
menu_text[0,2] = ""
menu_text[0,3] = ""

//item menu
menu_text[1,0] = "GlamBurg"
menu_text[1,1] = "L.Hero"
menu_text[1,2] = "AstroFood"
menu_text[1,3] = "ButtsPie"
menu_text[1,4] = "FaceSteak"
menu_text[1,5] = "Junk Food"
menu_text[1,6] = "MnstrCndy"
menu_text[1,7] = "CrabApple"

//item text
item_index = 0;
item_text[0] = "You eat the Glamburger."
item_text[1] = "You eat the Legendary Hero."
item_text[2] = "You eat the Astronaut Food."
item_text[3] = "You eat the Butterscotch Pie."
item_text[4] = "You eat the Face Steak."
item_text[5] = "You eat the Junk Food."
item_text[6] = "You eat the Monster Candy."
item_text[7] = "You eat the CrabApple."

//item hp and rating boosts
item_stats[0,0] = 27;
item_stats[0,1] = 40;
item_stats[0,2] = 21;
item_stats[0,3] = 1000;
item_stats[0,4] = 60;
item_stats[0,5] = 17;
item_stats[0,6] = 18;
item_stats[0,7] = 10;

item_stats[1,0] = 500;
item_stats[1,1] = 300;
item_stats[1,2] = 0;
item_stats[1,3] = 0;
item_stats[1,4] = 700;
item_stats[1,5] = -50;
item_stats[1,6] = 0;
item_stats[1,7] = 0;

//act text
act_index = 0;
act_text[0,0] = "METTATON NEO - 90 ATK 9 DEF
Dr. Alphys's greatest
invention." //check
act_text[1,0] = "You say you aren't going
to get hit at ALL." //boast
act_text[1,1] = "Ratings gradually increase
during Mettaton's turn."
act_text[2,0] = "You posed dramatically.
The audience nods." //pose
act_text[3,0] = "You turn and scoff at the
audience."
act_text[3,1] = "They're rooting for your
destruction this turn!" //heel turn

//pose texts, depending on % of hp left
pose_text[0,0] = "You posed dramatically.
The audience nods."
pose_text[0,1] = "Despite being hurt,
you posed dramatically.
The audience applauds."
pose_text[0,2] = "Despite being wounded,
you posed dramatically.
The audience gasps."
pose_text[0,3] = "With the last of your power,
you posed dramatically.
The audience screams."
pose_text[1,0] = 100;
pose_text[1,1] = 50;
pose_text[1,2] = 25;
pose_text[1,3] = 10;

speech_text[0,0] = "Lights!
Camera!
Action!"
speech_text[1,0] = "Drama!
Romance!
Blood-
shed!"
speech_text[2,0] = "I'm the
idol
everyone
craves!"
speech_text[3,0] = "Smile
for the
camera!"
speech_text[4,0] = "Ooh it's time
for a pop quiz!"
speech_text[4,1] = "I hope you brought
a keyboard..."
speech_text[4,2] = "This one's an
essay question!"
speech_text[5,0] = "Your essay really
showed everyone
your heart."
speech_text[5,1] = "Why don't I show
you mine?"
speech_text[6,0] = "Ooooh,
I'm just
warming
up!"
speech_text[7,0] = "But how are you
on the dance floor!?"
speech_text[8,0] = "Can you
keep up
the
pace!?"
speech_text[9,0] = "Lights!
Camera!
Bombs!"
speech_text[10,0] = "Things
are
blowing
up!"
speech_text[11,0] = "Time for our union-
regulated break!"
speech_text[12,0] = "We've grown so
distant, darling..."
speech_text[12,1] = "How about another
heart-to-heart?"
speech_text[13,0] = "A.. arms?
Wh... who needs arms
with legs like
these?"
speech_text[13,1] = "I'm still going
to win!"
speech_text[14,0] = "Come on
...!"
speech_text[15,0] = "The show
...
must go
on!"
speech_text[16,0] = "Dr...
Drama!
A...
Action!"
speech_text[17,0] = "L... lights...
C... camera..."
speech_text[17,1] = "Enough of this!
Do you really want
humanity to perish!?"
speech_text[17,2] = "... or do you just
believe in yourself
that much?"
speech_text[18,0] = "Haha, how inspiring!"
speech_text[18,1] = "Well, darling!
It's either me
or you!"
speech_text[18,2] = "But I think we both
already know who's
going to win."
speech_text[18,3] = "Witness the true
power of humanity's
star!"
speech_text[19,0] = "... then..."
speech_text[19,1] = "Are YOU the star?"
speech_text[19,2] = "Can you really
protect humanity!?"
speech_text[20,0] = "..."

//neutral ending
neutral_text[0] = "GH..."
neutral_text[1] = "GUESS YOU DON'T
WANNA JOIN MY
FAN CLUB...?"

neutral_face[0] = 18
neutral_face[1] = 19

display_face2 = false;


//pacifist ending
pacifist_text[0] = "OOH, LOOK AT
THESE RATINGS!!!"
pacifist_text[1] = "THIS IS THE MOST
VIEWERS I'VE EVER
HAD!!!"
pacifist_text[2] = "WE'VE REACHED THE
VIEWER CALL-IN
MILESTONE!"
pacifist_text[3] = "ONE LUCKY VIEWER
WILL HAVE THE CHANCE
TO TALK TO ME..."
pacifist_text[4] = "... BEFORE I LEAVE
THE UNDERGROUND
FOREVER!!"
pacifist_text[5] = "LET'S SEE WHO
CALLS IN FIRST!"
pacifist_text[6] = "HI, YOU'RE ON TV!"
pacifist_text[7] = "WHAT DO YOU HAVE
TO SAY ON THIS,
OUR LAST SHOW???"
pacifist_text[8] = "....."
pacifist_text[9] = "oh........"
pacifist_text[10] = "hi...
mettaton..."
pacifist_text[11] = "i really liked
watching your show..."
pacifist_text[12] = "my life is pretty
boring... but..."
pacifist_text[13] = "seeing you on the
screen... brought
excitement to my
life... vicariously"
pacifist_text[14] = "i can't tell, but...
i guess this is
the last episode...?"
pacifist_text[15] = "i'll miss you...
mettaton......"
pacifist_text[16] = "... oh.... i didn't
mean to talk so
long..."
pacifist_text[17] = "oh.........."
pacifist_text[18] = "NO WAIT!
WAIT, BL..."
pacifist_text[19] = "H...
THEY ALREADY HUNG
UP."
pacifist_text[20] = "..."
pacifist_text[21] = "I'LL TAKE ANOTHER
CALLER!!!"
pacifist_text[22] = "Mettaton, your show
made us so happy!"
pacifist_text[23] = "Mettaton, I don't
know what I'll
watch without you."
pacifist_text[24] = "Mettaton, there's
a Mettaton-shaped
hole in my Mettaton-
shaped heart."
pacifist_text[25] = "AH... I..."
pacifist_text[26] = "I SEE..."
pacifist_text[27] = "..."
pacifist_text[28] = "EVERYONE...
THANK YOU SO MUCH."
pacifist_text[29] = "..."
pacifist_text[30] = "DARLING"
pacifist_text[31] = "PERHAPS... IT MIGHT BE
BETTER IF I STAY
HERE FOR A WHILE"
pacifist_text[32] = "HUMANS ALREADY HAVE
STARS AND IDOLS,
BUT MONSTERS..."
pacifist_text[33] = "THEY ONLY HAVE ME."
pacifist_text[34] = "IF I LEFT...
THE UNDERGROUND WOULD
LOSE ITS SPARK."
pacifist_text[35] = "I'D LEAVE AN ACHING
VOID THAT CAN NEVER
BE FILLED."
pacifist_text[36] = "SO... I THINK I'LL
HAVE TO DELAY MY
BIG DEBUT."
pacifist_text[37] = "BESIDES."
pacifist_text[38] = "YOU'VE PROVEN TO
BE VERY STRONG."
pacifist_text[39] = "PERHAPS... EVEN STRONG
ENOUGH TO GET PAST
ASGORE."
pacifist_text[40] = "I'M SURE YOU'LL BE
ABLE TO PROTECT
HUMANITY."
pacifist_text[41] = "HA, HA..."
pacifist_text[42] = "IT'S ALL FOR THE
BEST, ANYWAY."
pacifist_text[43] = "THE TRUTH IS, THIS
FORM'S ENERGY
CONSUMPTION IS..."
pacifist_text[44] = "INEFFICIENT."
pacifist_text[45] = "IN A FEW MOMENTS,
I'LL RUN OUT OF
BATTERY POWER, AND..."
pacifist_text[46] = "WELL."
pacifist_text[47] = "I'LL BE ALRIGHT."
pacifist_text[48] = "KNOCK 'EM DEAD,
DARLING."
pacifist_text[49] = "AND EVERYONE...
THANK YOU."
pacifist_text[50] = "YOU'VE BEEN A
GREAT AUDIENCE!"

pacifist_face[0] = 0;
pacifist_face[1] = 2;
pacifist_face[2] = 2;
pacifist_face[3] = 3;
pacifist_face[4] = 8;
pacifist_face[5] = 4;
pacifist_face[6] = 0;
pacifist_face[7] = 0;
pacifist_face[8] = 0;
pacifist_face[9] = 0;
pacifist_face[10] = 16;
pacifist_face[11] = 16;
pacifist_face[12] = 16;
pacifist_face[13] = 16;
pacifist_face[14] = 16;
pacifist_face[15] = 18;
pacifist_face[16] = 18;
pacifist_face[17] = 17;
pacifist_face[18] = 17;
pacifist_face[19] = 16;
pacifist_face[20] = 18;
pacifist_face[21] = 0;
pacifist_face[22] = 16;
pacifist_face[23] = 16;
pacifist_face[24] = 16;
pacifist_face[25] = 18;
pacifist_face[26] = 18;
pacifist_face[27] = 20;
pacifist_face[28] = 20;
pacifist_face[29] = 20;
pacifist_face[30] = 0;
pacifist_face[31] = 16;
pacifist_face[32] = 17;
pacifist_face[33] = 0;
pacifist_face[34] = 16;
pacifist_face[35] = 18;
pacifist_face[36] = 0;
pacifist_face[37] = 17;
pacifist_face[38] = 16;
pacifist_face[39] = 0;
pacifist_face[40] = 0;
pacifist_face[41] = 20;
pacifist_face[42] = 20;
pacifist_face[43] = 18;
pacifist_face[44] = 18;
pacifist_face[45] = 18;
pacifist_face[46] = 20;
pacifist_face[47] = 0;
pacifist_face[48] = 5;
pacifist_face[49] = 0;
pacifist_face[50] = 0;