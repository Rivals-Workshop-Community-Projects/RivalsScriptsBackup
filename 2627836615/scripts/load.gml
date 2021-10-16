sprite_change_offset("car",6, 6);
sprite_change_offset("car_hurt",8, 8);
sprite_change_offset("dist",1, 1);
sprite_change_offset("smoke",4, 4);
sprite_change_offset("orb",3, 3);
sprite_change_offset("itembox",8, 8);
sprite_change_offset("fireball",15, 5);
sprite_change_offset("fireball_hurt",5, 5);
sprite_change_offset("smokeball",15, 5);
sprite_change_offset("puddle",6, 6);
sprite_change_offset("icepuddle",6, 6);
sprite_change_offset("puddle_hurt",5, 5);
sprite_change_offset("tornado",10, 10);
sprite_change_offset("tornado_hurt",9, 9);
sprite_change_offset("tether",0, 4);
sprite_change_offset("tether_hurt",4, 4);
sprite_change_offset("rock",5, 5);
sprite_change_offset("hud",57, -5);
sprite_change_offset("hud_relative",67, 5);
sprite_change_offset("hud_words",4, 27);
sprite_change_offset("itemboost",4, 4);
sprite_change_offset("boosttrail",19, 11);
sprite_change_offset("arrow",-12, 3);
sprite_change_offset("drift",6, 4);
sprite_change_offset("drift_wide",6, 4);
sprite_change_offset("drift_one",6, 4);
sprite_change_offset("spinkick",40, 40);
sprite_change_offset("bubble",8,8);
sprite_change_offset("bubble_hurt",7,7);
sprite_change_offset("plasma",0,2);
sprite_change_offset("circle_hurt",32,32);
sprite_change_offset("missiles",9,9);

sprite_change_offset("cars",6, 6);
sprite_change_offset("cars_extra",10, 10);
/*
sprite_change_offset("car_cla",6, 6);
sprite_change_offset("car_zet",6, 6);
sprite_change_offset("car_syl",6, 6);
sprite_change_offset("car_kra",6, 6);
sprite_change_offset("car_ell",6, 6);
sprite_change_offset("car_for",6, 6);
sprite_change_offset("car_may",6, 6);
sprite_change_offset("car_orc",6, 6);
sprite_change_offset("car_eta",6, 6);
sprite_change_offset("car_ori",6, 6);
sprite_change_offset("car_wra",6, 6);
sprite_change_offset("car_ran",6, 6);
sprite_change_offset("car_sho",6, 6);
sprite_change_offset("car_abs",6, 6);
*/

item_pool_leading = [];
item_pool_close = [];
item_pool_medium = [];
item_pool_far = [];
item_pool_last = [];

kart_ins = array_create(4, noone);
total_karts = 0;

last_waypoint = noone;
first_waypoint = noone;

int_ins = ds_list_create();
total_interacts = 0;

user_event(1);