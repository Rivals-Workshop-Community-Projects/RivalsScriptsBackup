//

sprite_index = sprite_get("squares");
mask_index = sprite_get("square_hurt");
orgImageIndex = 0;

can_be_grounded = false;
ignores_walls = true;//false; breaks on kragg

typCol = noone;

grounded = false;

hpMax = 30;
hp = hpMax;
died = false;
last_hitbox = 0;

hardDropped = false;
sparks = -1;
cleared = false;
playFx = false;
destroyNext = false;

depth = 6;//6 is needed for orcane puddle... but it should be less so kragg wall is behind? idk
