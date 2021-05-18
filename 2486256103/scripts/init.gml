//init

cam_x_right = view_get_wview()+view_get_xview();
cam_y_right = view_get_hview()+view_get_yview();
cam_x_left = view_get_xview();
cam_y_left = view_get_yview();

cam_state = 0;
cam_smooth = 1;
g_cam_pos = [cam_x_left,cam_y_left];
cam_offset = [0,-64];
cam_vel_influence = 20;
room_manager = noone;
follow_player = noone;
cam_override_obj = noone;
// if follow_player == noone with oPlayer if other.follow_player == noone && (!variable_instance_exists(self, "is_ai") || !is_ai) && is_player_on(player) other.follow_player = id;
_init = 0;

set_bg_data(2, BG_LAYER_Y, 1024);
set_bg_data(3, BG_LAYER_Y, 1124);
set_bg_data(4, BG_LAYER_Y, 1200);

//Date Girl Support. Generated using McDucky's Date Girl Generator! 
Chatting = true;
DG_portrait = sprite_get("DG_portrait");
var DG_page = 0;

//Page 0 - 
////---------------------------------------------------
DG_page = 0;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Gee, this place is HUGE! There's so much room to explore!

"

DG_nextindex[DG_page] = 1;

//Page 1 - 
//---------------------------------------------------
DG_page = 1;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Anyway, this here is Temple. This stage was made famous in
Super Smash Bros. Melee for the Nintendo Gamecube.
"

DG_nextindex[DG_page] = 2;

//Page 2 - 
//---------------------------------------------------
DG_page = 2;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It originates from The Legend of Zelda. Ahhh...
I always like the Zelda games, especially the way Zelda
swings his sword..."

DG_nextindex[DG_page] = 3;

//Page 3 - 
//---------------------------------------------------
DG_page = 3;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"...
I kid of course!
Who actually gets mad at that???"

DG_nextindex[DG_page] = 4;

//Page 4 - Choice
//---------------------------------------------------
DG_page = 4;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"...Anyway, I say we should go sightseeing somewhere here.
Where would you like to go?
"

DG_options[DG_page] = 
"The temple entrance
The top ledge
So I hear there's a fight club?"
			
DG_answers[DG_page] = [5,9,18];


//Page 5 - Temple Entrance
//---------------------------------------------------
DG_page = 5;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Good choice. Near this entrance is the blast zone. They 
extend very far, and you'll be sure to recover if you know
how to DI correctly."

DG_nextindex[DG_page] = 6;

//Page 6 - Temple Entrance
//---------------------------------------------------
DG_page = 6;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"You... do know how to DI, right?

"

DG_options[DG_page] = 
"Totally
Absolutely
Yep"
			
DG_answers[DG_page] = [7,7,7];


//Page 7 - Temple Entrance
//---------------------------------------------------
DG_page = 7;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Don't be silly! There are only 10 people who know how to DI.
And you're definitely not one of them.
"

DG_nextindex[DG_page] = 8;

//Page 8 - Temple Entrance
//---------------------------------------------------
DG_page = 8;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Maybe practicing your directional inputs will make you the
eleventh person. Try holding different directions when you
get beaten. Something magic might happen."

//Page 9 - Top Ledge
//---------------------------------------------------
DG_page = 9;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Ah, so I see you like jumping. The right ledge is where all
the skilled fighters go to practice their recovery.
"

DG_nextindex[DG_page] = 10;

//Page 10 - Top Ledge
//---------------------------------------------------
DG_page = 10;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Some fighters can go from the bottom platform to this ledge
very easily. Others can't even make it halfway.
"

DG_nextindex[DG_page] = 11;

//Page 11 - Top Ledge Choice
//---------------------------------------------------
DG_page = 11;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Do you think you can make it?

"

DG_options[DG_page] = 
"Yes
No
You first"
			
DG_answers[DG_page] = [12,15,28];


//Page 12 - Top Ledge Choice A
//---------------------------------------------------
DG_page = 12;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Okay, you go on the bottom platform and try to jump to me.
Ready... go!
"

DG_nextindex[DG_page] = 13;

//Page 13 - Top Ledge Choice A
//---------------------------------------------------
DG_page = 13;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 18;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"(You attempt to jump, but gravity is too strong and you end
up in the bottom blast zone.)
"

DG_nextindex[DG_page] = 14;

//Page 14 - Top Ledge Choice A
//---------------------------------------------------
DG_page = 14;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"See? Not that easy is it?

"

//Page 15 - Top Ledge Choice b
//---------------------------------------------------
DG_page = 15;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Don't be such a chicken! Here, I'll help!

"

DG_nextindex[DG_page] = 16;

//Page 16 - Top Ledge Choice b
//---------------------------------------------------
DG_page = 16;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 18;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"(Callie pushes you off of the top platform and into the
blast zone.)
"

DG_nextindex[DG_page] = 17;

//Page 17 - Top Ledge Choice b
//---------------------------------------------------
DG_page = 17;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Haha oops. That wasn't even the right way...

"

//Page 18 - Fight Club
//---------------------------------------------------
DG_page = 18;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Fight club? Oh, right! The Hyrule Fight Club!
Let me break it down for you...
"

DG_nextindex[DG_page] = 19;

//Page 19 - Fight Club
//---------------------------------------------------
DG_page = 19;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"The top is known as Weenie Hut Jr.'s. That's not where the
fun is. If you want to actually fight you go to the bottom
of this map."

DG_nextindex[DG_page] = 20;

//Page 20 - Fight Club
//---------------------------------------------------
DG_page = 20;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"If you think you're ready for Fight Club, we can duke it out
right now! You think you can beat me?
"

DG_options[DG_page] = 
"Easily. Bring it on!
Please don't hurt me...
Wait, what was the question?"
			
DG_answers[DG_page] = [21,22,25];


//Page 21 - Fight Club Choice A
//---------------------------------------------------
DG_page = 21;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Okay, bring it on!

"

DG_nextindex[DG_page] = 23;

//Page 22 - Fight Club Choice B
//---------------------------------------------------
DG_page = 22;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Don't be a coward! Fight me!

"

DG_nextindex[DG_page] = 23;

//Page 23 - Fight Club Choice AB
//---------------------------------------------------
DG_page = 23;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 18;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"(You both go to the bottom of the map. Both of you ready
your fighting stance. You charge towards Callie, but trip on
the air and into the bottom blast zone)"

DG_nextindex[DG_page] = 24;

//Page 24 - Fight Club Choice AB
//---------------------------------------------------
DG_page = 24;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"You're not ready to join Hyrule Fight Club. Maybe next time 
try to actually hit me, okay?
"

//Page 25 - Fight Club Choice C
//---------------------------------------------------
DG_page = 25;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Too slow!

"

DG_nextindex[DG_page] = 26;

//Page 26 - Fight Club Choice C
//---------------------------------------------------
DG_page = 26;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 18;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"(Callie uppercuts you into the top blast zone)

"

DG_nextindex[DG_page] = 27;

//Page 27 - Fight Club Choice C
//---------------------------------------------------
DG_page = 27;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"That's Hyrule Fight Club for ya!

"


//Page 28 - Top Ledge Choice C
//---------------------------------------------------
DG_page = 28;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 1;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Alright... Watch me and prepare to be amazed!

"

DG_nextindex[DG_page] = 29;

//Page 29 - Top Ledge Choice C
//---------------------------------------------------
DG_page = 29;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 18;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"(She goes to the bottom platform and attempts to make it to 
you, but ends up in the bottom blast zone instead.)
"

DG_nextindex[DG_page] = 30;

//Page 30 - Top Ledge Choice C
//---------------------------------------------------
DG_page = 30;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 18;
DG_right_strip[DG_page] = 18;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"(Maybe one day you'll meet her again...)

"
