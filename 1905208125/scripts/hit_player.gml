//hit_player.gml
if my_hitboxID.attack == AT_EXTRA_1 {
	//sound_play(asset_get("sfx_zetter_fireball_fire"));
	take_damage(hit_player_obj.player,player,5); //ah gottem ggs
}
if (my_hitboxID.attack == AT_FSPECIAL) {
	my_hitboxID.has_hit = true;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 2 && my_hitboxID.hbox_num==1) && hit_player_obj.clone == false // bomb arrow system
{
var arrow = instance_create(hit_player_obj.x-(30*spr_dir), hit_player_obj.y-35, "obj_article1");
    arrow.spr_dir = my_hitboxID.spr_dir;
	arrow.host=hit_player_obj;
	//Rune L - Remote Detonation Bomb Arrow.
	arrow.bomb_timer_disabled = runeL;
	sound_play(asset_get("sfx_blow_weak1"));
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.type == 2 && my_hitboxID.hbox_num==1) {
    old_vsp = vsp;
    old_hsp = hsp;
    hitstop = 10;
    hitpause = 1;
    hook.state = 1;
    hitten = 1;
    move_cooldown[AT_USPECIAL] = 0;
}
//new sharpness logic
if (sharphits>0) {
    sharpBuff = 0;
    if runeN {
    	//Rune N - DSPECIAL applies to knife attacks.
        if (my_hitboxID.attack == AT_FAIR){ sharphits-=10; sharpBuff=4; }
        if (my_hitboxID.attack == AT_DAIR){ sharphits-=8; sharpBuff=4; }
        if (my_hitboxID.attack == AT_UAIR){ sharphits-=6; sharpBuff=4; }
        if (my_hitboxID.attack == AT_FTILT){ sharphits-=10; sharpBuff=4; }
    }
    if (my_hitboxID.attack == AT_FSTRONG) {sharphits-=20; sharpBuff=4;}
    
    take_damage(hit_player_obj.player,player,sharpBuff);
}

//hitfx layer
if (my_hitboxID.attack == AT_FSTRONG) {
	sound_play(asset_get("sfx_blow_heavy1"));
}

if (my_hitboxID.attack == AT_USTRONG) {
	has_hit = true;
}

//rune code
//Rune I - JAB 2 attaches a Bomb Arrow.
if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3 && runeI) && hit_player_obj.clone == false {
	var arrow = instance_create(hit_player_obj.x-(30*spr_dir), hit_player_obj.y-35, "obj_article1");
    arrow.spr_dir = my_hitboxID.spr_dir;
	arrow.host=hit_player_obj;
	//Rune L - Remote Detonation Bomb Arrow.
	arrow.bomb_timer_disabled = runeL;
}

intro = 1