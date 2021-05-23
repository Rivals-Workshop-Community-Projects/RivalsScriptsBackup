//hitbox_update

//Nspecial Article
if (attack == AT_NSPECIAL_AIR && hbox_num == 1){
    if !free {
        if !was_parried {
		destroy_fx = 1;
		var blue_kunai = instance_create(x, y+18, "obj_article1");
		blue_kunai.player_id = player_id;
		blue_kunai.player = player;
		blue_kunai.spr_dir = 1;
		blue_kunai.state = false;
        }
    instance_destroy(); exit;
    }
}

if (attack == AT_EXTRA_1 && hbox_num == 1){
    if !free {
        if !was_parried {
		destroy_fx = 1;
		var red_kunai = instance_create(x, y+18, "obj_article2");
		red_kunai.player_id = player_id;
		red_kunai.player = player;
		red_kunai.spr_dir = 1;
		red_kunai.state = false;
        }
    instance_destroy(); exit;
    }
}

//
if (attack== AT_NSPECIAL_AIR && !free) {
    destroyed = true;
}

if (attack== AT_NSPECIAL && !free) {
    destroyed = true;
}

if (attack== AT_EXTRA_1 && !free) {
   destroyed = true;
}

//charged nspecial
var refresh_time = 8; 
/*
if (attack == AT_FTHROW) {
  if (hitbox_timer % refresh_time == 0) for (var i = 1; i < 20; i++) {
     can_hit[i] = 1;
  }
  if (hitbox_timer == 5){
  hsp = 2 * spr_dir
  }
  if (hitbox_timer == 10){
  hsp = 4 * spr_dir
  }
  if (hitbox_timer == 15){
  hsp = 6 * spr_dir
  }
  if (hitbox_timer == 20){
  hsp = 10 * spr_dir
  }
  if (hitbox_timer == 25){
  hsp = 14 * spr_dir
  }
}
*/
//red
if (attack == AT_UTHROW) {
  if (hitbox_timer % refresh_time == 0) for (var i = 1; i < 20; i++) {
     can_hit[i] = 1;
  }
  if (hitbox_timer == 5){
  hsp = 14 * spr_dir
  }
  if (hitbox_timer == 10){
  hsp = 10 * spr_dir
  }
  if (hitbox_timer == 15){
  hsp = 6 * spr_dir
  }
  if (hitbox_timer == 20){
  hsp = 4 * spr_dir
  }
  if (hitbox_timer == 25){
  hsp = 2 * spr_dir
  }
}

//Rotate Charged Nspecial
if (attack == AT_FTHROW){
	if (spr_dir == 1){
		proj_angle = point_direction(0,0,hsp,vsp);
	}
	if (spr_dir == -1){
		proj_angle = point_direction(0,0,-hsp,-vsp);	
	}
}


//Attack Multipliers//
///////////////////////    Blue     /////////////////////////////////////////////////////////////////////////////////////////////////////
if (has_rune("G")){
	if redmark > 0 and RedMode = false {
	    damage *= 1.5
	    knockback *= 1.5
	} else {
	    damage *= 1
	   knockback *= 1
	}
}
/*
//Attack Multipliers//
///////////////////////    Blue     /////////////////////////////////////////////////////////////////////////////////////////////////////
if redmark > 0 and RedMode = false {
	//Jab
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
	set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
	//Dattack
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
	//Ftilt
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
	//Dtilt
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 12);
	//Utilt
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
	//Nair
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
	//Fair
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
	//Bair
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
	//Uair
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
	//Dair
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
	//Blue Fstrong
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 8, HG_DAMAGE, 3);
	set_hitbox_value(AT_FSTRONG, 8, HG_BASE_KNOCKBACK, 7);
	//Nspecial
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
	//Blue Fspecial
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	//Blue Uspecial
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
	//Dspecial
	set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
	
} else {
	//Jab
	reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
	reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
	reset_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK);
	//Dattack
	reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
	//Ftilt
	reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
	//Dtilt
	reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DTILT, 2, HG_DAMAGE);
	reset_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK);
	//Utilt
	reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
	reset_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK);
	//Nair
	reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_NAIR, 2, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK);
	//Fair
	reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
	//Bair
	reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
	//Uair
	reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
	//Dair
	reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
	//Blue Fstrong
	reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 8, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 8, HG_BASE_KNOCKBACK);
	//Nspecial
	reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK);
	//Blue Fspecial
	reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
	//Blue Uspecial
	reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
	//Dspecial
	reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK);
}

/////////////////////// Multipliers /////////////////////////
///////////////////////    Red     ////////////////////////////////////////////////////////////////////////////////////////////////////////
if bluemark > 0 and RedMode = true {
	//Jab
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);
	//Dattack
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
	//Ftilt
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
	//Dtilt
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 13);
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 13);
	//Utilt
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
	//Nair
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
	//Fair
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
	//Bair
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
	//Uair
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
	//Dair
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
	//Red Fstrong
	set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 12);
	//Red Ustrong
	set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 12);
	//Nspecial
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 1);
	//Red Fspecial
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
	//Red Uspecial
	set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 19);
	set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 2);
	set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 3);
	//Dspecial
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
	
} else {
	//Jab
	reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
	reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
	reset_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK);
	//Dattack
	reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
	//Ftilt
	reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
	//Dtilt
	reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DTILT, 2, HG_DAMAGE);
	reset_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK);
	//Utilt
	reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
	reset_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK);
	//Nair
	reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_NAIR, 2, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK);
	//Fair
	reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
	//Bair
	reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
	//Uair
	reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
	//Dair
	reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
	//Red Fstrong
	reset_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK);
	//Red Ustrong
	reset_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK);
	//Nspecial
	reset_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE);
	reset_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK);
	//Red Fspecial
	reset_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK);
	//Red Uspecial
	reset_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE);
	reset_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK);
	//Dspecial
	reset_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK);
}
