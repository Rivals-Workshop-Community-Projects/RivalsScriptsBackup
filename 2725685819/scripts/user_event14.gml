//init vars
camera_x = 0;
camera_y = 0;


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

//Tab Titles, change as needed. Find --TAB DATA-- on user_event15.gml and edit to assign the contents
pages_arr = ["Move list", "Settings", "Tips", "About"];


/*
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


]

//Tips tab data
tips_arr = [

[2, "Hold Buttons", "*@$^#(&!ASDZXC", "Buttons that can be held.
Usually needed for dashing attacks or charging attacks."],

[2, "Just Frame!", "623a", "[JUST Blade Storm] is accessible by pressing the 
last two inputs on the same frame."],

[2, "CHAOS", "", "Attacking opponents build up their Chaos.
At 7 stacks they will be Chaos bound.
EX moves can be performed on Chaos bound opponents"],

[2, "EX Specials", "", "Stronger variations of Specials. Most are tied to the Chaos mechanic."],

[2, "2nd Taunt", "", "A 2nd Taunt is accessible with [Taunt + Shield]
this Taunt may change depending on the color used"],

]

//Settings tab data
extras_arr = [
[1, "--Training Settings--", "", ""],
[3, "1 Hit Chaos", false, "Full stack Chaos on 1 hit"],
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
SETTINGS/CHEATS

Use data with type 3 for variables you want to toggle

example_var = extras_arr[setting_index][2];

*/