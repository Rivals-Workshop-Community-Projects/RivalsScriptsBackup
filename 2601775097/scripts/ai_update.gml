// ai_update
// called every frame for a CPU version of the character
// Use ai_target to reference the player object the CPU is currently targeting
// Use ai_recovering to check if the CPU is recovering or not
// Use temp_level to reference the CPU’s difficulty level (1-9)

//VAR LIST
temp_level = 9;
xrange = abs(ai_target.x - x); //absolute value of the range (no negatives)
yrange = abs(y - ai_target.y);
xdist = (ai_target.x - x); //specific value of the range (with negatives)
ydist = (y - ai_target.y);
damage = get_player_damage(ai_target.player);
facing = false; //facing the foe check
offstage = true;
edgeguard = true;
targetbusy = false;
stage_x = get_stage_data(SD_X_POS);
blastzone = get_stage_data(SD_SIDE_BLASTZONE);

//burning fury auto turnoff
if (burningfury_active && is_AI)
{
	burning_runtime ++;
	if (burning_runtime > 500)
	{
		burningfury_active = false;
		burning_runtime = 0;
	}
}

if (get_training_cpu_action() == CPU_FIGHT)
{
	//CHECK VARIABLES SECTION

	//check if the target is dead
	if (ai_target.state == PS_DEAD || ai_target.state == PS_RESPAWN) targetbusy = true;
	else targetbusy = false;

	//facing target check
	if (ai_target.spr_dir && ai_target.x < x && -spr_dir || -ai_target.spr_dir && ai_target.x > x && spr_dir) facing_target = true;
	else facing_target = false;

	//offstage check
	if ((x > stage_x + 100 && x < (room_width - stage_x) - 100) && y > ai_target.y) offstage = false;
	else offstage = true;

	//edgeguard check
	if (targetbusy || ai_target.free == false || xdist < 100 || (ai_target.x > (stage_x - blastzone) + 200) &&
	(ai_target.x < ((room_width - stage_x) + blastzone) - 200)) edgeguard = false;
	else edgeguard = true;



	//chasing down the foe
	if (!free && ((ai_target.state != PS_ATTACK_AIR || ai_target.state != PS_ATTACK_GROUND) && (state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN)
	|| (!ai_recovering || edgeguard) && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) && !targetbusy && xrange > 100))
	{
		if (ai_target.x > x) right_hard_pressed = true;
	    else left_hard_pressed  = true;
	}

	//parry logic
	if (xrange <= 30 && yrange <= 30 && (ai_target.state == PS_ATTACK_AIR || ai_target.state == PS_ATTACK_GROUND) && ai_target.attack != AT_TAUNT && !free)
	{
		shield_pressed = true;
		left_down = false;
		right_down = false;
	}

	//ATTACKS
	//the arrays change dynamically depending on the amount of mana bar has
	if (mp_current > 10) far_side_attacks[0] = AT_NSPECIAL;

	far_down_attacks[0] = AT_FAIR;
	far_down_attacks[1] = AT_DAIR;
	if (mp_current > 10) far_down_attacks[3] = AT_NSPECIAL;

	mid_side_attacks[0] = AT_NSPECIAL;
	if (mp_current > 60 && !burningfury_active || mp_current > 10 && burningfury_active) mid_side_attacks[1] = AT_FSPECIAL;

	close_up_attacks[0] = AT_UTILT;
	close_up_attacks[1] = AT_UAIR;
	if (mp_current > 10) close_up_attacks[2] = AT_USTRONG;

	close_side_attacks[0] = AT_JAB;
	close_side_attacks[1] = AT_DTILT;
	close_side_attacks[2] = AT_UTILT;
	close_side_attacks[3] = AT_FTILT;
	close_side_attacks[4] = AT_NAIR;
	close_side_attacks[5] = AT_UAIR;
	close_side_attacks[6] = AT_FSTRONG;
	if (mp_current > 10)
	{
		close_side_attacks[7] = AT_USTRONG;
		close_side_attacks[8] = AT_DSTRONG;
		close_side_attacks[9] = AT_USPECIAL;
	}
	if (mp_current > 50) close_side_attacks[10] = AT_DSPECIAL;

	close_down_attacks[0] = AT_DTILT;
	close_down_attacks[1] = AT_NAIR;
	close_down_attacks[2] = AT_DAIR;
	if (mp_current > 10) close_down_attacks[3] = AT_DSTRONG;
	if (mp_current > 50) close_side_attacks[4] = AT_DSPECIAL;

	neutral_attacks[0] = AT_NAIR;
	neutral_attacks[1] = AT_DTILT;
	if (mp_current > 60 && !burningfury_active || mp_current > 10 && burningfury_active) neutral_attacks[2] = AT_FSPECIAL;



	//SKILL STUFF
	/*
	//light dagger
	if (xrange <= 150 && xrange > 100 && yrange < 20 && facing_target && mp_current > 10 && !free)
	{
		special_pressed = true;
		right_down = false;
		left_down = false;
	}
	else if (xrange <= 150 && xrange > 100 && y < ai_target.y && facing_target && mp_current > 10 && free) //air ver
	{
		special_pressed = true;
		right_down = false;
		left_down = false;
	}
	else if (!facing_target) special_pressed = false;

	//burning fury
	if (!burningfury_active && xrange <= 100 && mp_current > 70) //activation
	{
		if (-spr_dir && facing_target || spr_dir && !facing_target) 
		{
			left_down = true;
			right_down = false;
		}
		else if (spr_dir && facing_target || -spr_dir && !facing_target)
		{
			left_down = false;
			right_down = true;
		}
		special_pressed = true;
	}
	else if (burningfury_active && xrange <= 50 && mp_current > 20 && facing_target)
	{
		if (-spr_dir) left_down = true;
		else right_down = true;

		special_pressed = true;
	}

	//force leap
	//should make bar calculate how close he is to the floor level and recover accordingly
	//force leap has 3 trajectories after all
	//if bar hits someone with force leap, force bar to use the blast attack too

	//photon blast
	if (mp_current > 60 && xrange <= 110 && yrange <= 50) //it should force bar to charge the photon blast untill the foe is in the attack state
	{
		down_down = true;
		special_pressed = true;
	}
	*/
}