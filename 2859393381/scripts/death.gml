turnabout = false;
turnabout_timer = 0;
turnabout_timer_pause = 0;

evidence_count = 0;
good_evidence_count = 0;
bad_evidence_count = 0;
turnabout_ready = false;    //good_evidence_count = 3

evidence_roll = 0;          //roll for evidence type 

evidence1_status = 0;       //0none, 1good, 2bad, 3food
evidence1 = 0;              //0none, 1-6good, 7-16bad, 17-18food
evidence2_status = 0; 
evidence2 = 0; 
evidence3_status = 0; 
evidence3 = 0;              //evidence to throw on use of fspecial, 
throw_evidence = 0;         //pick the first bad piece of evidence to throw 
evidence_proj_sprite = 0;   //evidence_proj"__"_strip4

dspecial_random_index = 2;  //so the while script in dspecial doesn't crash the game

key_dir = 0;
ustrong_launch_dir = 0;

uspecial_angle = 90;
uspecial_old_hsp = hsp;
uspecial_old_vsp = vsp;
