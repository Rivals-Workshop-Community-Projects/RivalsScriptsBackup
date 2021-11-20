//article2_init
//various attacks (used only for theikos D-strong actually)

can_be_grounded = false;
ignores_walls = false;
free = false;
uses_shader = true;

state = 0; //to set up the different things this article can do
state_timer = 0;

golden = false;
if ((player_id.theikos_active || player_id.theikos_alt || player_id.od_already_active || player_id.godpower)  && !player_id.is_8bit) golden = true;
else golden = false;

anim_speed = 0.2;

groundfire = noone;

//state dictionary:
//0 = (unused)
//1 = (unused)
//2 = (unused)
//3 = (unused)
//4 = accel blitz
//5 = chasm burster (if it's better to make it an article)
//6 = power smash
//7 = (unused)
//8 = (unused)
//9 = light hookshot
//10 = theikos Ustrong
//11 = (unused)
//12 = theikos Dstrong