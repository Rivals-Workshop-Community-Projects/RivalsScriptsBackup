//text box/speech bubbles
timer = 0;

depth = 4;
sprite_index = asset_get("empty_sprite");

text_current = ""; //whats being displayed live.

text_type = 1; //textbox, speech bubbles, essay etc

text_index = 0; //increments when next textbox is displayed

finished = false; //when finished writing out all text

text_arr = undefined; //array of the current text

can_attack_skip = true; //whether player can skip text by attacking

can_deal_damage = false;

disable_movement = true;