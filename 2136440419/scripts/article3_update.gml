with (player_id) {
	// Check for the actual player the article belongs to
	if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
		practice_mode = true;
	}
	
	steam_text[0] = "Hodan is a charge character
vertically and horizontally.
He charges steam by holding
a direction in any state. He
can cap his steam in all
directions with vapour
created by Sweatwhirl.
F/NSPECIAL and USPECIAL"
	steam_text[1] = "have special charged
variants if used when
the charge is opposite
to their direction 
(i.e., downwards charge
with USPECIAL). Charging
also increases the damage
of all of your moves"
	steam_text[2] = "by a small amount,
and FAIR and DATTACK 
are slightly stronger
moves if used with
forward charged steam.
NAIR can be extended by
being held. Proper info and
frame data coming soon!"
}

/*#define word_wrap(string, width)

var _str = string;
var debug_w = width;

if string_width(_str) > debug_w for (var i = 0; i < string_length(_str); i++) {
    if i % debug_w == 0 _str = string_copy(_str,i,i)+"
"+string_copy(_str,i,string_length(_str)-i);
} 

return _str;*/