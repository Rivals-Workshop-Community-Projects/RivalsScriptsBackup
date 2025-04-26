//set_attack
if(free && attack == AT_FSPECIAL)
{
	set_state(PS_ATTACK_AIR);
    attack = AT_FSPECIAL_AIR;
	if(disabled_fspecial == 0 && move_cooldown[AT_FSPECIAL_AIR] == 0)
	{
		instance_create(x - (28 * spr_dir), y - 44, "obj_article3");
	}
}

if(attack == AT_FSPECIAL_AIR)
{
	fspecial_stall_accumulator = 0;
	fspecial_stall_accumulator_old = 0;
}

if(attack == AT_DTILT)
{
	vanda_dtilt_consecutive += 1;
}
else
{
	vanda_dtilt_consecutive = 0;
}

/*if(free && attack == AT_DSPECIAL)
{
	attack = AT_DSPECIAL_AIR;
	set_state(PS_ATTACK_AIR);
}*/

if(attack == AT_NSPECIAL && disabled_nspecial && dspecial_points_timer == 0)
{
	dspecial_selected = 1;
	dspecial_points_timer = dspecial_points_timer_max;
	sound_play(a_mfx_tut_fail);
	dspecial_bad_input_display = true;
}
if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && disabled_fspecial && dspecial_points_timer == 0)
{
	dspecial_selected = 2;
	dspecial_points_timer = dspecial_points_timer_max;
	sound_play(a_mfx_tut_fail);
	dspecial_bad_input_display = true;
}

if(attack == AT_USPECIAL && disabled_uspecial && dspecial_points_timer == 0)
{
	dspecial_selected = 4;
	dspecial_points_timer = dspecial_points_timer_max;
	sound_play(a_mfx_tut_fail);
	dspecial_bad_input_display = true;
}

//if(special_pressed && !up_down && !down_down && !left_down && !right_down && active_runes[?"F"] && rune_f_special_down_timer == 0 && state_cat != SC_HITSTUN)
//{
//	rune_f_special_down_timer = 1;
//}
//The above is commented out due to swapping Rune F into normal play


//Munophone touch
{
	muno_event_type = 2;
	user_event(14);
}