#macro AS_SPAWN		0
#macro AS_DESPAWN	1
if (newState != state) SetArticleState(newState);

hsp *= 0.99;
vsp = min(vsp+0.7, 6);

switch (state)
{
	case AS_SPAWN:
		if (state_timer >= dieTime) SetArticleState(AS_DESPAWN);
		break;
	case AS_DESPAWN:
		image_alpha -= 0.05;
		if (image_alpha <= 0)
		{
			instance_destroy();
			exit;
		}
		break;
}

++state_timer;

#define SetArticleState(_state)
{
	newState = _state;
	state = _state;
	state_timer = 0;
}