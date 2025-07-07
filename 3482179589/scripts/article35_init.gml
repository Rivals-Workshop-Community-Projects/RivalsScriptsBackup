// dialogue
// i have to go through all this trouble just because gml doesn't allow array access for strings...
// is it better than using string_copy() or string_char_at() a bunch? idk, probably
sprite_index = sprite_get("bg1_B")

depth = -700
/*
rand_chars = [
    "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
    "0","1","2","3","4","5","6","7","8","9",
    "!","?",".",",","@","#","$","%","&","~"," "
];
space_index = array_length(rand_chars) - 1;*/


cutscene_triggered = 0;
cutscene_timer = 0;