//hitbox_update

	if attack == 49 
    {if spr_dir = 1
        {hsp = (0.3*hitbox_timer);}

    else     {hsp = (-0.3*hitbox_timer);}
     }


	if (attack == AT_DSPECIAL and hbox_num == 1) || (attack == AT_DSPECIAL_AIR  and hbox_num == 1)
{
if (place_meeting(x+hsp-(-10*spr_dir), y, asset_get("par_block")) || place_meeting(x+hsp-(-10*spr_dir), y, asset_get("par_jumpthrough"))) == false
{hsp = 0;}
if free
destroyed = true;

}

	if (attack == AT_DSPECIAL and hbox_num == 2) || (attack == AT_DSPECIAL_AIR  and hbox_num == 2)
{
if (place_meeting(x-(45*spr_dir), y, asset_get("par_block")) || place_meeting(x-(45*spr_dir), y, asset_get("par_jumpthrough"))) == false
{hsp = 0;}
if free
destroyed = true;

}
    
    
	if (attack == AT_DSPECIAL and (hbox_num == 4))
{
if (place_meeting(x+(hsp+(55*spr_dir)), y+3, asset_get("par_block")) || place_meeting(x-(hsp+(55*spr_dir)), y+3, asset_get("par_jumpthrough"))) == false
{hsp = 0;}
if free
destroyed = true;
}

    	if (attack == AT_DSPECIAL and (hbox_num == 5))
{
if (place_meeting(x-(hsp-(-80*spr_dir)), y+3, asset_get("par_block")) || place_meeting(x-(hsp-(-80*spr_dir)), y+3, asset_get("par_jumpthrough"))) == false
{hsp = 0;}
if free
destroyed = true;
}


