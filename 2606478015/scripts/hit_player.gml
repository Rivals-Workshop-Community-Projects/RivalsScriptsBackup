if(my_hitboxID.attack == AT_DSPECIAL){
    gyro.hit_timer = 20
    if(my_hitboxID.hbox_num == 3){
        gyro.hsp = (gyro.hsp / 3) * -1
        gyro.vsp = -3
    }
}