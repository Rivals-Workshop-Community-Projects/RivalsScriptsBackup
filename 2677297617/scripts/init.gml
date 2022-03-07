//asd

phase = 0; 
/*phase 0 will start at Haltmann's boss arena, 
phase 1 will start leaving Hatlmann;s boss arena
phase 2 will start in space with the planets, 
phase 3 while start in space without the planets
phase 4 will have the kaleidoscope
phase 5 will have the kaleidoscope miscolored
*/


phase_time = 1300;

popstarDown = 6060;
otherPlanets = 4000;
groundLeave = 1770;

starTimer = 0;//don't touch
starTimerDef = 10;//how often we spawn a star
starX = get_marker_x(1);//x and y of where we're spawning stars
starY = get_marker_y(1);

//Camera logic from Habrige
view_follow = ds_list_create();
view_focus = noone;
cam_x = 0;
cam_y = 0;