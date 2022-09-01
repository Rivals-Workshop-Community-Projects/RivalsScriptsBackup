/* 

--PORTING GUIDE--

if you're porting Turpix Tablet into an already existing character,
then these are the necessary files


Copy the files articlesolid_init.gml and articletablet_post_draw.gml

Copy the fonts folder, _notation_strip41.png, and tpxtab_icon.png

--paste in attack_update.gml BOTTOM--
tpx_event = 2;
user_event(15);

--paste in set_attack.gml BOTTOM--
tpx_event = 3;
user_event(15);

--paste in update.gml TOP--
tpx_event = 4;
user_event(15);

--paste in init.gml BOTTOM--
user_event(14);


~~Table of Contents~~
Search for these lines in the user_event files

	user_event14.gml:
		1. --THEME--
		2. --SETTING UP THE CONTENT--
		3. --SETTINGS/CHEATS--



*/


//init vars
camera_x = 0;
camera_y = 0;


/*
	--THEME--
Change the colors here

*/

/* ---Base--- */

//Base color
tab_base_col = c_black;

//Scroll Bar color
tab_scrollbar_col = c_white;

//Inactive Tab color
tab_inactivetab_col = c_dkgray;

//Select Tab Text color
tab_tabtext_col = c_white;

//Inactive Tab Text color
tab_tabtextinactive_col = c_gray;

//Icon
tab_icon = sprite_get("tpxtab_icon");
tab_icon_x = -176;
tab_icon_y = 0;
//Title
tab_title = "TURPIX TABLET v1.0";
tab_title_col = c_fuchsia;




/* ---Notations--- */

//Notation Base color
tab_notation_col1 = c_aqua;
tab_notation_col2 = c_teal;

//Inactive Notation Base color
tab_inactivenotation_col = c_dkgray;

//Notation Comment color
tab_notationcom_col = c_gray;

//Notation Title color
tab_notationtitle_col = c_white;

/* ---Category--- */

//Category Base color
tab_category_col1 = c_fuchsia;
tab_category_col2 = c_fuchsia;

//Inactive Category Base color
tab_inactivecategory_col = c_purple;

//Category Text color
tab_categorytext_col = c_fuchsia;

/* ---Tips--- */

//Tips Base color
tab_tip_col1 = c_yellow;
tab_tip_col2 = c_orange;

//Inactive Tips Base color
tab_inactivetip_col = c_dkgray;

//Tips Comment color
tab_tipcom_col = c_white;

//Tips Title color
tab_tiptitle_col = c_fuchsia;

/* ---Settings--- */

//Setting Base ON color
tab_setbaseon_col1 = c_lime;
tab_setbaseon_col2 = c_green;

//Setting Base OFF color
tab_setbaseoff_col1 = c_red;
tab_setbaseoff_col2 = c_maroon;

//Inactive Setting Base color
tab_inactiveset_col = c_dkgray;

//Setting Comment color
tab_setcom_col = c_gray;

//Setting Title color
tab_settitle_col = c_white;

//Setting ON color
tab_seton_col = c_lime;

//Setting off color
tab_setoff_col = c_red;


/* ---END--- */

tablet_article = instance_create( x, y, "obj_article_solid" );

tpx_event = 0;


//movelist
list_open = false;

list_selected = 0;
visible_selected = 0;
max_visible = 4;

select_y = 0;
current_y = 0;
scroll_timer = 25;

tips_page = 0;

current_arr = 0;




/*

--SETTING UP THE CONTENT--

Data format is [type, title, value, comment]

	Types: 
		0 - Notation 	; Value is read as notations for the movelist
		1 - Category 	; Can be skipped to with left and right buttons
		2 - Tips 		; Bigger frame for longer comments, value is read as notations. Please use only one size as multiple sizes in one tab is not supported.
		3 - Settings 	; Toggleable with attack button, value is read as boolean


	NOTATION:
		Notations are coded as a Font, please refer to the file [.../fonts/_notations.ini], and the sprite [.../sprites/_notation_strip40.png] for visual reference

		Directions are based on Numpad Notation [123456789]
		Face Buttons are [asd]; a s d = attack special strong
		Combo Buttons are [zxc]; z x c = atkspecial, atkstrong, strongspecial
		
		Taunt button is n
		Shield button is j


		Shift variants/Uppercase of these characters will be the Hold versions (except for neutral)

		OR icon = |
		> icon = -
		[] icons = []


*/

//Move list tab data
moves_arr = [
//Specials
[1, "--Specials--", "", ""],
[0, "Blade Storm", "s", ""],
[0, "Blade Beam", "6s", ""],

[0, "Spatial Hop", "8s", "Can be redirected
Pratfall"],
[0, "Heaven's Door", "2s", "Pratfall on whiff / parry"],
[0, "Heaven's Door into Stinger", "2sA", ""],
[0, "JUST Blade Storm", "623s", "Just Frame"],

[1, "--EX Specials--", "", ""],
[0, "Storm Catch", "s-6s", ""],
[0, "EX Blade Storm", "S", "Requires Opponent in full Chaos
Homing"],
[0, "EX Spatial Hop", "8S", "Requires Opponent in full Chaos
Homing"],
[0, "EX Heaven's Door", "2s", "Requires Opponent in full Chaos
Pratfall on whiff / parry"],

//A moves
[1, "--Ground Moves--", "", ""],
[0, "Saya Bash", "aa", "Parry safe"],
[0, "Double Slash", "6a", ""],
[0, "Tripper", "2a", ""],
[0, "Upper Cleave", "8a", ""],
[0,	"Chaos Slash", "^a", "While Running"],
[0,	"Chaos Slash into Heaven Stab", "^a-8D", "While Running, On-hit"],

//Aerials
[1, "--Aerials--", "", ""],
[0, "Aerial Rave", "aaa", "Aerial, On-hit"],
[0, "Stinger", "6a^|(|#", "Aerial, Early Strong Hit
Wall Cling"],
[0, "Winding Slash", "8a", "Aerial"],
[0, "Back Cleave", "4a", "Aerial"],
[0, "Quick Draws", "2a", "Aerial"],

//Strongs
[1, "--Strongs--", "", ""],
[0, "Heavy Slash", "6D", ""],
[0, "Heaven Stab", "8D", ""],
[0, "Double Slash", "2D", ""],

//Misc
[1, "--Misc--", "", ""],
[0, "Taunt", "n|@j", "2nd input required 
for use with tablet"],
[0, "Special Taunt", "JN", "Input Simultaneously"],

]

//Tips tab data
tips_arr = [

[2, "Hold Buttons", "*@$^ASD", "Buttons in this style can be held.
Usually needed for dashing attacks or charging attacks."],

[2, "Just Frame!", "623s", "[JUST Blade Storm] is accessible by pressing the 
last two inputs on the same frame."],

[2, "CHAOS", "", "Attacking opponents build up their Chaos.
At 7 stacks they will be Chaos bound.
EX moves can be performed on Chaos bound opponents"],

[2, "EX Specials", "", "Stronger variations of Specials. Most are tied to the Chaos mechanic."],

[2, "2nd Taunt", "JN", "This Taunt may change depending on the color used"],

]

//Settings tab data
extras_arr = [
[1, "--Training Settings--", "", ""],
[3, "1 Hit Chaos", false, "Full stack Chaos on 1 hit"],
[3, "Extend CPU Parry", false, "CPU Parries will be 
extended for easier testing"],
[1, "--Misc--", "", ""],
[3, "Style Meter", sparda, "Toggle DMC Style Meter"],
]

//About tab
about_arr = [

[2, "Turpix Tablet v1.0", "55555", "Turpix Tablet is made by... Turpix!"],
[2, "Other stuff", "55555", "Sub to my characters: Turpix, Pikachu Mishima, Ekko, Annie
Follow me on Twitter (@turpix_00) and Youtube (/turpix)"],
]


/* 
	--SETTINGS/CHEATS--

Use data with type 3 for variables you want to toggle

var example_var = extras_arr[setting_index][2];

*/

/*
	--TAB DATA ASSIGNMENT--
["tab title", max_visible, array]

max_visible:
	4 - used for arrays containing types 0,1,3
	2 - used for arrays containing type 2

*/
pages_arr = [
["Move list", 4, moves_arr], 
["Settings", 4, extras_arr], 
["Tips", 2, tips_arr], 
["About", 2, about_arr],
];