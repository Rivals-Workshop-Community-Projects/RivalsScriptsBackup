if enemy_hitboxID.kb_scale > 0 {
    mau_hitstun_scale = true;
} else if enemy_hitboxID.kb_scale = 0 {
    mau_hitstun_scale = false;
}

if(attack = (AT_FSPECIAL || AT_FSPECIAL_2)){
    grabbed_player_obj = noone;
	fspecstrongfx = false;
	bubblearticle.grabbed_by_mau = false;
}

if(attack = AT_USPECIAL){
    grabbed_player_obj = noone;
	uspecstrongfx = false;
	bubblearticle.grabbed_by_mau = false;
}

if(attack = AT_FSTRONG){
    grabbed_player_obj = noone;
	fstrongstrongfx = false;
	bubblearticle.grabbed_by_mau = false;
}