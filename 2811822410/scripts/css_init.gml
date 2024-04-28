

//menu stuff
menu_state = "choose";
browser_show = false; //Whether or not to display the game.
game_show = false;

search_term = ""; //search terms
successful_search = 0; //Number of successes
search_page = 0;
search_max = 7; //Max Lines per page

/*
hitbox_list = [
	//[AT_FAIR, sprite_get("fair"),  sprite_get("fair_hurt"), 0, 2, 0, 40, -45, 70, 90]
];
*/

//Load offsets
user_event(1)
small_sprites = 0;
idle_anim_speed = 6;
idle_frame_count = 8;

browser_type = "Info Deluxe";

text_timer = 0
//Info Data
info_text = 
[
	"test",
	"test but long",
	" test",
	"I put test",
	"not tset",
	"gamer"
]
pages =
[
	["Home Page", "Thank you using the Dino-Browser your source of Info on the CSS! Type out your searches! Press LB or RB to change page!"],
	["NSPECIAL Info", "NSPECIAL is a multi-hit projectile that deals 2% that can be held indefinitely with special. Releasing special puts out a launching hitbox."],
	["NSPECIAL Weakness", "Miku cannot attack while leek is out. Opponents parrying the leek puts you into parrystun."],
	["FSPECIAL Info 1/2", "FSPECIAL is a forward moving dash that can cancelled into an attack. You will not be put into pratfall when using this move"],
	["FSPECIAL Info 2/2", "Clone faces your input direction. Cancelling on the ground let's Miku slide along the ground"],
	["FSPECIAL Weakness", "This move can only be used once per air time and once per wall jump, so use it safely when recovering."],
	["FSPECIAL Tips", "Double Jump after FSPECIAL is over to carry the speed into your recovery or to get follow ups on the opponent."],
	["USPECIAL Info 1/2", "USPECIAL is strong kill move that has poor vertical and horizontal reach. Hitting the early hit will deal a lot of knockback."],
	["USPECIAL Info 2/2", "On hitting the early hitbox you can reverse your direction by holding the opposite way while in hitpause."],
	["USPECIAL Weakness", "Due to USPECIAL's low height and very low drift it is not a good idea to use USPECIAL too far away from the stage."],
	["DSPECIAL Info", "DSPECIAL sets up a clone that can read attack and strong based inputs. Holding the input allows the clone to store the move for later."],
	["DSPECIAL Weakness", "Opponents hitting the clone destroys it and puts it on a cooldown. When the owner is hit the clone loses it's held attack."],
	["JAB Info", "A basic 2 Hit leek swing."],
	["Dash Atttack Info", "Outward sending leek hit. Dash Attack Cancel Up Strong is very good at catching opponents."],
	["FTILT Info", "Big horizontal disjointed outwards sending hitbox."],
	["DTILT Info", "Quick outward leek poke with a lot of range."],
	["UTILT Info", "Lingering upward sending combo move with the leek."],
	["FSTRONG Info", "Strong horizontal kill move with a lot of disjoint with high whifflag."],
	["DSTRONG Info", "Wide ranged kill move that has an awkward DI angle for opponents. Small blind spot on top of Miku."],
	["USTRONG Info", "Strong vertical kill move with a thin hitbox."],
	["NAIR Info", "Multihitting combo move. Try hitfalling it for great damage especially with clone."],
	["FAIR Info", "Big outward sending move with a leek."],
	["DAIR Info", "Big weak leek hitbox that sends in, but has a strong spike in the middle for 1 frame."],
	["BAIR Info", "Small combo move with the leek."],
	["UAIR Info", "Big juggling vertical hitbox for ladder combos. Try using Uspecial as a finisher near the top of your ladder combo."]
]
used_pages = [];

button_cord = [80, 12];
/*
	"test",
	"Test",
	"Hello World test",
	"(test)",
	"tset"
*/

css_window = 1;
css_window_timer = 0;

css_x = 6;
css_y =  7;
css_w = 8; 
css_h = 9;
