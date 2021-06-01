//got_parried
if my_hitboxID != AT_FSPECIAL && my_hitboxID != AT_NSPECIAL{
momentum = 0;
hsp = 0
}

if(my_hitboxID == AT_NSPECIAL){
    jetpack.rotation += 3
    jetpack.vsp = -3
    jetpack.hsp = -3 + random_func_2(1, 6, false)
}

