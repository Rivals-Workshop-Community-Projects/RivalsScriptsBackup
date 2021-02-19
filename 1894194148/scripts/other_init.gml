//other_init - called by all other players when they're created while this workshop character exists
//AR

ar_rain = 0;
if (!variable_instance_exists(id, "ar_rain_max")){
ar_rain_max = 6;
}
if (!variable_instance_exists(id, "ar_rain_immune")){
ar_rain_immune = false;
} //this way others can define this in init beforehand if they want to