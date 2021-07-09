if (ultupper == 6){
    if(get_gameplay_time() % 60 == 0){
        shinetimer = 0;
    }
    if(shinetimer == 31){
        shinetimer = -1;
    }else if(shinetimer > -1){
        var r = 255 * sin(degtorad(6 * shinetimer));
        var g = 255 * sin(degtorad(6 * shinetimer));
        var b = 255 * sin(degtorad(6 * shinetimer));
        outline_color = [r, g, b];
        init_shader();
        shinetimer++;
    }
}

if(ultupper == -1){
    outline_color = [0, 0, 0];
    init_shader();
}