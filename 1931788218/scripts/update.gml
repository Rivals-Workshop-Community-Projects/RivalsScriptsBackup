//update



has_walljump = false;

if (vat_usable == false)
{
	move_cooldown[AT_DSPECIAL] = 2;
	if (!free && vat == noone)
	{
	    vat_usable = true;
	}
    
}

if (!gotWave)
	move_cooldown[AT_FSPECIAL] = 2;
if (!free)
	gotWave = true;

if (vat != noone)
{
    vat.time++;
    
    if (vat.time == 5)
    {
    	vat.sprite_index = sprite_get("vat");
    	vat.image_index = 0;
		vat.image_speed = 0.2 - 0.2*vatNA;
	}
    
    if (vat.time > 140)
    {
        if (vat.time % 4 <= 1)
            vat.image_alpha = 0;
        else
            vat.image_alpha = 1;
    }
    if (vat.time > 180)
    {
		sound_play(sound_get("plague_flask_dissipate"));
        instance_destroy(vat);
        vat = noone;
    }
    
}

//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY