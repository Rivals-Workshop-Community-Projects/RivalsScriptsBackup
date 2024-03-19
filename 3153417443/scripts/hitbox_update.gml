
if (player_id.canID != 0) {
	if (player_id.canID.player == orig_player) {
	if (player_id.nspecialtap = true && !bounced && player_id.nspecialtap2 = false) {
	    player_id.nspecialtap2 = true;
	    player_id.canID.vsp = 0;
        player_id.canID.hsp = 0;
        sound_play(asset_get("sfx_frog_dspecial_swallow"));
        sound_play(sound_get("dstrong_kegsplode"));
		player_id.bubbleexists = true;
		if (instance_exists(player_id.bubblearticle) && player_id.bubblearticle != 0){
    		player_id.bubblearticle.should_die = true;
    	}
        player_id.bubblearticle = instance_create(x, y, "obj_article1");
        player_id.canID.destroyed = true;
        player_id.canID = 0;
	}
{
{
    player_id.canID.through_platforms = 10;
    player_id.canID.proj_angle = 0;
    if (place_meeting(player_id.canID.x,player_id.canID.y+1,asset_get("par_block")))
    {
        player_id.canID.free = false;
    }
    
    if (player_id.canID.vsp > 0) //going down
	if !player_id.canID.free
   if (!bounced) {
        bounced = true;
        player_id.canID.vsp = -10; //send back upwards
        player_id.canID.hsp = hsp * 0.7;
        sound_play(sound_get("canbounce"))
        var k = spawn_hit_fx(player_id.canID.x, player_id.canID.y, 151);
        k.depth = depth - 1;
}   else {
        player_id.canID.vsp = 0;
        player_id.canID.hsp = 0;
        sound_play(asset_get("sfx_frog_dspecial_swallow"));
   		player_id.bubbleexists = true;
		if (instance_exists(player_id.bubblearticle) && player_id.bubblearticle != 0){
    		player_id.bubblearticle.should_die = true;
    	}
        player_id.bubblearticle = instance_create(x, y, "obj_article1");
        player_id.canID.destroyed = true;
        player_id.canID = 0;
        
    }
}
}
}
}
