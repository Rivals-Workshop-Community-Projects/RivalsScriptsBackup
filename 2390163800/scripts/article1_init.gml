sprite_index = player_id.spr_dest_idle;
image_index = 0;

state = PS_IDLE;
state_timer = 0;
exist_timer = 0;

attack = 0;
window = 0;
window_timer = 0;

dest_num = 0; // 0 first placed, 1 second placed
other_dest = noone;

car_time = 0;
car_time_max = 600;

should_die = 0;

depth = -10;


replacedcount = 0;//This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 3;//The maximum number of this article that should exist at once.

with(asset_get("obj_article1")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}