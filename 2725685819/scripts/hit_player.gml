//abyss rune dmg kb

if (has_rune("N")){
	if (!hit_player_obj.trick_marked)
	take_damage( hit_player_obj.player, my_hitboxID.player, floor(my_hitboxID.damage * (hit_player_obj.trick_stack/14)) );
	else
	take_damage( hit_player_obj.player, my_hitboxID.player, floor(my_hitboxID.damage * 0.5) );
}

//grab
if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 2 || jc_pointblank) ){
jc_buff = true;

jc_object = instance_create( hit_player_obj.x, hit_player_obj.y - 40, "obj_article1" );
jc_object.jc_fspec_buff = true;
jc_object.spr_dir = my_hitboxID.spr_dir;
jc_object.current_owner = my_hitboxID.player;

move_cooldown[AT_FSPECIAL] = 20;
}

if hit_player_obj != id{
	if hit_player_obj.trick_marked 
	hit_player_obj.trick_timer = hit_player_obj.trick_timer_default;

	hit_player_obj.trick_deterioration = hit_player_obj.trick_deter_default;


if my_hitboxID.attack == AT_NSPECIAL{
	jc_hit = true;
}



}

//dspecial grab
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
grabbed_player = hit_player_obj;

if (window == 3 || window == 2)
window_timer = 0;

vsp = -10;

if vergil && grabbed_player.trick_marked
sound_play(sound_get("vergil_grab"));

if dante && grabbed_player.trick_marked
sound_play(sound_get("dante_grab"));

}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 9){
	
	if (grabbed_player.trick_marked){
	take_damage( grabbed_player.player, grabbed_player.player, -2 );
	grabbed_player.trick_timer = 0;
	}
	
}



//chaos on hit
if ((get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_CHAOS_EXCLUDE) != 1) && hit_player_obj != id) {
	
	
	if (!hit_player_obj.trick_marked){
		
			if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_CHAOS_LEVEL) == -1)
			hit_player_obj.trick_stack += 0.5;
			else if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_CHAOS_LEVEL) == 1)
			hit_player_obj.trick_stack += 2;
			else if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_CHAOS_LEVEL) == 2)
			hit_player_obj.trick_stack += 7;
			else
			hit_player_obj.trick_stack++;	
			
			
			hit_player_obj.trick_stack = clamp(hit_player_obj.trick_stack,0,7);
		
		
			if (floor(hit_player_obj.trick_stack) == 7){
			
			hitstop = floor(hitstop*1.25);
			hitstop_full = floor(hitstop_full*1.25);
				
			hit_player_obj.hitstop = floor(hit_player_obj.hitstop*1.25 + (60 * has_rune("K")));
			hit_player_obj.hitstop_full = floor(hit_player_obj.hitstop_full*1.25);
			
			// if (attack != AT_JAB && attack != AT_DSPECIAL && my_hitboxID.type != 2)
			// sound_play(sound_get("strong1"));
			// else
			// sound_play(sound_get("slicen2"));
			
			sound_play(asset_get("sfx_boss_vortex_end"));
			sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,1,.75);
			sound_play(asset_get("sfx_clairen_tip_strong"));
			shake_camera( 10, 5 );
			hit_player_obj.trick_marked = true;
			
			}
			// else if (hit_player_obj.trick_stack >= floor(hit_player_obj.trick_stack)) && (hit_player_obj.current_trick_level != floor(hit_player_obj.trick_stack))
			// {
			// 	hit_player_obj.current_trick_level = floor(hit_player_obj.trick_stack);
				
			// 	sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.5, 1);
			// 	sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,0.5,2);
			// 	sound_play(asset_get("sfx_ori_charged_flame_release"),0,0,0.3, 1.25);
			// }
		
	}



}




if (my_hitboxID.attack == AT_NAIR){

	
	// var hover_angle = point_direction( x, y, hit_player_obj.x, hit_player_obj.y);
	// var hover_dist = abs(y-hit_player_obj.y)*0.1;
	// var hover_vsp = lengthdir_y(hover_dist, hover_angle);

	// print_debug(string(hover_dist));

	// if (hover_dist > 5){
	// old_vsp = clamp(hover_vsp,-5.5,3);
	// old_hsp = clamp(hsp,-3,3);
	// }
	
	old_vsp = -5;
	old_hsp = clamp(hsp, -3, 3);
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1){
	old_vsp = -2;
	old_hsp = clamp(hsp, -2, 2);
}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2){

grabbed_player = hit_player_obj;

attack_end();
}






//Style points
if (style_meter || sparda){
	switch(floor(hit_player_obj.trick_stack)){
		case 1:
			if (hit_player_obj.styled_on < 1){
				sound_play(sound_get("dismal"));
			hit_player_obj.styled_on++;
			}
		break;
		
		case 2:
		sound_stop(sound_get("dismal"));
			if (hit_player_obj.styled_on < 2){
				sound_play(sound_get("crazy"));
			hit_player_obj.styled_on++;
			}
		break;
		
		case 3:
		sound_stop(sound_get("dismal"));
		sound_stop(sound_get("crazy"));
			if (hit_player_obj.styled_on < 3){
				sound_play(sound_get("badass"));
			hit_player_obj.styled_on++;
			}
		break;
		
		case 4:
		sound_stop(sound_get("dismal"));
		sound_stop(sound_get("crazy"));
		sound_stop(sound_get("badass"));
			if (hit_player_obj.styled_on < 4){
				sound_play(sound_get("apocalyptic"));
			hit_player_obj.styled_on++;
			}
		break;
		
		case 5:
		sound_stop(sound_get("dismal"));
		sound_stop(sound_get("crazy"));
		sound_stop(sound_get("badass"));
		sound_stop(sound_get("apocalyptic"));
			if (hit_player_obj.styled_on < 5){
				sound_play(sound_get("savage"));
			hit_player_obj.styled_on++;
			}
		break;
		
		case 6:
		sound_stop(sound_get("dismal"));
		sound_stop(sound_get("crazy"));
		sound_stop(sound_get("badass"));
		sound_stop(sound_get("apocalyptic"));
		sound_stop(sound_get("savage"));
			if (hit_player_obj.styled_on < 6){
				sound_play(sound_get("sickskills"));
			hit_player_obj.styled_on++;
			}
		break;
		
		case 7:
		sound_stop(sound_get("dismal"));
		sound_stop(sound_get("crazy"));
		sound_stop(sound_get("badass"));
		sound_stop(sound_get("apocalyptic"));
		sound_stop(sound_get("savage"));
		sound_stop(sound_get("sickskills"));
			if (hit_player_obj.styled_on < 7){
				sound_play(sound_get("smokinsexystyle"));
			hit_player_obj.styled_on++;
			}
		break;
		
		
	}


}




