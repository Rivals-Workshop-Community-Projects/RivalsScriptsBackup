//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
    attack_end();
}

if (attack == AT_DSPECIAL) && (window == 2){
    fire = 1
}

if (fire = 1) && (attack == AT_DSPECIAL) && (window == 1){
attack = AT_DSPECIAL_2
}

if (attack == AT_DSPECIAL_2) && (window == 2){
    fire = 0
}

if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
    if (window == 2 && grabbedid != noone)
    {
    //==============================================================
      if (!instance_exists(grabbedid))
      {    
          //The thing that was grabbed no longer exists.
          //ie. forsburn's clone just poofed
          //go to "spit out" window          
          window = 3
	      window_timer = 0
          grabbedid = noone 
      }
      else //NORMAL CASES
    //==============================================================
      {
	    grabbedid.ungrab = 0;
        
        grabbedid.invincible = true; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
        grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        grabbedid.x = x + spr_dir * 70; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        grabbedid.y = y; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        if(attack_pressed){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            window = 3
			window_timer = 0
			grabbedid.state = PS_TUMBLE;
            grabbedid.x = x;
            grabbedid.y = y;
			grabbedid.visible = true
            grabbedid = noone
        }
      }
    }
}

if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window == 2 && grabbedid != noone && !grabbedid.clone){
	grabbedid.ungrab = 0;
       
        grabbedid.invincible = true; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
        grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        grabbedid.x = x + spr_dir * 70; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        grabbedid.y = y; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        if(special_pressed){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            window = 3
			window_timer = 0
			grabbedid.state = PS_TUMBLE;
            grabbedid.x = x;
            grabbedid.y = y;
			grabbedid.visible = true;
            grabbedid = noone;
        }
    }
}

if (attack == AT_NSPECIAL) && (special_down) && (window == 2) && (window_timer == 21){
window = 2
window_timer = 0
}

if (attack == AT_NSPECIAL) && (grabbedid == noone) && (window == 2) && (window_timer == 22){
window = 4
window_timer = 0
}

if (grabbedid = hit_player_obj){
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
}

if (grabbedid = noone){
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
}

if (attack == AT_FSPECIAL) && (special_down) && (charge < 9) && (window == 2) && (window_timer == 15){
charge++
window = 2
window_timer = 0
}

if (charge > 9) {
charge = 9
}

if (charge < 0) {
charge = 0
}

if (dizzy > 3) {
dizzy = 3
}

if (dizzy < 0) {
dizzy = 0
}

if (attack == AT_FSPECIAL && window == 2 && window_timer == 16 && charge < 1){
window = 3
window_timer = 0
}

if (attack == AT_FSPECIAL) && (window == 3) && (window_timer == 18) && (charge > 2){
window = 3
window_timer = 0
charge -= 3
dizzy++
}

if (attack == AT_FSPECIAL) && (window == 4) && (dizzy < 3){
charge = 0
dizzy = 0
}

if (attack == AT_FSPECIAL) && (window == 4) && (dizzy == 3){
set_state(PS_PRATLAND)
prat_land_time = 120;
charge = 0
dizzy = 0
}

if (attack == AT_FSPECIAL){
attack_end();
}

if (attack == AT_NSPECIAL) && (window == 4){
grabdid = noone
}

if (attack == AT_USPECIAL) && (window == 1){
prat_land_time = 0;
}

if (attack == AT_FSPECIAL) && (window == 3){
super_armor = true
}