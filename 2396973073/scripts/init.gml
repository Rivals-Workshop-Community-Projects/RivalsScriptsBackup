//Each ins_X is a part of the stage!
//Its an easy way to initialize each variable with only one marker
//can also give each instance its own depth and parallax!
//Sadly, can't do tiling and autoscroll in here :(


var ins_1 //boombox
	ins_1 = instance_create(get_marker_x(1),get_marker_y(1),"obj_stage_article", 1)
    ins_1.depth = 12 //12
  //    if (character_strip_name != "gfrapper") {
  
  
var ins_2 //gf
	ins_2 = instance_create(get_marker_x(1),get_marker_y(1),"obj_stage_article", 2)
    ins_2.depth = 11
 //   }
    
var ins_3 //bf
	ins_3 = instance_create(get_marker_x(3),get_marker_y(3),"obj_stage_article", 3)
    ins_3.depth = 11

    
var ins_4 //random opponent
	ins_4 = instance_create(get_marker_x(2),get_marker_y(2),"obj_stage_article", 4)
    ins_4.depth = 11 //must be at least 31 for galaxy to appear on top


var ins_5 //GROUND LAYER
	ins_5 = instance_create(get_marker_x(1),get_marker_y(1),"obj_stage_article", 5)
    ins_5.depth = 13 //must be at least 31 for galaxy to appear on top
     ins_5.parallax_x = 0
     ins_5.parallax_y = 0

    
var ins_6 //curtains
	ins_6 = instance_create(get_marker_x(1),get_marker_y(1),"obj_stage_article", 6)
    ins_6.depth = 32 //must be at least 31 for galaxy to appear on top
    ins_6.parallax_x = -0.7
    ins_6.parallax_y = -0.7
    
var ins_7 //backdrop
	ins_7 = instance_create(get_marker_x(1),get_marker_y(1),"obj_stage_article", 7)
    ins_7.depth = 34 //must be at least 31 for galaxy to appear on top
    ins_7.parallax_x = -1.10
    ins_7.parallax_y = -1.10

//backdrop parallax 60 on both

//curtain parallax 35 on both


stage_special_cooldown = 0
    stage_attack_cooldown = 0
    stage_jump_cooldown = 0



characterdeterminer = 30
songdeterminer = 30
    character_strip_name = "dhjashsajsa"
  boyfrienddeterminer = 2

    crouch_timer = 0;

stageskindeterminer = 0
    
    old_song_name = "twekve"
    
    song_name = "bleh"
    
    bpm = 400
    
    //init.gml:
practice = (get_training_cpu_action() != CPU_FIGHT);
//update.gml:
// this is just in case you refresh with the cpu on fight,
// that way when you set it back to stand (or any other mode that isn't fight) it recognizes it's practice mode.
if (!practice) practice = (get_training_cpu_action() != CPU_FIGHT);


time_for_music_to_start = 125