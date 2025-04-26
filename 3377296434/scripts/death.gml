if (instance_exists(brick)){
    if (brick.state == 3){
        brick.state = 2;
        brick.state_timer = 0;
        brick.hsp = 0;
        brick.vsp = -8;
    }
}