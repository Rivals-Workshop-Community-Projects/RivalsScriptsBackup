

if(my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num  == 2 || my_hitboxID.attack == AT_FSTRONG && my_hitboxID.type <= 1 || my_hitboxID.attack == AT_USTRONG
|| my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.type <= 1 && my_hitboxID.hbox_num != 5 || my_hitboxID.hbox_num == 11)
|| my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1
|| my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 4){
	sound_play(sound_get("hit_strong"));
}
if(my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG
|| my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.type <= 1 && my_hitboxID.hbox_num != 5 || my_hitboxID.hbox_num == 11)
|| my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num >= 11 || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_DAIR
|| my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_TAUNT){
	sound_play(sound_get("slash_hit"));
}
if(my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 7 || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.type >= 2
|| my_hitboxID.hbox_num == 5) || my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num != 3 || my_hitboxID.attack == AT_FSPECIAL){
	sound_play(sound_get("hit2"));
}

if(my_hitboxID.attack == AT_DSPECIAL){
	if(my_hitboxID.hbox_num == 1){
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35, 302);
		hit_player_obj.should_make_shockwave = false;
	}else if(my_hitboxID.hbox_num == 2){
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35, 304);
	}
}

if(my_hitboxID.attack == AT_NAIR){
	if(my_hitboxID.hbox_num >= 11){
		if(hit_player_obj.hitstun > 0){
			if(my_hitboxID.hbox_num == 11){
				hit_player_obj.x = x+60*spr_dir;
		    	hit_player_obj.y = y;
			}else if(my_hitboxID.hbox_num == 12){
				hit_player_obj.x = x+30*spr_dir;
		    	hit_player_obj.y = y-40;
			}else if(my_hitboxID.hbox_num == 13){
				hit_player_obj.x = x+40*spr_dir;
		    	hit_player_obj.y = y-20;
			}
		}
	}else{
		hit_player_obj.should_make_shockwave = false;
	}
}

if(my_hitboxID.attack == AT_FAIR){
	if(my_hitboxID.hbox_num == 1){
		old_hsp = -3*spr_dir;
	}
}

if(my_hitboxID.attack == AT_UAIR){
	if(my_hitboxID.hbox_num == 2){
		hit_player_obj.should_make_shockwave = false;
		if(!hit_player_obj.free && !hit_player_obj.freemd){
			hit_player_obj.y += 2;hit_player_obj.free = false;
		}
	}
}

if(my_hitboxID.attack == AT_FTILT){
	if(my_hitboxID.hbox_num == 2){
		window = 3;window_timer = 0;
		hit_player_obj.x = x+60*spr_dir;hit_player_obj.y = y-10;
	}
}

if(my_hitboxID.attack == AT_UTILT){
	if(my_hitboxID.hbox_num == 4){
		my_hitboxID.hit_priority = 0;my_hitboxID.hitbox_timer = 979;
	}
}

if(my_hitboxID.attack == AT_DATTACK){
	set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
}

if(my_hitboxID.attack == AT_DSTRONG){
	if(my_hitboxID.hbox_num == 10){
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35, 302);
		hit_player_obj.should_make_shockwave = false;
	}if(my_hitboxID.hbox_num == 11){
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35, 304);
	}
}

//hitboxes that trigger the silly angle 0 galaxy thing
if(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2 || my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 4
|| my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num == 2){
	//trigger silly angle 0 thing (if galaxy)
	if(hit_player_obj.should_make_shockwave)killtarget = hit_player_obj;
}

if(hit_player_obj.should_make_shockwave && hit_player_obj != self){
	if(alt == 30){
		sound_play(sound_get("iron knuckle die"));
	}
}

//charge final smash when projectiles hit
if("fs_charge" in self && my_hitboxID.type == 2){
    fs_charge += my_hitboxID.damage;
}

