//set_attack

//====> NEUTRAL B #######################################################

if (attack == AT_NSPECIAL)
{
    /*if (fBall_obj != noone)
    {
        spawn_hit_fx( fBall_obj.x, fBall_obj.y, 302 );
        
        attack_end();
        set_state(PS_IDLE);
    }*/
    
    //If there's a fireball out there, call nspecial_2
    if (fBall_obj != noone 
        && fBall_obj._currHB != noone 
        && !nspecial_hadoInput 
        && !attack_down)
    {
        attack = AT_NSPECIAL_2; 
    }
}