//battle buttons
timer = 0;

buttonIndex = 0;

touchTimer = 0; //number of frames touching a button

touchingButton = false;

sprite_index = sprite_get("battle_buttons");
mask_index = sprite_get("battle_buttons");

depth = 4;

can_deal_damage = false;

disable_movement = true;