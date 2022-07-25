//got_parried.gml

if (my_hitboxID.attack == AT_COPY_ESP){
	esp_parried = true;
	move_cooldown[AT_COPY_ESP] = 60;
}