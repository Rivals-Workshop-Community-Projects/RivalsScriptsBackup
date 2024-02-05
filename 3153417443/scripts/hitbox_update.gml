
if (attack == AT_NSPECIAL && hbox_num == 1 && player == orig_player)
	if (player_id.nspecialtap = true && !bounced && player_id.nspecialtap2 = false) {
	    player_id.nspecialtap2 = true;
	    vsp = 0;
        hsp = 0;
        sound_play(asset_get("sfx_frog_dspecial_swallow"));
        sound_play(sound_get("dstrong_kegsplode"));
		player_id.bubbleexists = true;
		if (instance_exists(player_id.bubblearticle) && player_id.bubblearticle != 0){
    		player_id.bubblearticle.should_die = true;
    	}
        player_id.bubblearticle = instance_create(x, y, "obj_article1");
        destroyed = true;
	}
{
{
    through_platforms = 10;
    proj_angle = 0;
    if (place_meeting(x,y+1,asset_get("par_block")))
    {
        free = false;
    }
    
    if (vsp > 0) //going down
	if !free
   if (!bounced) {
        bounced = true;
        vsp = -10; //send back upwards
        hsp = hsp * 0.7;
        sound_play(sound_get("canbounce"))
        var k = spawn_hit_fx(x, y, 151);
        k.depth = depth - 1;
}   else {
        vsp = 0;
        hsp = 0;
        sound_play(asset_get("sfx_frog_dspecial_swallow"));
   		player_id.bubbleexists = true;
		if (instance_exists(player_id.bubblearticle) && player_id.bubblearticle != 0){
    		player_id.bubblearticle.should_die = true;
    	}
        player_id.bubblearticle = instance_create(x, y, "obj_article1");
        destroyed = true;
        
    }
}
}

