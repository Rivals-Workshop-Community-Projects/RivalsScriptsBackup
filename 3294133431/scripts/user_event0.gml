
//---------------- Update Invis

move_cooldown[AT_NSPECIAL] = 1000;

var inAttack = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
var stateAllowsInvis = state == PS_AIR_DODGE || state == PS_WAVELAND || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_GROUND || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_WALL_TECH;


var closeToPlayer = false;
with(oPlayer)
{
	if(other.player != self.player && point_distance(x, y, other.x, other.y) < 50)
		closeToPlayer = true;
}

if(invis && !inAttack && special_pressed && (invisAlpha == 0 || (closeToPlayer && invisAlpha == 0.3)) && invisStateTimer >= 1/invisFadeSpeed && !taunt_down && state != PS_SPAWN && state != PS_DEAD)
	user_event(3);//Cancel Invis


if((!invis && !inAttack && special_pressed && invisAlpha == 1 && !taunt_down && state != PS_SPAWN && state != PS_DEAD)
&& (joy_pad_idle || (stateAllowsInvis && state_timer < 12)))//TODO: state_timer should be different for each state?
{
	invis = true;
	clear_button_buffer(PC_SPECIAL_PRESSED);
	invisExitStateTimer = 0;
	invisExitAnimationIndex = 0;
	sound_play(sound_get("spy_cloak"));
	if(state == PS_IDLE && (!disguised || disguisedAsSelf))
		state_timer = 0;

	if(stateAllowsInvis)
		invisStateTimer = 999;//prevents playing invis animation since we already are partially
	else
	{
		invisStateTimer = 0;
		invisStartAnimationIndex = 0;
	}
}

if(invis)
	invisStateTimer++;
else
	invisExitStateTimer++;


if(inAttack && !stateAllowsInvis)
{
    //get out on any attack (except strongs, they can charge in invis)
    if(attack != AT_TAUNT && attack != AT_EXTRA_1)
    {
    	if(attack != AT_NSPECIAL && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG) 
    	{
    	    if(!taunt_down)
				user_event(3);//Cancel Invis
    	}
    	else if(attack != AT_NSPECIAL)
    	{
    	   //on charge attacks only come out after x of charge? or instant release?
    	    if(strong_charge > 30 || window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)+1)//if(window == 2)
				user_event(3);//Cancel Invis
    	}
    }
    
    if(invisSavedAttack == noone && !invis && invisAlpha < 1 && attack != AT_NSPECIAL && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG)
		invisSavedAttack = attack;
}

if(state_cat == SC_HITSTUN || state == PS_PARRY)
	user_event(3);//Cancel Invis
	
if(invis && state_timer == 1 && (state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD))
	user_event(3);//Cancel Invis
    
if(invis)
{
    //only lose cloak while moving, otherwise gain very slowly
    if(free || hsp != 0)
        invisTimer -= invisTimerDec * abs(hsp*2+vsp*0.5);
    else
        invisTimer += invisTimerIncIdle;
    
    if(invisTimer <= 0)
		user_event(3);//Cancel Invis
}
else
    invisTimer += invisTimerIncIdle;

if(invisTimer <= 0)
    invisTimer = 0;
if(invisTimer >= invisTimerMax)
    invisTimer = invisTimerMax;
    
if(invis)
{
	if(closeToPlayer)
	{
		if(invisAlpha > 0.3)
		{
			invisAlpha -= 0.15;
			invisAlpha = max(invisAlpha,0.3);
		}
		else
		{
			invisAlpha += 0.15;
			invisAlpha = min(invisAlpha,0.3);
		}
	}
	else
	{
		invisAlpha -= invisFadeSpeed;
		invisAlpha = max(invisAlpha,0);
	}
}
else
{
	invisAlpha += invisFadeSpeed;
	invisAlpha = min(invisAlpha,1);
}

var minAlpha = min(invisAnimationAlpha, invisAlpha);
if(minAlpha == 0)
	visible = false;
else if(minAlphaLast < 1)
	visible = true;
minAlphaLast = minAlpha;

// visible = !invis || invisAlpha > 0;//prevent other_post_draw from running, but cant be used to hide spy bcz it also stops post_draw -> but cant be done permanently bcz it screws up compatabilities
// print(visible);


doInvisAnimation = stateAllowsInvis && (!disguised || disguisedAsSelf || disguisedThroughDodgeOrRoll);

if(doInvisAnimation)
{
	var fadeOutSpeed = 0.25;//0.2;
	var fadeInSpeed = 0.25;//0.125;
	var maxInvis = 0.25;//0;

	if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
		invisAnimationFadeOut = (state_timer > 1 && state_timer < 15);
	if(state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD)
		invisAnimationFadeOut = (state_timer > 8 && state_timer < 15);
	if(state == PS_TECH_GROUND)
		invisAnimationFadeOut = (state_timer > 0 && state_timer < 15);
	if(state == PS_WALL_TECH)
		invisAnimationFadeOut = (state_timer > 0 && state_timer < 15);
		
	if(state == PS_AIR_DODGE)
	{
		invisAnimationFadeOut = (state_timer > 0 && state_timer < 13);
		// fadeOutSpeed = 0.333;
		// fadeInSpeed = 0.333;
	}
	if(state == PS_WAVELAND)
	{
		invisAnimationFadeOut = (state_timer > 0 && state_timer < 6);
		fadeOutSpeed = 0.5;
		fadeInSpeed = 0.5;
	}

	if(invisAnimationFadeOut)
	{
		invisAnimationAlpha -= fadeOutSpeed;
		invisAnimationAlpha = max(invisAnimationAlpha,maxInvis);
	}
	else
	{
		invisAnimationAlpha += fadeInSpeed;
		invisAnimationAlpha = min(invisAnimationAlpha,1);
	}
}
else
	invisAnimationAlpha = 1;



if(invisSavedAttack != noone && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
	set_state(free ? PS_IDLE_AIR : PS_IDLE);
	if(get_window_value(invisSavedAttack, 1, AG_WINDOW_HSPEED) > 0)
		hsp = 0;
}

if(invisSavedAttack != noone && invisAlpha == 1 && invisAlphaLast < 1)
{
	set_attack(invisSavedAttack);
	invisSavedAttack = noone;
}

//make ai not see spy during invisibility (pretty janky) (also for final smash)
if(!custom_clone)
{
	with(oPlayer)
	{
		if(variable_instance_exists(self,"ai_target")
		&& ds_list_find_index(other.clones, self) == -1
		&& (variable_instance_exists(ai_target,"invis") && ai_target.invis
		|| variable_instance_exists(ai_target,"fs_using_final_smash") && ai_target.fs_using_final_smash))
		{
			//ai_target = undefined;//TODO: try setting this to something besides spy and change its position?
			//ai_attack_time = 8;
			//ai_recovering = true;
			// temp_level = 1;
			// ready_to_attack = false;
			// ai_disabled = true;
			var targetIsRight = ai_target.x > x;
			if(random_func( 0, 100, false ) < 4-temp_level*0.5)
				if(targetIsRight)
				{
					ai_going_left = true;
					ai_going_right = false;
				}
				else
				{
					ai_going_left = false;
					ai_going_right = true;
				}
		}
	}
}