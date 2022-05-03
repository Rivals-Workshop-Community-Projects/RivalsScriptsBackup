if (state == PS_HITSTUN or state == PS_RESPAWN or state == PS_WALL_TECH or state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0; 
}

//______________________________________________________________________________Passive-FX

if (state == PS_WALK){
    var C = random_func(1,300,true)
        if C == 1{
            spawn_hit_fx( x, y, ZZ1);
        }
}

if (state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_DOUBLE_JUMP or state == PS_IDLE_AIR){
    var C = random_func(1,300,true)
        if C == 1{
            spawn_hit_fx( x, y, ZZ2);
        }
}

if (state == PS_DASH or state == PS_DASH_START or state == PS_DASH_STOP or state == PS_DASH_TURN){
    var C = random_func(1,300,true)
        if C == 1{
            spawn_hit_fx( x, y, ZZ3);
        }
}

//------------------------------------------------------------------------------

if (state == PS_HITSTUN){
    var C = random_func(1, 30,true)
        if C == 1{
            var A = random_func(2,10,true)
                if A == 2{
            spawn_hit_fx( x, y, ZZ6);
                }
        }
}
if (state == PS_HITSTUN){
    var B = random_func(2, 30,true)
        if B == 2{
            var D = random_func(3,10,true)
                if D == 3{
            spawn_hit_fx( x, y, ZZ7);
                }
        }
}

//------------------------------------------------------------------------------

if (state == PS_IDLE){
    var C = random_func(1, 400,true)
        if C == 1{
            spawn_hit_fx( x, y, ZZ5);
    print("this message should only appear once.");
        }
}

if (state == PS_IDLE){
    var A = random_func(3, 400,true)
        if A == 1{
            spawn_hit_fx( x, y, ZZ4);
    print("2");
        }
}