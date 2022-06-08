if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2 {
	old_vsp = -3;
}
if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -3;
}
if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -3;
}
if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -5;
}
if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -3;
}
if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 2 {
	old_vsp = -2;
}
if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 4 {
	old_vsp = -1;
}


if(spr_dir = 1){
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1 {
        window = 3;
	old_vsp = -7;
	old_hsp = -4;
}
}
if(spr_dir = -1){
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1 {
        window = 3;
	old_vsp = -7;
	old_hsp = 4;
}
}
if(spr_dir = 1){
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2 {
        window = 3;
	old_vsp = -7;
	old_hsp = -4;
}
}
if(spr_dir = -1){
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2 {
        window = 3;
	old_vsp = -7;
	old_hsp = 4;
}
}
if(spr_dir = 1){
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3 {
        window = 3;
	old_vsp = -7;
	old_hsp = -4;
}
}
if(spr_dir = -1){
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3 {
        window = 3;
	old_vsp = -5;
	old_hsp = 3;
}
}

if(spr_dir = 1){
if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2 {
	old_hsp = -3;
}
}
if(spr_dir = -1){
if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2 {
	old_hsp = 3;
}
}

if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -3;
}

if(spr_dir = 1){
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
        window = 3;
	old_vsp = -7;
	old_hsp = -3;
}
}
if(spr_dir = -1){
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
        window = 3;
	old_vsp = -7;
	old_hsp = 3;
}
}

    
if my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1 {
	sound_play(sound_get("hit_heavy"));
}
    
if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 {
	sound_play(sound_get("hit_heavy"));
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
        spawn_hit_fx( x, y, icebreak );
	sound_play(sound_get("hit_ice"));
}
if my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 1 {
        spawn_hit_fx( x, y, icebreak );
	sound_play(sound_get("hit_ice"));
}


if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1 {
	sound_play(sound_get("hit_punch"));
}
if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2 {
	sound_play(sound_get("hit_punch"));
}
if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 3 {
	sound_play(sound_get("hit_punch"));
}
if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 4 {
	sound_play(sound_get("hit_punch"));
}


if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 {
            take_damage(player, 3, 3);
}
if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2 {
            take_damage(player, 2, 2);
}