//Update.gml
if state == PS_CROUCH ground_friction = ground_friction_crouch;
else ground_friction = ground_friction_init;

if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
{
    galaxy_timer = 90;
    sound_play(sound_get("supereffective"));
}

if QD_Charge < 0{
	QD_Charge = 0;
}

if QD_timer_trigger == 1{
	--QD_timer
}
if QD_timer <= 0{
	QD_timer_trigger = 0
	QD_timer = 90
	QD_damage = 0
}
if QD_damage >= QD_damage_threshold{
	sound_play(sound_get("supereffective"));
	spawn_hit_fx(x-8, y-40, hfx_QD_die);
	shake_camera(4, 7);
	QD_damage =0
	QD_Charge -= 1
	if (instance_exists(QD_article_2)){
		QD_article_2.image_index = 0;
		QD_article_2.state = 2; 
	} 
	else if (instance_exists(QD_article_1)){
		QD_article_1.image_index = 0;
		QD_article_1.state = 2; 
	} 
}

if free && state != PS_WALL_JUMP && state !=PS_HITSTUN && state != PS_HITSTUN_LAND && state != PS_WALL_TECH && move_cooldown[AT_USPECIAL] > 0 {
move_cooldown[AT_USPECIAL] = max(move_cooldown[AT_USPECIAL],2)
}
if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
    switch (attack) {
    	case AT_DAIR:
    		switch (window){
    			case 2:
    					dair_forgiveness++;
    			break;
    		}
    	break
        case AT_USPECIAL_2: //u-spec correcting offsets and rotation
            switch (window)
            {
                case 4:
                    draw_y = -30;
                    break;
                    
                case 6:
                spr_angle = 0;
                    draw_y = 0;
                    break;
            }
            break;
    }
}

if QD_Charge == 0{
	walk_speed = 3.25;
	dash_speed = 6;
	initial_dash_speed = 6;
	air_max_speed = 4.5;
	leave_ground_max = 5;
	max_jump_hsp = 5;
	wave_land_adj = 1.15;
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 6);
	set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 1);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 2);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);
}
if QD_Charge == 1{
	walk_speed = 3.75;
	dash_speed = 6.5;
	initial_dash_speed = 6.5;
	air_max_speed = 5;
	leave_ground_max = 6;
	max_jump_hsp = 6;
	wave_land_adj = 1.25;
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
	set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 4);
	set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
}
if QD_Charge == 2{
	walk_speed = 4.25;
	dash_speed = 7;
	initial_dash_speed = 7;
	air_max_speed = 5.5;
	leave_ground_max = 7;
	max_jump_hsp = 7;
	wave_land_adj = 1.35;
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
	set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
	set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 5);
	set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 3);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 4);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 4);
}