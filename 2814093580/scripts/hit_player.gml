/* change the if-statement as desired for the moves you want to apply the
 * status effect to the opponent - add more specific requirements, such as
 * the first example here, if the move has hitboxes you don't want to include
 */


 if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.type == 1) || (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num == 3) || (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3)|| (my_hitboxID.attack == AT_DSPECIAL && (my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5)){
    if (!hit_player_obj.samson_honeyed and hit_player_obj.honeyed_cooldown <= 0) {
        sound_play(sound_get("sfx_honeysplat"));
    hit_player_obj.samson_honeyed = true;
    hit_player_obj.samson_honeyed_ID = id;
    hit_player_obj.samson_honeyed_timer = 100;
    hit_player_obj.samson_honeyed_inital_x = hit_player_obj.x;
    hit_player_obj.samson_honeyed_inital_y = hit_player_obj.y;
    hit_player_obj.samson_cooldown_ID = id;

    }
else if (hit_player_obj.samson_honeyed && hit_player_obj.samson_honeyed_ID == id){ 
          hit_player_obj.samson_honeyed = false; 
          }
}; 


if (my_hitboxID.attack == AT_USTRONG) || (my_hitboxID.attack == AT_DSTRONG) || (my_hitboxID.attack == AT_FSTRONG) || (my_hitboxID.attack == AT_FSPECIAL) || (my_hitboxID.attack == AT_USPECIAL) || (my_hitboxID.attack == AT_DATTACK){
    if (hit_player_obj.samson_honeyed && hit_player_obj.samson_honeyed_ID == id) {
 	hit_player_obj.samson_honeyed = false; 
          }
};

if (attack == 49 && hit_player_obj.state_cat == SC_HITSTUN) {
    if (window >= 4 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
    }
}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.type == 1)
{
    ponfx = spawn_hit_fx( x, (y + 25), hit_fx_create( sprite_get("pon"), 24 ) );
    ponfx.spr_dir = 1;
            sound_play(sound_get("pon"));
}

if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3)
{
if hit_player_obj.orig_knock >= 18
    {sound_play(sound_get("circuscheer"))
    spawn_hit_fx( x, y, spotlight_fx);}
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.type == 2)
{
    sound_play( asset_get( "sfx_coin_collect" ) );
    spawn_hit_fx( hit_player_obj.x, hit_player_obj.y, yummy);
}

if my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)
   { don_fx = spawn_hit_fx( (x-20), (y + 25), hit_fx_create( sprite_get( "normaldon" ), 30 ) );
    don_fx.spr_dir = 1;}

    if my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 3)
   { sweeterdon_fx = spawn_hit_fx( (x-20), (y + 25), hit_fx_create( sprite_get( "sweeterdon" ), 30 ) );
    sweeterdon_fx.spr_dir = 1;}


if (my_hitboxID.attack == AT_DSPECIAL_AIR and my_hitboxID.hbox_num == 4 ) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		if (!hit_player_obj.samson_dipper_grab and !hit_player_obj.samson_honeyed) 
        {
	hit_player_obj.samson_dipper_grab = true;
    hit_player_obj.samson_dipper_grab_id = id; // optional, but HIGHLY recommended
    hit_player_obj.x = my_hitboxID.x;
    hit_player_obj.y = my_hitboxID.y + hit_player_obj.char_height;
        }
	}
} 

