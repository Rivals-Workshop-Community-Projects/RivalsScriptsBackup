//hit_player.gml
var hitmove = my_hitboxID.attack;
var SigBonus = 0;

//CATS


//HOOK
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.type == 2 && my_hitboxID.hbox_num==1) {
    old_vsp = vsp;
    old_hsp = hsp;
    hitstop = 10;
    hitpause = 1;
    hook.state = 1;
    hitten = 1;
    move_cooldown[AT_USPECIAL] = 0;
}

//DSTRONG (CHOPPING BLOCK) COMMAND GRAB
if (my_hitboxID.attack == AT_DSTRONG){
    if (((window == 2) or (window == 3)) and grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
    }
}

//USTRONG (THRONE) NO MORE GALAXY
if (my_hitboxID.attack == AT_USPECIAL) {
    hit_player_obj.should_make_shockwave = false;
}

if (hitmove = AT_BAIR or hitmove = AT_DSTRONG or hitmove = AT_USTRONG or hitmove = AT_DAIR) {
	SigBonus = 6;
    
} else if (hitmove = AT_NAIR or hitmove = AT_DATTACK or hitmove = AT_FTILT or hitmove = AT_UTILT or hitmove = AT_JAB) {
	SigBonus = 2;
    
} else if (hitmove = AT_NSPECIAL or hitmove = AT_USPECIAL or hitmove = AT_DSPECIAL or hitmove = AT_DSPECIAL_AIR or hitmove = AT_EXTRA_2) {
	SigBonus = 1;
	
} else {
	SigBonus = 4;
    
}

if (GAUGE_SIG_CURRENT = 25 and GAUGE_UNLOCK != 1) { SIG_CHARGE = 0; SigBonus = 0;}
if (GAUGE_SIG_CURRENT = 50 and GAUGE_UNLOCK != 2) { SIG_CHARGE = 0; SigBonus = 0;}
if (GAUGE_SIG_CURRENT = 75 and GAUGE_UNLOCK != 3) { SIG_CHARGE = 0; SigBonus = 0;}


//GIVE THE BONUS SIG FROM STRONGS
if (GAUGE_SIG_CURRENT < GAUGE_SIG_MAX) {
    GAUGE_SIG_CURRENT += SigBonus;
}

if (GAUGE_SIG_CURRENT > GAUGE_SIG_MAX) {
	GAUGE_SIG_CURRENT = GAUGE_SIG_MAX;
}

//CODE UNDER IS ALSO IN PARRY.GML SO IF YOU UPDATE DO IT THERE AS WELL
//LOCKS
if (GAUGE_SIG_CURRENT > 25 and GAUGE_UNLOCK = 0) {
	GAUGE_SIG_CURRENT = 25;	
}
if (GAUGE_SIG_CURRENT > 50 and GAUGE_UNLOCK = 1) {
	GAUGE_SIG_CURRENT = 50;	
}
if (GAUGE_SIG_CURRENT > 75 and GAUGE_UNLOCK = 2) {
	GAUGE_SIG_CURRENT = 75;	
}
