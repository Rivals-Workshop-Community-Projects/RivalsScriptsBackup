//visual objects or blank slates




//Used to determine how long he's been alive for
lifeTimer = 0;

//pprojectile
bowjrPrep = 24;

setDestroy = 0;

//Used to determine which state he's currently in
// 0 - flying up
state = -1;

//Other Variables
fadeTimer = 20;//Amount of frames needed to fade in
ascendSpeed = 14;//How fast he flies up to mario
ascendImageSpeed = 0.3;//How fast he animates while flying up
helpingImageSpeed = 0.5;


uspecg = 32;

//other
uses_shader = false;
drop = false;
chestanimate = 38;
notbowser = false;

firevell_timer = 200;

watervell_timer = 200;

icevell_timer = 260;

earthvell_timer = 240;

ive_earthed = false;
earthtimer = 80;

dralpha = 0;

player = 0;

player_image_index = 0;

icechunk_timer = 70;
icefloor_timer = 840;
icefloor_hit = false;
icefloor_hit_x = 0;
icefloor_hit_y = 0;

waterspout_timer = 120;

icechunkbrk = hit_fx_create( sprite_get( "icechunk_break" ), 36);