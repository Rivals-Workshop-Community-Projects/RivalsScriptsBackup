//update
if ball_cooldown > 0 
{
    ball_cooldown--;
}
#region CROUCH
var stage_x = get_stage_data( SD_X_POS );
if (x < stage_x || x > room_width - stage_x){
	is_offstage = true;
} else {
	is_offstage = false;
}
// if (down_down && (state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP))
// {
//     jump_speed = 17;
// }
// else
// {
//     jump_speed = 12;
// }

#region BALL stuff

// if attack == AT_USPECIAL
// {
//     if window == 9
//     {
//         attack_end();
//     }
// }



// if time_b4hit > 0 && time_b4hit != 0
// {
//     time_b4hit--;
// }
// with obj_article1
// {
//     if can_i_be_hit == false
//     {
//     other.release_time = hitstop;
//     }
// }

// if draw_e = 1
// {

//     size += 30;
// }
// if size >= 3600
// {
//   shoc2 = 1;
// }

// if shoc2 = 1
// {
//     size2 +=60;
// }
// if size2 >= 1815
// {
//     shoc2 = 0;
//     size = 0;
//     size2 = 0;
//     draw_e = 0;
// }

if should_cancel_shine and state == ( PS_IDLE ){
	should_cancel_shine = false;
}

#endregion

if can_press > 0 && can_press != 0 
{
    can_press-=1;
}


// actionlinesi+= 0.2
// if actionlinesi > 3
// {
//     actionlinesi = 0;
// }

if(state == PS_JUMPSQUAT and down_down and special_pressed){
    set_attack(AT_DSPECIAL);
}

if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
		
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
	
}

//Krankees Stuff for jumping out of uspecial 
if (state != PS_ATTACK_AIR	&& state != PS_ATTACK_GROUND)
{
	if (jump > 0)
	{
		move_cooldown[AT_USPECIAL] = 9999;
		jump = 0;
	}
	stop_fx = 0;
}

if (!free || state == PS_WALL_JUMP)
{
	move_cooldown[AT_USPECIAL] = 0;
}

//Krankees Stuff for hitting ball
if (instance_exists(ball))
{
	set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, ball.angle3);
	if (fspec_ball == true and grabbedid == noone)
	{
		hsp = 0;
		if (stop_fx == 0)
		{
			var hit_fx = spawn_hit_fx(ball.x - 10, ball.y, 301)
			hit_fx.pause = 8;
			stop_fx = 1;
		}
        ball.y = lerp(ball.y, y + -25, 0.6); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
	}
}
if (state == PS_HITSTUN)
{
	fspec_ball = false;
}