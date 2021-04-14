//use a true/false variable to handle upspecial's cooldown
if(usedUspecial == true){
	move_cooldown[AT_USPECIAL] = 999;
} else {
	move_cooldown[AT_USPECIAL] = 0;
}

//remove uspecial cooldown if the player lands or walljumps
if (state_cat == SC_GROUND_COMMITTED || state == PS_WALL_JUMP){
	usedUspecial = false;
}

if(hexDebuffID != noone){
    var dead;
    dead = hexDebuffID.state == PS_DEAD or hexDebuffID.state == PS_RESPAWN;
    
    if(dead){
        hexDebuffID.debuff = false;
        hexDebuffID.debuff_id = noone;
        hexDebuffID = noone;
    }
}

if (move_cooldown[AT_FSPECIAL]==1){
    sound_play(sound_get("cooldown"));
}

if (move_cooldown[AT_DSPECIAL]==1){
    sound_play(sound_get("cooldown"));
}

if (move_cooldown[AT_NSPECIAL]==1){
    sound_play(sound_get("cooldown"));
}

