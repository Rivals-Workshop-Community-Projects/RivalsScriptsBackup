//death.gml
//this script runs when the player loses a stock/dies, useful for resetting variables
if(coins_in_bag < 5){ coins_in_bag = 5; }
lvl = 1;
gs[3] = false;
