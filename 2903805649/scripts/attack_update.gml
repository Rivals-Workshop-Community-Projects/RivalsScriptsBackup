//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if (attack == AT_FSPECIAL)
{
    can_move = false;
    can_fast_fall = false;
	can_wall_jump = true;
	
	    if (window == 1 && window_timer == 1) 
    {
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
	}
    if (window == 4)
    {
        if (window_timer == get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH))
        {
           set_state(PS_IDLE); 
           move_cooldown[AT_FSPECIAL] = 10;
        }
    }
    
	    if (window == 7)
    {
        if (window_timer == get_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH)){
            if (times_through < 3){
                times_through += 1;
                window = 6;
                window_timer = 0;
            }
            if (times_through >= 3){
                window = 8;
                window_timer = 0;
            }
        }
}

if (window == 11 && window_timer == get_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH))
{
	times_through = 0;
}
if (window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH))
{
	times_through = 0;
}
}	



if (attack == AT_USPECIAL)
{
    //can_move = false;
    can_fast_fall = false;
	can_wall_jump = true;
	
//looping code    
	    if (window == 7)
    {
        if (window_timer == get_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH)){
            if (times_through < 2){
                times_through += 1;
                window = 2;
                window_timer = 0;
            }
            if (times_through >= 2){
                window = 8;
                window_timer = 0;
            }
        }
}
if (window == 3 && window_timer == 2)
{
    create_hitbox(AT_USPECIAL, 4, x, y);
}

if (window == 5 && window_timer == 2)
{
    create_hitbox(AT_USPECIAL, 5, x, y);
}

if (window == 9 && window_timer == 2)
{
    create_hitbox(AT_USPECIAL, 4, x, y);
}


if (window == 11 && window_timer == get_window_value(AT_USPECIAL, 11, AG_WINDOW_LENGTH))
{
	times_through = 0;
	move_cooldown[AT_USPECIAL] = 60;
}

if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH))
{
	times_through = 0;
}
}

if (attack == AT_DSPECIAL)
{
        can_fast_fall = false;
//looping code    
	    if (window == 3)
    {
        if (window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH)){
            if (times_through < 2){
                times_through += 1;
                window = 2;
                window_timer = get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)
            }
            if (times_through >= 2){
                window = 4;
                window_timer = 0;
            }
        }
}    
 if (window == 3 && window_timer == 1 and meter <= 0)
{
	meter = 500;
}
if (window == 4 && window_timer == get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH))
{
	times_through = 0;
}

if (window == 1 && window_timer == 1)
{
	times_through = 0;
}
}

if (attack == AT_TAUNT)
{
	    if (window == 2)
    {
        if (window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH)){
            if (times_through < 2){
                times_through += 1;
                window = 2;
                window_timer = 0;
            }
            if (times_through >= 2){
                window = 3;
                window_timer = 0;
            }
        }
}

if (window == 3 && window_timer == get_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH))
{
	times_through = 0;
}
if (window == 1 && window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH))
{
	times_through = 0;
}
}
