//death.gml
//this script runs when the player loses a stock/dies, useful for resetting variables
if(coins_in_bag < 5){ coins_in_bag = 5; }
lvl = 1;
fspecial_hud_timer = fspecial_hud_time;
if(instance_exists(grind_article)){
	grind_article.timer_for_destruction += 30;
}
gs[3] = false;
