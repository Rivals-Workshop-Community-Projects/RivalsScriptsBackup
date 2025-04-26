
//---------------- Cancel Disguise

if(disguised)
{
	disguised = false;
	currAlt = orgAlt;
	init_shader();

	tauntAnimStartDelay = tauntAnimStartDelayNotDisguised;
	
	updateVariablesToPlayer = player-1;
	user_event(8);//Update Player Variables

	if(invisAlpha == 1)//!hitpause) TODO: not needed here? only from update... which technically happens?
		user_event(5);//Disguise Fx
}