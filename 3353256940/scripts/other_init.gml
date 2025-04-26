//other init, sets variables you put on OTHER players

if ("is_twenny" not in self) is_twenny = false;
if ("has_twenny_electric" not in self) has_twenny_electric = false;

twenny_hexed = false;
twenny_hex_owner = noone;
twenny_hex_timer = 0;
twenny_text_timer = 0;
twenny_hex_outline = []; // gets set on hit