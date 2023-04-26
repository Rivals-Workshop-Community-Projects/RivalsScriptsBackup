if(my_hitboxID.attack == AT_FSTRONG){
     if(my_hitboxID.hbox_num != 3){
	sound_play(sound_get("se_common_magic_hit_s"), 0, noone, 0.5, 1);
     }     if(my_hitboxID.hbox_num == 3){
	sound_play(sound_get("se_common_magic_hit_l"), 0, noone, 0.5, 1);
     }
}

if(curr_materia > 0){
	if(my_hitboxID.fx_particles == 1){
		materia_act();
	}if(my_hitboxID.attack == AT_DSPECIAL){
	if(my_hitboxID.hbox_num == 2){
	materia_act();	
	}
	}if(my_hitboxID.attack == AT_FSPECIAL){
	if(my_hitboxID.hbox_num == 5){
	materia_act();	
	}
	}if(my_hitboxID.attack == AT_FTILT){
	if(my_hitboxID.hbox_num == 2){
	materia_act();	
	}
	}
}

if(my_hitboxID.fx_particles == 1){
	if(in_range_of_field){
	activate_field();
	}
}

#define activate_field()
		materia_field.state = 2;
		materia_field.state_timer = 0;
		materia_field.field_damage = my_hitboxID.damage;
		materia_field.field_kb = my_hitboxID.kb_value;
		materia_field.field_kbscale = my_hitboxID.kb_scale;
		materia_field.field_hitpause = my_hitboxID.hitpause;
		materia_field.field_hitscale = my_hitboxID.hitpause_growth;
		
#define materia_act()
materia_boost_num += 1;
	sound_play(sound_get("se_zelda_win01_02"), 0, noone, 0.5, materia_boost_num/8 + 0.5);
	vfx = spawn_hit_fx(x + spr_dir * 5, y - 30, 310 );
	vfx.depth = -10;
	if(materia_boost_num == 5){
	hitstop = 25;
	other.hitstop = 25;
		switch(curr_materia){
		case 1://fire; extra damage
		sound_play(sound_get("fire"), 0, noone, 1, 1);
		vfx = spawn_hit_fx(hit_player_obj.x + spr_dir, hit_player_obj.y - 30, 202);
		vfx.depth = -10;
		take_damage(other.player, -1, 8);	
		materia_timer = 411;
		break;
		case 2://ice; extra hitstun
		sound_play(sound_get("freeze"), 0, noone, 1, 1);
		vfx = spawn_hit_fx(hit_player_obj.x + spr_dir, hit_player_obj.y - 40, 158);
		other.hitstop = 70;
		vfx.depth = -10;
		materia_timer = 411;
		break;
		case 3://thunder; extra kb
		with (my_hitboxID) {
			other.materia_kb = kb_value;
			other.materia_scaling = kb_scale;
			other.materia_angle = kb_angle;
		}
		sound_play(sound_get("thunder"), 0, noone, 1, 1);
		vfx = spawn_hit_fx(hit_player_obj.x + spr_dir, hit_player_obj.y - 30, 157);
		vfx.depth = -10;
		var thunder = create_hitbox(AT_DSPECIAL, 1, other.x * spr_dir, other.y - 30);	
		thunder.kb_value = materia_kb + 2;
		thunder.kb_scale = materia_scaling;
		thunder.kb_angle = materia_angle;
		take_damage(other.player, -1, -4);
		materia_timer = 411;
		break;
		}
	}