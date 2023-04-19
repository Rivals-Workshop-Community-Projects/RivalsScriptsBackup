//Spawnable Object (accounts for the Treasure Chest and party members on Taunt)

window = 1;
window_timer = 0;
state = PS_SPAWN;
state_timer = 0;

anim_frames = 0;
anim_frames_start = 0;
window_length = 1;
window_loop = false;

obj_type = 0; //0 = treasure chest; 1 = Therese; 2 = Marsha; 3 = Lucius; 4 = Yanfly

uses_shader = false;