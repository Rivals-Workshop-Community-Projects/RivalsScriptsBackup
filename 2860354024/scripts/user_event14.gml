/* 

this is hella scuffed pls dont port this one, wait for sandbert tablet to get updated

--PORTING GUIDE--

if you're porting Turpix Tablet into an already existing character,
then these are the necessary files

Sprite filename for pulling out the Tablet is _tablet_strip9.png

Copy the files articlesolid_init.gml and articletablet_post_draw.gml

Copy the fonts folder, _notation_strip41.png, and _tpxtab_icon.png

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
I've set up regions for easy jumping to the parts that can be edited in GMEdit.

if you dont use GMEdit, search for these lines in the user_event files

	user_event14.gml:
		1. --THEME--
		2. --SETTING UP THE CONTENT--
		3. --SETTINGS/CHEATS--
	
	user_event15.gml:
		1. --SETTINGS/CHEATS CODE HERE-- 


*/


//init vars
camera_x = 0;
camera_y = 0;

#region THEME
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
tab_icon = sprite_get("_tpxtab_icon");
tab_icon_x = -176;
tab_icon_y = 0;
//Title
tablet_ver = "1.3";
tab_title = "TURPIX TABLET v"+tablet_ver;
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
#endregion

//movelist
tab_dummy_player = noone;
tab_is_dummy = false;
tab_dummy_master = noone;

tablet_article = instance_create( x, y, "obj_article_solid" );

tpx_event = 0;

list_open = false;

list_selected = 0;
visible_selected = 0;
max_visible = 4;

select_y = 0;
current_y = 0;
scroll_timer = 25;
tab_slider_timer = 0;

tab_type_timer_def = 30;
tab_type_timer = tab_type_timer_def;
tab_val_string = "0";
tab_type_start = false;
tab_is_typing = false;
tab_held_key = 0;
tab_can_type = true;

tab_current_frame = 0;
tab_frame_type = 0; //0 startup 1 active 2 recovery
tab_frame_color = c_blue;
tab_last_window = 0;
tab_loop_frames = 0;
tab_loop_timer = 0;
tab_type_timer = 0;

tab_iasa_check = false; //set this to true in Attack Update in windows with IASA script

for (i = 60; i >= 0; i--){
framedata_arr[i] = [noone,0,0,0];
}




tab_confirm_type = "--";

tab_top_text = "[JUMP/SHIELD] Change Tab | [TAUNT] Exit 
" + tab_confirm_type + " | [B] Control";

tips_page = 0;

current_arr = 0;

moves_arr = [];
tips_arr = [];
extras_arr = [];
about_arr = [];
pages_arr = [];


