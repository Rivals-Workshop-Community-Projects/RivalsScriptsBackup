//hit_player

//the sfx for boosted strongs
if(my_hitboxID.attack==AT_USTRONG&&strong_boost&&my_hitboxID.hbox_num!=3){
    heavytimer=60;
}

if(my_hitboxID.attack==AT_FSTRONG&&strong_boost){//&&my_hitboxID.hbox_num!=2){
    heavytimer=60;
}

if(my_hitboxID.attack==AT_DSTRONG&&strong_boost&&my_hitboxID.hbox_num!=1){//&&my_hitboxID.hbox_num!=3){
    heavytimer=60;
}

/*if(my_hitboxID.attack==AT_FSPECIAL&&my_hitboxID.hbox_num!=1){//&&my_hitboxID.hbox_num!=3){
    heavytimer=60;
}///*/

if(my_hitboxID.attack==AT_DSTRONG&&my_hitboxID.hbox_num=1){
	hit_player_obj.should_make_shockwave=false;
}

//was for effect, now deprecated
/*if (my_hitboxID.attack == AT_FSPECIAL_AIR){
    if(my_hitboxID.hbox_num==1){
        sound_play(asset_get("sfx_icehit_weak2"));
    }
    hit_player_obj.zerra_iced = true;
    hit_player_obj.zerra_iced_id = id;
    hit_player_obj.zerra_iced_timer= 420;
}//*/

//for pseudo-grabs (ftilt, utilt)
if (my_hitboxID.type == 1 && !(super_armor || soft_armor > 0)){
	meleetarget = hit_player_obj;
}

//epinel hitfx code
var fx_id = 0;
var fx_dir = 0;
var flip = false;
switch (my_hitboxID.attack) {
	case AT_JAB:
        fx_id = ice_slash_general;
        switch (my_hitboxID.hbox_num) {
			case 3: fx_dir = 45; break; 
			default: fx_id = 0; break; }
    break;
    case AT_FAIR:
        fx_id = ice_slash_uff;
    break;
    case AT_UAIR:
        fx_id = ice_slash_uff;
        flip=-sign(hit_player_obj.x-x)==spr_dir;
    break;
    case AT_BAIR:
        fx_id = ice_slash_uff;
        switch (my_hitboxID.hbox_num) {
			case 1: fx_id = ice_slash_strong; flip=true; break; 
			case 7: fx_id = 0; break;
			case 3: fx_id = 0; break;
			case 2: flip=true; break; }
    break;
    case AT_DAIR:
        fx_id = ice_slash_general;
        switch (my_hitboxID.hbox_num) {
			case 1: fx_dir = 280; break; 
			case 2: fx_id = ice_slash_uff; flip=-sign(hit_player_obj.x-x)==spr_dir; break;
			default: fx_dir = 60; flip=-sign(hit_player_obj.x-x)==spr_dir; break; }
    break;
    case AT_UTILT:
        fx_id = ice_slash_general;
        switch (my_hitboxID.hbox_num) {
			case 1: fx_dir = 90; break; 
			default: fx_dir = 70; break; }
    break;
    case AT_FTILT:
        fx_id = ice_slash_general;
        switch (my_hitboxID.hbox_num) {
			case 3: fx_dir = 270; break; 
			case 2: fx_dir = 300; break;
			case 6: fx_dir = 300; break;
			default: fx_dir = 120; break; }
    break;
    case AT_DTILT:
        fx_id = ice_slash_general;
        switch (my_hitboxID.hbox_num) {
			case 1: fx_id = ice_slash_uff; break; 
			default: fx_dir = 45; break; }
    break;
    case AT_FSTRONG:
        fx_id = ice_slash_strong;
        fx_dir = 30;
    break;
    case AT_DSTRONG:
        fx_id = ice_slash_strong;
        switch (my_hitboxID.hbox_num) {
			case 1: fx_id = ice_slash_general; break; 
			default: fx_dir = 15; break; }
    break;
    case AT_USTRONG:
        fx_id = ice_slash_strong;
        switch (my_hitboxID.hbox_num) {
			case 3: fx_dir = 135; fx_id = ice_slash_general; break; 
			default: fx_dir = 90; break; }
    break;
    case AT_USPECIAL:
        fx_id = ice_slash_general;
        switch (my_hitboxID.hbox_num) {
			case 3: fx_dir = 290; break; 
			case 4: fx_id = ice_slash_uff; break;
			default: fx_dir = 70; break; }
    break;
    case AT_DSPECIAL:
        fx_id = ice_slash_strong;
        switch (my_hitboxID.hbox_num) {
			case 1: fx_id = ice_slash_uff; break;
			case 4: fx_id = ice_slash_uff; break;
			default: fx_dir = 315; break; }
    break;
    case AT_NSPECIAL:
        fx_id = ice_slash_uff;
        flip=true;
        switch (my_hitboxID.hbox_num) {
			case 1: fx_id = 0; break;
			case 3: flip=false; break;
			default: break; }
    break;
    case AT_FSPECIAL:
        fx_id = ice_slash_uff;
        switch (my_hitboxID.hbox_num) {
			case 1:  break;
			default: fx_id=ice_slash_strong; fx_dir=30;
				var otherfx = spawn_hit_fx(x,y,fspecial_explosion);
				otherfx.depth=depth-1;
			break; }
    break;
}
if (fx_id == 0) exit;
/*
if(fx_id == ice_slash_uff){
	fx_id = ice_slash_general;
	fx_dir = 35;
}//*/

var newfx = spawn_hit_fx( round((my_hitboxID.x + hit_player_obj.x * 2) / 3), round((my_hitboxID.y + (hit_player_obj.y * 2 - hit_player_obj.char_height)) / 3), fx_id );
newfx.depth = depth-1; 
newfx.draw_angle = fx_dir;
newfx.spr_dir = spr_dir*-2*(flip-.5);

if (fx_id == ice_slash_general||fx_id == ice_slash_strong) {
    if(newfx.spr_dir==-1){
        newfx.spr_dir=1;
        newfx.draw_angle = 180 - fx_dir;
    }
}