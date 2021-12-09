//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){ //ASSAULT RIFLE
    if (window == 3){
        if (special_down){
            window = 1;
            window_timer = 0;
        }
    }

	       if (spr_dir == 1) && (left_pressed) {
                spr_dir = -1;
            }
            if (spr_dir == -1) && (right_pressed) {
                spr_dir = 1;
            }
            can_jump = true;
}

if (attack == AT_NSPECIAL_2){ //PLASMA RIFLE
    if (window == 5){
        if (special_down){
            window = 2;
            window_timer = 0;
        }
    }

	                if (spr_dir == 1) && (left_pressed) {
                spr_dir = -1;
            }
            if (spr_dir == -1) && (right_pressed) {
                spr_dir = 1;
            }

    
    if (window == 3 && window_timer == 1){
        PR_ammo -= 2;
    }
    if (window == 4 && window_timer == 1){
        PR_ammo -= 3;
    } 
if (PR_ammo <= 0)
{
  set_state(PS_IDLE); 
}
    
}

if (attack == AT_FTHROW){ //PLASMA PISTOL
	                if (spr_dir == 1) && (left_pressed) {
                spr_dir = -1;
            }
            if (spr_dir == -1) && (right_pressed) {
                spr_dir = 1;
            }
    if (window == 3)
    {
        if (special_down){
            window = 2;
            window_timer = 0;
        }
        
        if (!special_down){
            window = 4;
            window_timer = 0;
        }
    }
        if (window == 4 && window_timer == 1)
        {
            sound_stop(sound_get("PLASMA PISTOL"));
            PP_ammo -= 5;
            PP_charge -= PP_charge;
        }    
        if (window == 2 && window_timer == 1)
        {
            PP_ammo -= 1;
            set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 2);
            set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 21);
        }
        
    if (window == 2 && special_down)
	{
		PP_charge++;
		if (PP_charge = 150)
		{
		    window = 4;
            window_timer = 0;
		}
if (PP_ammo <= 0)
{
    window = 4;
    window_timer = 0;
}		
	}
    if (window == 2 && shield_pressed)
	{
	        sound_stop(sound_get("PLASMA PISTOL"));
        	attack_end();
	        set_state(PS_PARRY);
	        PP_charge -= PP_charge;
	}	
	
        if (PP_charge >= 50)
        {
            set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 9);
            set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 157);
            PP_charged = true;
        }    
        if (window == 1 && window_timer == 1)
        {
            PP_charged = false;
        }
        if (window == 6 && window_timer == 12 && PP_ammo <= 0)
        {
            PP_empty = true;
        }
if (PP_empty == true)
{
  set_state(PS_IDLE);     
}
}

if (attack == AT_FSPECIAL)
{
	    if (window == 4 && window_timer == 2){
        frags -= 1;
    }
	if (frags <= 0)
{
  set_state(PS_IDLE);     
}
}

if (attack == AT_FSPECIAL_2){ //NEEDLER
    if (window == 5){
        if (special_down && needle_ammo > 0){
            window = 2;
            window_timer = 0;
        }
    }
    
    if (window == 3 && window_timer == 1){
        needle_ammo -= 1;
    }
    if (window == 4 && window_timer == 1){
        needle_ammo -= 1;
    }
if (window == 5 && window_timer == 1 && needle_ammo <= 0)
{
    needle_empty = true;
}    
if (needle_empty == true)
{
  set_state(PS_IDLE); 
}

		if (window == 4 && window_timer == 1 && needles < 56) 
	{
		needles += 1;
		}
		
 with (oPlayer)
{

if(needles_hit = true && stucks > 10)
{

    var CX = x;
    var CY = y;

with (other)
{
    if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num < 3)

create_hitbox(AT_FSPECIAL_2, 3, CX, CY);

//set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, CY);
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, CX);

}

}

}  
}

if (attack == AT_FSTRONG_2){ //Brute shot

    
    if (window == 4 && window_timer == 1){
        BS_ammo -= 1;
    }

if (BS_ammo <= 0)
{
  set_state(PS_IDLE); 
}

		if (window == 2 && window_timer == 1 && BS_ammo > 0) 
	{
        var BS = instance_create(x + (1 * spr_dir), y - 3, "obj_article3");
        BS.hsp = spr_dir * 0;
        BS.spr_dir = spr_dir;

		}
		
	if (window == 3 && window_timer == 12 && BS_shots < 6) 
	{
		BS_shots += 1;
		}
		
		
}

if (attack == AT_USPECIAL_2) //RPG
{ 
            can_fastfall = false;
		if (window == 3 && window_timer == 1 && RPG_ammo > 0) 
	{
        var rocket = instance_create(x + (1 * spr_dir), y - 3, "obj_article1");
        rocket.hsp = spr_dir * 0;
        rocket.spr_dir = spr_dir;
		}
    if (window == 3 && window_timer = 1){
        RPG_ammo -= 1;
        RPG_shots += 1;
    }
if (window == 6 && window_timer == 9 && RPG_ammo <= 0)
{
    RPG_empty = true;
}
    
if (RPG_empty == true)
{
  set_state(PS_IDLE); 
}
}


if (attack == AT_USTRONG_2) //Battle rifle
{ 
	    if (window == 4 && window_timer > 8){
        if (special_down){
            window = 2;
            window_timer = 0;
        }
    }

	       if (spr_dir == 1) && (left_pressed) {
                spr_dir = -1;
            }
            if (spr_dir == -1) && (right_pressed) {
                spr_dir = 1;
            }

    
    if (window == 2 && window_timer = 1){
        BR_ammo -= 1;
        BR_shots += 1;
    }
    if (window == 2 && window_timer = 2){
        BR_ammo -= 1;
        BR_shots += 1;
    }
    if (window == 2 && window_timer = 3){
        BR_ammo -= 1;
        BR_shots += 1;
    }
if (window == 4 && window_timer == 1 && BR_ammo <= 0)
{
    BR_empty = true;
}
    
if (BR_empty == true)
{
  set_state(PS_IDLE); 
}
}

if (attack == AT_DSTRONG_2) //Sniper
{ 
            can_fastfall = false;
		if (window == 2 && window_timer == 1 && sniper_ammo > 0) 
	{
        var snipe = instance_create(x + (75 * spr_dir), y - 70, "obj_article2");
        snipe.hsp = spr_dir * 0;
        snipe.spr_dir = spr_dir;
		}
    if (window == 3 && window_timer = 1){
        sniper_ammo -= 1;
        sniper_shots += 1;
    }
if (window == 5 && window_timer == 11 && sniper_ammo <= 0)
{
    sniper_empty = true;
}
    
if (sniper_empty == true)
{
  set_state(PS_IDLE); 
}
if (window == 2)
{
	can_jump = true;
	can_shield = true;
}

}



if (attack == AT_USPECIAL) //Grav Lift
{

	if (window == 2 && window_timer == 7)
	{
        var gravlift = instance_create(x + 9 * spr_dir, y + 80, "obj_article_solid");
        gravlift.spr_dir = spr_dir;
        move_cooldown[AT_USPECIAL] = 180;
        //grav_liftime = 500;
	}
	
	if (window == 1 && window_timer == 1)
	{
		with obj_article_solid { // change to 2 or 3, or solid/plat, if you need to
    if player_id == other { // makes sure to delete only YOUR article
        instance_destroy(self);
    }
}
	}
}

if (attack == AT_DSPECIAL){
if (window == 1 && window_timer == 1)
{
	    weapon += 1;
}
}

if (attack == AT_DTILT){ //ASSAULT RIFLE DOWN
    if (window == 4 && window_timer == 10){
        if (attack_down){
            window = 1;
            window_timer = 0;
        }
    }
}

if (attack == AT_DATTACK){ //ASSAULT RIFLE DOWN
    if (window == 3 && window_timer == 9)
    {
		sound_play(sound_get("AR"));
    }
}

if (attack == AT_FSTRONG){ //SHOTGUN
    if (window == 4 && window_timer == 1)
    {
		sound_stop(sound_get("COCK"));
    }
}

if (attack == AT_TAUNT)
{
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
    		can_jump = true;
	can_shield = true;
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 6){
                times_through++;
                window_timer = 0;
            }
        }
    }
}




