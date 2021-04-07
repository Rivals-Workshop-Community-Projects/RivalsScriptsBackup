//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

sprite_index = sprite_get("nothing");

state = -1
// -1 = invisible
//0 = grab
//1 = falling

life = 5;

step = 0;
destroyed = false;

blood_fx = hit_fx_create( sprite_get("blood"), 20 )