if (ultupper == 6){
    shinetimer += 1;
    if (shinetimer >= 35){
        shinetimer = 1;
    }
    if (shinetimer == 1){
        outline_color = [35, 35, 35];
    }
    if (shinetimer == 2){
        outline_color = [75, 75, 75];
    }
    if (shinetimer == 3){
        outline_color = [105, 105, 105];
    }
    if (shinetimer == 4){
        outline_color = [135, 135, 135];
    }
    if (shinetimer == 5){
        outline_color = [190, 190, 190];
    }
    if (shinetimer == 6){
        outline_color = [190, 190, 190];
    }
    if (shinetimer == 7){
        outline_color = [225, 225, 255];
    }
    if (shinetimer == 8){
        outline_color = [190, 190, 190];
    }
    if (shinetimer == 9){
        outline_color = [190, 190, 190];
    }
    if (shinetimer == 10){
        outline_color = [135, 135, 135];
    }
    if (shinetimer == 11){
        outline_color = [105, 105, 105];
    }
    if (shinetimer == 12){
        outline_color = [75, 75, 75];
    }
    if (shinetimer == 13){
        outline_color = [35, 35, 35];
    }
    if (shinetimer >= 14){
        outline_color = [0, 0, 0];
    }
    init_shader();
}

if(ultupper == -1){
    outline_color = [0, 0, 0];
    init_shader();
}