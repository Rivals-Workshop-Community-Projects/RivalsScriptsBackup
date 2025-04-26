//article3_init
life_timer = 0;
// telesprite = "teleporter_opening";
hurtbox_spr = sprite_get("toolbox");
mask_index = sprite_get("toolbox")
sprite_index = sprite_get("toolbox");
image_index = 0;
image_xscale = 2;
image_yscale = 2;

//article 3 is for fpecial and dspecial's articles/"tools"

sprite[0] = sprite_get("toolboxair"); //toolbox of boxing in the air
sprite[1] = sprite_get("toolbox"); //toolbox idle/attacking
sprite[2] = sprite_get("toolbox2"); //toolbox alternate idle/attacking

sprite[3] = sprite_get("rat_spawn"); //rat goingup
sprite[4] = sprite_get("rat_idle"); //rat idle
sprite[5] = sprite_get("rat_walk"); //rat walking
sprite[6] = sprite_get("rat_fly"); //rat flying
sprite[7] = sprite_get("rat_damage"); //rat dying

mini_type = 0; //0=toolbox, 1=rat

//universal code
//framerate/animation stuff
life_timer = 0;
frame_num = 4;//this tells how many fps the animation uses
frames_3s = [3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36]
frames_4s = [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 47]
frames_5s = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65]

//universal tool code
tool_alive = 1;//when this equals 0, it dissapears, if it is less than 1, it is floating dead
tool_type = 0;
wait_timer = 0;//does different things for each tool, but just lets them wait
tool_state = 0;//explanation below
//toolbox: 0 = flying, 1 = landed, 2 = punching, 10 = dead
//rat: 0 = spawning, 1 = idle, 2 = walking, 3 = flying, 10 = dead


//toolbox code
is_bread = false; //when voices are on, he has an easter egg for bread to chomp instead of a boxing glove


//rat code
death_timer = 0;//death comes for us all, and the rat is no exception


can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
type = 0;
