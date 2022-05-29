if(pandoria.pandy_control){
    pandoria.hsp = 0;
    pandoria.state_timer = 0;
    pandoria.state = 12;
}

if(in_affinity){
    if(enemy_hitboxID.kb_scale > 0){
        pandoria.affinity -= 8;
    }else{
        pandoria.affinity -= 3;
    }
}