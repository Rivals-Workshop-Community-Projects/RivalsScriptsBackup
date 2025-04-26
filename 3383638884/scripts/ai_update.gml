taunt_pressed = false;
attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;

if(ai_recovering && attacking && attack == AT_USPECIAL)
{
	special_down = true;
}
if(dash_timer > 0 && abs(ai_target.x - x) < 100)
{
	var _right = ai_target.x - x < 0;
	if(attacking) 
	{
		if(attack == AT_FSPECIAL)
		{
			if(_right)
				right_pressed = true;
			else
				left_pressed = true;
			attack_pressed = true;
		}
		else if(has_hit && !attacking)
		{
			attack_pressed = true;
			var _thingamading = random_func(2, 100, true) > 70;
			if(_right)
				right_pressed = _thingamading;
			else
				left_pressed = _thingamading;
			up_down = random_func(0, 100, true) > 70;
			down_down = random_func(1, 100, true) > 70;
		}
	}
}
if(has_supertaunt && abs(ai_target.x - x) < 200 && abs(ai_target.y - y) < 70)
{
	up_down = true;
	special_pressed = true;
}
if(temp_level < 3)
{
	if(random_func(3, 400, true) == 2 && abs(ai_target.x - x) > 250)
	{
		print("strike a taunr1");
		taunt_pressed = true;
	}
}