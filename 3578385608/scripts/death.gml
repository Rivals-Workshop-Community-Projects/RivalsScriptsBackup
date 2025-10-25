// called when the character gets KO'd
if instance_exists(table){
	instance_destroy(table.meth_hb);
	table.state = 3;
	table.timer = 0;
}
if instance_exists(car){
	car.state = 6;
	car.timer = 0;
}

ego_boost = 1;
weed_boost = 1;
alcohol_boost = 1;
morphene_boost = 1;
coffee_boost = 1;

with oPlayer if self != other breaking_bad_nitrogen = 0;