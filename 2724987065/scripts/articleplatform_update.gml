// Article Update is ran for every frame that the article object is in-game.

image_index = get_gameplay_time()/10;

time_alive++;
if time_alive > 180 || player_id.free start_dying = true;
if start_dying die_timer--;
image_alpha = die_timer * .1;
if (die_timer < 1) instance_destroy(self);