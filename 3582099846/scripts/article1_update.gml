//article1_update.gml

/*
0 = Spawn/Got Hit
1 = Idle
2 = Prep Launch
3 = Launch
*/
if (x >= (blastzone_r + 80) || x <= (blastzone_l - 80) || y <= blastzone_t || y >= blastzone_b) 
{
	if instance_exists(my_hbox) my_hbox.destroyed = true;
	instance_destroy(self);
	exit;
}

if (state < 3)
{
	if (hsp > 0) hsp *= .98;
    if (hsp < 0) hsp *= .98;
}


lifetime++;
if (hitstop == 0) state_timer++;

switch(state)
{
    case 0:
    vsp *= .98;
    
    if state_timer % 6 == 0 && state_timer != 0 {
    	image_index++;
    }
    
    if state_timer == 36
    {
    	state = 1;
    	state_timer = 0;
    	image_index = 0;
    }
    break;
    
    case 1:
    vsp = sin(lifetime * .1) / 2;
    
    if state_timer % 8 == 0 && state_timer != 0 {
    	image_index++;
    }
    
    if (image_index == 13) image_index = 0;
    break;
    
    case 2:
    vsp *= .98;
    
    if (state_timer % 7 == 0 && state_timer != 0) image_index++;
    if (state_timer == 1)
    {
    	sound_play(sound_get("sfx_elephant_blastoff_scream"), false, noone, .4, 1.05);
    }
    if state_timer == 28
    {
    	state = 3;
    	state_timer = 0;
    	sound_play(asset_get("sfx_mol_huge_explode"), false, noone, 2, 1.2);
    	sound_play(asset_get("sfx_bubblespray"))
    }
    break;
    
    case 3:
    vsp *= .9;
    if state_timer == 1 {
    	my_hbox = create_hitbox(AT_NSPECIAL, 3, round(x) - 20 * spr_dir, round(y));
    	my_hbox.player = giraffe_owner;
    }
    
    if state_timer % 6 == 0 && state_timer != 0 {
    	image_index++;
    }
    
    if image_index == 30 image_index = 25;
    hsp -= .3 * spr_dir;
    hsp = clamp(hsp, -12, 12);
    
    my_hbox.x = x - 20 * spr_dir;
    my_hbox.y = y;
    break;
}