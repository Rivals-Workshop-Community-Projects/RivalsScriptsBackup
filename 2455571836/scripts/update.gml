if (!free or state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
}

if (state == AT_USPECIAL && window = 5 && !free){
    window = 6;
}