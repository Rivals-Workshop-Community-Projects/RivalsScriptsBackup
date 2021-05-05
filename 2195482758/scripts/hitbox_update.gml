//hitbox update
if(was_parried)
{
    reflected = true;
}

// Bunt stuff
if(is_bunt){
    if(abs(hsp) + abs(vsp) > 8){
        hsp-=.3*sign(hsp);
        vsp-=.3*sign(vsp);
    }
}