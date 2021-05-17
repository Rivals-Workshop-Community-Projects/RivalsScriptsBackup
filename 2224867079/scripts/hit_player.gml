//hit_player.gml
var hitmove = my_hitboxID.attack;

//Final smash stop time
if (hitmove == 49 && my_hitboxID.hbox_num == 1)
{
    hit_player_obj.hitpause = true;
    hit_player_obj.old_hsp = 0;
    hit_player_obj.old_vsp = 0;
    hit_player_obj.hitstop = 2;
    hit_player_obj.hitstop_full = 2;
}


//Double Uspecial
/*
if (hitmove == AT_USPECIAL) 
{
	doubleUspecial += 1
}
*/

//Visual Effects
//stab1
with (hit_fx_obj)
  if (hit_fx == other.blue_new_stab_1)
    depth = -10;
//stab2
with (hit_fx_obj)
  if (hit_fx == other.blue_new_stab_2)
    depth = -10;
//redstab1
with (hit_fx_obj)
  if (hit_fx == other.red_new_stab_1)
    depth = -10;
//redstab2
with (hit_fx_obj)
  if (hit_fx == other.red_new_stab_2)
    depth = -10;

//Nspecial Stuff
if (hitmove == AT_NSPECIAL){ // Make Sound
	sound_play(asset_get("sfx_absa_orb_hit"))
}

if (hitmove == AT_NSPECIAL_AIR){ // Make Sound
	sound_play(asset_get("sfx_absa_orb_hit"))
}

//Mark Stuff
if has_rune("G") {
//if (mark_target == 0 or (redmark == 0 and bluemark == 0)) and  hit_player_obj != self{
	mark_target = hit_player_obj
//}

if hit_player_obj == mark_target {

//Blue Mark
if my_hitboxID.attack == AT_NSPECIAL or my_hitboxID.attack == AT_NSPECIAL_AIR 
or my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_FTHROW {
	if bluemark == 3 {
		
}
	if bluemark < 3 {
		bluemark = 3
    } else {
    	
	}
}
//Red Mark
if my_hitboxID.attack == AT_NSPECIAL_2 or my_hitboxID.attack == AT_EXTRA_1
or my_hitboxID.attack == AT_FSPECIAL_2 or my_hitboxID.attack == AT_UTHROW{
	if redmark == 3 {
		
}
	if redmark < 3 {
		redmark = 3
    } else {
    	
	}
}
}

////////////////Mark Damage//////////////
//Regular
if (RedMode == false && hitmove != AT_USTRONG && hitmove != AT_DSTRONG){
	if (redmark > 0) {
		var additional_damage = (my_hitboxID.damage / 2);
		take_damage(hit_player_obj.player, -1, round(additional_damage));
	}
}

if (RedMode == true && hitmove != AT_FSTRONG_2 && hitmove != AT_DSTRONG_2
&& hitmove != AT_USTRONG_2){
	if (bluemark > 0) {
		var additional_damage = (my_hitboxID.damage);
		take_damage(hit_player_obj.player, -1, round(additional_damage));
	}
}

//Strongs

if (hitmove == AT_USTRONG || hitmove == AT_DSTRONG || hitmove == AT_FSTRONG_2 || 
 hitmove == AT_DSTRONG_2 || hitmove == AT_USTRONG_2){
	if (redmark > 0 || bluemark > 0) {
		var additional_damage = (my_hitboxID.damage / 2);
		take_damage(hit_player_obj.player, -1, round(additional_damage));
	}
}

if redmark = 1 and RedMode = false{
	sound_play(sound_get("MarkFinal"))
	redmark -= 1
}

if redmark = 2 and RedMode = false{
	sound_play(sound_get("Mark"))
	redmark -= 1
}

if redmark = 3 and RedMode = false{
	sound_play(sound_get("Mark"))
redmark -= 1
}

if bluemark = 1 and RedMode = true{
	sound_play(sound_get("MarkFinal"))
	bluemark -= 1
}

if bluemark = 2 and RedMode = true{
	sound_play(sound_get("Mark"))
	bluemark -= 1
}

if bluemark = 3 and RedMode = true{
	sound_play(sound_get("Mark"))
	bluemark -= 1
}
}
//Fspecial Stuff
if (hitmove == AT_FSPECIAL) // fspecial go boing
{
	set_state( PS_IDLE_AIR );
	old_hsp = -5 * spr_dir;
	old_vsp = -11;
	can_fast_fall = true;
	move_cooldown[attack] = 45;
}

if(hitmove == AT_FSPECIAL_2 ){ // fspecial go boing but RED
	set_state( PS_IDLE_AIR );
	old_hsp = -5 * spr_dir;
	old_vsp = -11;
	can_fast_fall = true;
	move_cooldown[attack] = 45;
}


//charged nspecial
/*
if(hitmove == AT_NSPECIAL && nbox == 2){
	set_state( PS_IDLE_AIR );
	destroy_hitboxes();
	    var shortest_dist = 9999;
		var shortest_id = noone;
			with (asset_get("oPlayer")) {
			if (player != other.player) {
				var curr_dist = point_distance(x,y,other.x,other.y);
				if (curr_dist < shortest_dist) {
					shortest_dist = curr_dist;
					shortest_id = id;
				}
			}
		}
			x = shortest_id.x + (40 * tempsprdir)
	spr_dir = tempsprdir*-1
	hit_player_obj.spr_dir = spr_dir
	vsp = -9;
	dsp_target = hit_player_obj 
}
*/
/*
//Dtilt Stuff
if (hitmove == AT_DTILT) // No Knockback
{
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 0);
	multihit =+ 1
	print_debug("Hello, world!");
}
*/
