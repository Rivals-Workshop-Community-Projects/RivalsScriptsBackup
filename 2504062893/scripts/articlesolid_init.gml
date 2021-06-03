
// ALL COPIED FROM ARTICLE 2

sprite_index = sprite_get("loxoblock");
lifespan = 600;

// NEW NEW IDEA: WHAT IF ARTICLE SOLID BUT IT INSTANTLY BREAKS (VANISHES) IF THE OPPONENT TOUCHES IT

var max_attempts = 20;
var attempts_used = 0;
var shift_distance = 32;

while (place_meeting(x,y,asset_get("par_block"))){
	y -= shift_distance;
	attempts_used++;
	if (attempts_used >= max_attempts){
		break;
	}
}