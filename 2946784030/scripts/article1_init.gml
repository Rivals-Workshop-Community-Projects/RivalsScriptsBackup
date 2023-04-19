//Wario Bike Properties

if (get_player_color( player_id.player ) != 0){
    sprite_index = sprite_get("wariobike_article_alt");
}
else{sprite_index = sprite_get("wariobike_article");}

mask_index = sprite_get("wariobike_masksmall");
image_index = 0;


spr_dir = player_id.spr_dir;

free = player_id.free;

is_hittable = true;

state = 0;
state_timer = 0;

will_fall = false;
bike_hit_thing = false;

health = player_id.bike_health;
hitstop = 0; //The frames remaining in hitpause. Hitpause automatically prevents movement
old_enemy_hitboxID = 0;

//Cope with own mortality!
should_die = false;


hitstop = 0;
hsp = 0;
vsp = 0;

can_be_grounded = true;
ignores_walls = false;
hit_wall = false;
through_platforms = false;