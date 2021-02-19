/*

if (attack == AT_NSPECIAL && hbox_num == 1)
{
    proj_angle = 0;
    if (place_meeting(x,y+1,asset_get("par_block")))
    {
        free = false;
    }
    if (!free)
    {
        vsp = 0;
        hsp = 0;
        sound_play(sound_get("sfx_nspecial_grnd"));
        destroyed = true;
    }
}

if (attack == AT_NSPECIAL){
  if (!free){
     player_id.mud = instance_create(x, y, "obj_article1");
     player_id.mud.player_id = player_id;
     player_id.mud.orig_player_id = player_id;
     player_id.mud.replacedcount -= 1;
     with(asset_get("obj_article1")){
    	if (player_id == other.player_id){
    		    replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    		    //print_debug("Replace: "+string(replacedcount));
    	}
	}
  }
}
*/

if (attack == AT_NSPECIAL && hbox_num == 1 && was_parried) {
    destroyed = true;
}

if (attack == AT_NSPECIAL && hbox_num == 1 && player == orig_player)
{
    proj_angle = 0;
    if (place_meeting(x,y+1,asset_get("par_block")))
    {
        free = false;
    }
    if (!free)
    {
        vsp = 0;
        hsp = 0;
        sound_play(sound_get("sfx_nspecial_grnd"));
        destroyed = true;
    }
}

if (attack == AT_NSPECIAL){
	if (!free){
		
	//storing the article as a variable within the player for a later use
    player_id.mud = instance_create(x, y, "obj_article1");
	
	player_id.mud.player_id = player_id; //this because otherwise game crashes
	
	//this is a weird one, articles spawned by projectiles don't seem to increase the replacedcount, which means we have to
	//manually increase on them, then reduce on the article that was just spawned so it doesn't go away too
	player_id.mud.replacedcount -= 1;
    with(asset_get("obj_article1")){
    	if (player_id == other.player_id){
    	    replacedcount++;
    	}
	}
		
	}
}

if (attack == AT_FSPECIAL_2)
{
  var spr, wid;
  spr = sprite_get( "fspecial2_proj");
  wid = (sprite_get_width( spr ) / 2) * sign(hsp);


}

//fspecial projectile priority changes because masks don't work it seems
//fix ya game giik
if attack == AT_FSPECIAL_2 {
	if (hitbox_timer <= 6 || hitbox_timer >= 22) {
		hit_priority = 0;
	} else {
		hit_priority = 5;
	}
}
if attack == AT_FSPECIAL_AIR {
	if (hitbox_timer >= 21) {
		hit_priority = 0;
	} else {
		hit_priority = 5;
	}
}

if attack == AT_DSPECIAL_2 {
    if hbox_num == 4 {
        if (hitbox_timer <= 6 || hitbox_timer >= 16) {
            hit_priority = 0;
        } else {
            hit_priority = 6;
        }
    }
}

