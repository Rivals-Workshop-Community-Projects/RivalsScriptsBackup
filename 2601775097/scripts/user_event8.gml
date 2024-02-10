//user_event 8
//callie the dategirl compatibility

with (oPlayer) if (player != other.player && "url" in self && url != 2396061657) exit;

//faces dictionary:
//0 - normal/happy
//1 - flustered af
//2 - grief
//3 - awkward
//4 - confused
//5 - angry flustered
//Date Girl Support. Generated using McDucky's Date Girl Generator!
Chatting = true;

//he has a random chance to appear with glasses (unless he is on his theikos state/alt)
DG_portrait = (theikos_type > 0 || alt_cur == 27) ? sprite_get("DG_port_theikos") : ( random_func(0, 5, true) == 0 ? sprite_get("DG_port_glasses") : sprite_get("DG_port") );


var DG_page = 0;

//Page 0 - INTRO
DG_page = 0;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Uhm, hi..? Do I... Know you?

"

DG_options[DG_page] = 
"You don't, but we can fix that.
You're pretty cute.
Hey~ No need to get all tensed up!"
			
DG_answers[DG_page] = [1,25,32];

//OPTION1
//Page 1
DG_page = 1;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"*Ahem* Well... I'm Bar. Bar Reygard.
"

DG_nextindex[DG_page] = 2;

//Page 2
DG_page = 2;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"My name is Callie! I don't really know where I'm from but
I do want to get to know YOU more!
"
DG_nextindex[DG_page] = 3;

//SELECT1
//Page 3
DG_page = 3;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1; //1 - flustered af
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"G-Get to know me? Well.. There isn't a lot to say...
I'm just an angel from another world with a job to do."

DG_options[DG_page] = 
"An angel? I never would have guessed!
I would have expected something a bit more grand.
What do you do?"
			
DG_answers[DG_page] = [4,9,18];

//OPTION1-1
//Page 4
DG_page = 4;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Angels in my world are hiding in plain sight.
My human form is more of a disguise if anything.
Gehenom did it first so we needed to do it too."

DG_nextindex[DG_page] = 5;

//Page 5
DG_page = 5;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"Gehenom? Sounds pretty spooky~

"
DG_nextindex[DG_page] = 6;

//Page 6
DG_page = 6;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"You probably know it as Hell.

"

DG_nextindex[DG_page] = 7;

//Page 7
DG_page = 7;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"W-well I should probably go, I still have work to do in this
world, and it's not gonna finish itself.
"

DG_nextindex[DG_page] = 8;

//Page 8
DG_page = 8;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It was uhm... Nice to talk to you, I suppose.
"

//OPTION1-2
//Page 9
DG_page = 9;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"T-that's understandable.

"

DG_nextindex[DG_page] = 10;

//Page 10
DG_page = 10;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"You probably expected something less... Normal.

"

DG_nextindex[DG_page] = 11;

//Page 11
DG_page = 11;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Maybe my Theïkós would fit that description...

"

DG_nextindex[DG_page] = 12;

//Page 12
DG_page = 12;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"...Theïkós?

"
DG_nextindex[DG_page] = 13;

//Page 13
DG_page = 13;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Y-yeah! That's my true form, the more angelic and grand
looking one.
"

DG_nextindex[DG_page] = 14;

//Page 14
DG_page = 14;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"With divine blessings I can remove all my physical restraints,
summoning holy armor and becoming virtually indestructable."

DG_nextindex[DG_page] = 15;

//Page 15
DG_page = 15;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"The only thing holding this power back is...
Well my willpower.
"

DG_nextindex[DG_page] = 16;

//Page 16
DG_page = 16;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Without it, that form will crumble and the power - wasted.

"

DG_nextindex[DG_page] = 17;

//Page 17
DG_page = 17;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"W-well I should get going, I have a job to do.
But I appritiate the talk!
"

//OPTION1-3
//Page 18
DG_page = 18;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I guard this gauntlet I wear.

"

DG_nextindex[DG_page] = 19;

//Page 19
DG_page = 19;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"This gauntlet is a very dangerous tool if it falls to the
wrong hands.
"

DG_nextindex[DG_page] = 20;

//Page 20
DG_page = 20;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It holds leftover energies from the creation of
the universe. My gauntlet specifically has the energy of
the creation of the physical world, the elements."

DG_nextindex[DG_page] = 21;

//Page 21
DG_page = 21;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 2; //2 - grief
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"...
"

DG_nextindex[DG_page] = 22;

//Page 22
DG_page = 22;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I-I feel like I rambled for too long... I should probably
get going.
"

DG_nextindex[DG_page] = 23;

//Page 23
DG_page = 23;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Thanks for the interest, I guess...

"

DG_nextindex[DG_page] = 24;

//Page 24
DG_page = 24;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 2; //2 - grief
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"...I will never forgive those demons... Dad...

"

//OPTION2
//Page 25
DG_page = 25;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1; //1 - flustered af
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"W-wha-

"

DG_nextindex[DG_page] = 26;

//Page 26
DG_page = 26;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"D-don't just say weird things l-like that...!

"

DG_nextindex[DG_page] = 27;

//Page 27
DG_page = 27;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"I'm just being honest though! You have a cute face~!

"
DG_nextindex[DG_page] = 28;

//Page 28
DG_page = 28;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"... I-I don't have time for this-

"

DG_nextindex[DG_page] = 29;

//Page 29
DG_page = 29;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Besides...! I-... I'm not interested...

"

DG_nextindex[DG_page] = 30;

//Page 30
DG_page = 30;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"Hm... What a bummer.

"
DG_nextindex[DG_page] = 31;

//Page 31
DG_page = 31;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"S-sorry...?

"

//OPTION3
//Page 32
DG_page = 32;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Yeah I... I guess so.

"

DG_nextindex[DG_page] = 33;

//Page 33
DG_page = 33;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Talking animals aren't exactly a thing I'm familiar with.
"

DG_nextindex[DG_page] = 34;

//Page 34
DG_page = 34;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"And here I thought that the weirdest thing ever was a
demon skeleton, but apperently that's normal here too.
"

DG_nextindex[DG_page] = 35;

//SELECT3
//Page 35
DG_page = 35;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"On top of that, most people are looking for a fight,
I just want to finish my job and go home.
"

DG_options[DG_page] = 
"Don't worry about it much, not everything is about work.
I was accepted pretty warmly here though.
"
			
DG_answers[DG_page] = [36,41];

//OPTION3-1
//Page 36
DG_page = 36;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I- Guess so... Maybe I can just stop to smell the flowers
a bit...
"

DG_nextindex[DG_page] = 37;

//Page 37
DG_page = 37;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"..But for now time is against me, creatures of the abyss
appearing all over this world, I should at least wrap that
up."

DG_nextindex[DG_page] = 38;

//Page 38
DG_page = 38;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Thanks for the chat uhm...

"

DG_nextindex[DG_page] = 39;

//Page 39
DG_page = 39;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"My name is Callie.

"
DG_nextindex[DG_page] = 40;

//Page 40
DG_page = 40;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Haha... I forgot to ask for your name...
I-I see.. thanks, Callie.
"

//OPTION3-2
//Page 41
DG_page = 41;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1; //1 - flustered af
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Really? I guess I was too tunnel-visioned for finishing my
job here to notice...
"

DG_nextindex[DG_page] = 42;

//Page 42
DG_page = 42;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Maybe I should explore more of what's around me...
It could help me get around... Possibly.
"

DG_nextindex[DG_page] = 43;

//Page 43
DG_page = 43;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Can't help but feel like I'm sticking my nose into
other people's business.
"

DG_nextindex[DG_page] = 44;

//Page 44
DG_page = 44;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I should go, I feel like it would help understanding this world
and it's people, so I can do a decent job at preventing a
disaster waiting to happen."

DG_nextindex[DG_page] = 38;