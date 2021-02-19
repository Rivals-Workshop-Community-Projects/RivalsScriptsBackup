//parry.gml

if enemy_hitboxID.type == 2{
    tp_gauge += 25;
} else {
    tp_gauge += 40;
}

if (tp_gauge > 100){
    tp_gauge = 100;
}

if diamondbutbetterkrisbbutbetter{
    set_state(PS_IDLE);
}