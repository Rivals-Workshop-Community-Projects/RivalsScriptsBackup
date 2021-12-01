//

state_timer++;
if(state_timer % 8 == 0)
	image_index++;
	
if((state_timer == 0 || state_timer % 16 == 0) && state_timer <= 150-16)
	toxicHb = create_hitbox(AT_NSPECIAL_2, 2, x, y);

if(state_timer < 8)
	image_alpha = state_timer/8;
	
if(state_timer > 150-16)
	image_alpha = (150-state_timer)/16;
	
if(state_timer > 150)
{
	instance_destroy();
}
