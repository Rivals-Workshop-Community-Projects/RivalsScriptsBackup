
//Turn cameos off based on load random
if(get_gameplay_time() == 1){
    with(obj_stage_article){
        switch(spawn_variables[0]){
            case 0: //bonfire
                if(other.spawn_anastacia = 1){
                    active = false;
                }
            break;
            case 1: //anastacia
                if(other.spawn_anastacia = 1){
                    active = false;
                }
            break;
            case 2: //crestfallen
                if(other.spawn_crestfallen = 1){
                    active = false;
                }
            break;
            case 3: //siegmeyer
                if(other.spawn_siegmeyer = 1){
                    active = false;
                }
            break;
            case 4: //crow
                if(other.spawn_crow = 1){
                    active = false;
                }
            break;
            case 5: //solaire
                if(other.spawn_solaire = 1){
                    active = false;
                }
            break;
            case 5: //chosen
                if(other.spawn_chosen = 1){
                    active = false;
                }
            break;
        }
    }
}