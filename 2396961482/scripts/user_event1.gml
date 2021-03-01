//woag easy dategirl compat
//(template by vman_2002, updated for stages)

//put this script in your character folder, name it "user_event#.gml" but replace # with any number of 0-15

/* //put this in init.gml (or load.gml for stages)
//================

dategirl_init = 0
Chatting = true

//================
*/

/* //put this in update.gml, remember to replace the #
//================

if (dategirl_init < 9) {
	dategirl_init++
	var dategirl_real = false
	with (oPlayer) {
		if (self != other && "url" in self && url == "2396061657") dategirl_real = true
	}
	if (dategirl_real) {
		DG_chat_type = []
		user_event(#) //use the same number from your filename
		dategirl_init = 9
	}
}

//================
*/

//note that on a stage, you CANNOT make the Your Char say words (but choices still work)
//example dialogue here:

DG_portrait = sprite_get("DG_portrait")

DatePage(0, "IM ON A MISSION WHO ARE YOU?!?!", 0, -10) //-10 to go to the next page
DatePage(1, "So this is what they meant when they said", 0, -10)
DatePage(1, "theres plenty of other fish in the sea!", 0, -10)
DatePage(2, "Stop wasting my time! Can't you see I'm busy?", 0, -10)
DatePage(2, "This is seriously cutting into a future nap...", 0, -10)
DatePage(1, "Do you live in a pineapple under the sea?", 0, -10)
var Choice1 = DateChoice(0, "Enough. I need to find the Pearl of Aether!", 0, "Hmph! Take a girl out first before you ask for pearls!
If I get your pearl will you be mine? Forever?
I'm bored! All work, no play!")

var Choice1a = DatePage(0, "You've got to be kidding me.", 0, -10)
DatePage(0, "Who put you up to this? Was it Orcane? Am I being pranked?", 1, Choice1) //return to the previously remembered branch

var Choice1b = DatePage(0, "Uh...Well I do love me a lady in pink...", 0, -10)
DatePage(1, "And I do love fishing for compliments!", 2, Choice1) //return to the previously remembered branch

var Choice1c = DatePage(0, "So much for Lovers of Aether. Only Rivals of Aether now!", 0, -1) //-1 to end the conversation

DateSetChoices(Choice1, Choice1a, Choice1b, Choice1c) //link the branch together

//function code, be careful here

#define DatePage(_spk, _text, _exp, _next)
//_spk: 0: your char, 1: callie
//_text: what the speaker is saying
//_exp: your character's expression
//_next -1: end dialog, -10: _num + 1, any else: use a page number
//return value: this page number, use with DateSetChoices to link to a choice
var is_stage = (object_index == obj_stage_main)
var _cpage = array_length_1d(DG_chat_type)
DG_chat_type[_cpage] = _next == -1 ? 3 : 2;

DG_adopts_color_left[_cpage] = true;
DG_adopts_color_right[_cpage] =  true;
if ("DG_portrait" not in self) DG_portrait = asset_get("net_disc_spr")

var _spriteexist = sprite_exists(DG_portrait) && DG_portrait != asset_get("net_disc_spr")
var _frame = _spriteexist ? _exp : 1

var _spkside = (_spk == 1) != is_stage

DG_left_strip[_cpage] = is_stage ? 0 : _frame; 

DG_right_strip[_cpage] = is_stage ? _frame : 0;

DG_custom_left_portrait[_cpage] = _spriteexist && !is_stage;
DG_custom_right_portrait[_cpage] = _spriteexist && is_stage;

// Dialogue of the character on the Right Side
DG_right_speaker[_cpage] = _spkside;
DG_dialogue_right[_cpage] = _spkside ? _text : "";

// Dialogue of the character on the Left Side
DG_dialogue[_cpage] = _spkside ? "" : _text;

if (_next != -1) {
	DG_nextindex[_cpage] = _next == -10 ? _cpage + 1 : _next;
}
return _cpage

#define DateChoice(_spk, _text, _exp, _choicetx)
//_spk: 0: your char, 1: callie
//_text: what the speaker is saying
//_exp: your character's expression
//_choicetx: the 3 choices for this branch, seperated by newline
//return value: this page number, use with DateSetChoices to link to pages
var _cpage = DatePage(_spk, _text, _exp, -1)
DG_chat_type[_cpage] = 1
DG_options[_cpage] = _choicetx
return _cpage

#define DateSetChoices(_id, _choice1, _choice2, _choice3)
//_id: choice page number to set the links of
//_choice1: 1st answer's page
//_choice2: 2nd answer's page
//_choice3: 3rd answer's page
DG_answers[_id] = [_choice1, _choice2, _choice3]