//The variable used to randomize the stage's music, set to -1 for the randomizer in update.gml to work.
cur_song = -1

//Variables relating to the moving platform.
wood_state = 1
wood_timer = 1
wood_mode = 1
if is_aether_stage() {
    wood_mode = 2
}

//Timers for each article with animation, as using image_speed doesn't stop when paused.
sunflower_timer = 1
lilac_timer = 1
tornado_timer = 1
eggmobile_timer = 1
speedstar_timer = 1

//Variables that control the order, and state, of the cameos.
cameos_state = 1
cameos_timer = 1
chase = (random_func( 1, 4, true)+1);

//Steve block compat:
//Dirt (Checkerboard Dirt)
steve_material_0 = {
	type: "custom_dirt",
	block: sprite_get("steve_0_block"),
	item: sprite_get("steve_0_item"),
	drop: sprite_get("steve_0_drop"),
	particle: sprite_get("steve_0_particle"),
	gauge: sprite_get("steve_0_gauge"),
};
//Wood (Wood)
steve_material_1 = {
	type: "custom_wood",
	block: sprite_get("steve_1_block"),
	item: sprite_get("steve_1_item"),
	drop: sprite_get("steve_1_drop"),
	particle: sprite_get("steve_1_particle"),
	gauge: sprite_get("steve_1_gauge"),
};
//Stone (Totem Pole)
steve_material_2 = {
	type: "custom_totem_pole",
	block: sprite_get("steve_2_block"),
	item: sprite_get("steve_2_item"),
	drop: sprite_get("steve_2_drop"),
	particle: sprite_get("steve_2_particle"),
	gauge: sprite_get("steve_2_gauge"),
};
//Iron (Capsule Metal)
steve_material_3 = {
	type: "custom_capsule_metal",
	block: sprite_get("steve_3_block"),
	item: sprite_get("steve_3_item"),
	drop: sprite_get("steve_3_drop"),
	particle: sprite_get("steve_3_particle"),
	gauge: sprite_get("steve_3_gauge"),
	gauge8: sprite_get("steve_3_gauge8"),
};

//Callie Date
//Date Girl Support. Generated using McDucky's Date Girl Generator! 
Chatting = true;
DG_portrait = sprite_get("DG_portrait");
var DG_page = 0;

//Page 0 - Discovery
//---------------------------------------------------
DG_page = 0;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Hello!
Welcome to Green Hill Zone!
"

DG_nextindex[DG_page] = 1;

//Page 1 - Tour Start
//---------------------------------------------------
DG_page = 1;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Green Hill Zone is a natural paradise, full of wonder!
Let me take you on a tour, where should we start?
"

DG_options[DG_page] = 
"The waterfall! What a view...
The giant loop...?
Green Hill... Zone? What's a Zone?"
			
DG_answers[DG_page] = [2,5,10];

//Page 2 - Waterfall A
//---------------------------------------------------
DG_page = 2;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It's such a pretty waterfall, isn't it? Green Hill is known
for its large waterfall vistas and beautiful blue lakes.
They come from the mountains in the distance!"

DG_nextindex[DG_page] = 3;

//Page 3 - Waterfall B
//---------------------------------------------------
DG_page = 3;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I'd love to sit on one of the bridges and listen to the
waters roar... Maybe take a nap under a palm tree...
"

DG_nextindex[DG_page] = 4;

//Page 4 - Waterfall C
//---------------------------------------------------
DG_page = 4;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Oh, sorry! We should continue the tour, shouldn't we?
What else do you want to see?
"

DG_options[DG_page] = 
"Why is there a loop-de-loop?
I'm still confused what a Zone is...
I'm good, let's end the tour."
			
DG_answers[DG_page] = [5,10,13];

//Page 5 - Loop A
//---------------------------------------------------
DG_page = 5;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Oh, right! The loop!
While Green Hill Zone has mostly gently-sloping hills,
there's plenty of crazier set pieces dotted all over."

DG_nextindex[DG_page] = 6;

//Page 6 - Loop B
//---------------------------------------------------
DG_page = 6;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"The giant loops are just one of many! My favorites are the 
corkscrews, they look so thrilling to run through...!
"

DG_nextindex[DG_page] = 7;

//Page 7 - Loop C
//---------------------------------------------------
DG_page = 7;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"...I'd probably fall off though.

"

DG_nextindex[DG_page] = 8;

//Page 8 - Loop D
//---------------------------------------------------
DG_page = 8;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Anyway! Why is Green Hill's terrian so crazy?
It's all part of the 'twisty, bouncy beauty of nature'!
"

DG_nextindex[DG_page] = 9;

//Page 9 - Loop E
//---------------------------------------------------
DG_page = 9;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"So, what else should we see?

"

DG_options[DG_page] = 
"That waterfall was nice
...What's a Zone?
I've seen everything."
			
DG_answers[DG_page] = [2,10,13];

//Page 10 - Zone A
//---------------------------------------------------
DG_page = 10;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Zones are different biomes and locations!
They're usually used to refer to the areas on the smaller
islands found in Sonic's world."

DG_nextindex[DG_page] = 11;

//Page 11 - Zone B
//---------------------------------------------------
DG_page = 11;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Green Hill Zone is on South Island, where Sonic's first
adventure against Dr. Eggman took place!
There's a lot more to South Island than Green Hill though."

DG_nextindex[DG_page] = 12;

//Page 12 - Zone C
//---------------------------------------------------
DG_page = 12;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Underground mazes, ancient ruins, and even a starry city!
I'd love to travel the island and see each one someday.
Let's continue the tour though! Where next?"

DG_options[DG_page] = 
"How about the waterfall?
Can we talk about the loop?
End the tour, I'm alright."
			
DG_answers[DG_page] = [2,5,13];

//Page 13 - Tour End A
//---------------------------------------------------
DG_page = 13;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Aw, that's it?
But we haven't even seen the Motobugs yet!
Or what about the bouncing lilacs?!"

DG_nextindex[DG_page] = 14;

//Page 14 - Tour End B
//---------------------------------------------------
DG_page = 14;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0;
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = false;
DG_custom_right_portrait[DG_page] = true;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"...Oh well, thanks for joining me!
If you want to see more, just ask!
"
