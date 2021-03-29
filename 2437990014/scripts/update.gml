/*paratroopers*/
//spawn grenadiers at start of match midway through drop
if(get_gameplay_time() == 1){
    for(i = 0; i < num_troopers; ++i){
        para = instance_create(0, 0, "obj_stage_article", 7);
        para.lifetime = start_spawn[i, 0];
        para.start_x = start_spawn[i, 1];
    }
}

//periodally spawn batches of grenadiers
else if(round(get_gameplay_time()) mod event_interval == 0){
    spawn_troopers = true;
}

if(spawn_troopers){
    if(round(get_gameplay_time()) mod spawn_interval = 0){
        instance_create(0, 0, "obj_stage_article", 7);
        ++spawn_trooper_count;
    }        
    if(spawn_trooper_count >= num_troopers){
        spawn_troopers = false;
        spawn_trooper_count = 0;
    }
}

//periodically spawn tank or lancers
if(--timer <= 0){
    n = random_func(current_second, 4, true);
    if(n == 3){
        instance_create(0, 0, "obj_stage_article", 6);
    }
    else{
        cav_num = 3;
    }
    timer = 1000 + random_func(0, 2000, true);
}
if(cav_num > 0){
    if(--cav_interval <= 0){
        instance_create(0, 0, "obj_stage_article", 14);   
        cav_interval = 5 + random_func(current_second, 50, true);
        --cav_num;
    }
}

//transition to finale
switch(transition){
    case 1: 
        //transition after 1000 frames if testing
        if(get_gameplay_time() == 1000 && stocks == 0){
            transition = 2;
            trans_time = 1000;
        }
        //transition in last third of match or with third of stocks remaining
        with(oPlayer){
            if(get_player_stocks(player) <= round(other.stocks/3) && other.stocks != 0 && get_gameplay_time() > 100){
                other.transition = 2;
                other.trans_time = get_gameplay_time();
            }
        }
        if(get_game_timer() <= (get_game_timer() + get_gameplay_time())/3 && get_gameplay_time() > 100 && stocks != 0){
            transition = 2;
            trans_time = get_gameplay_time();
        }
    break;

    case 2:
        if(get_gameplay_time() > trans_time /*&& get_gameplay_time() < trans_time + 600*/){
            suppress_stage_music(0, 0.01);    
        }
        if(get_gameplay_time() == trans_time + 80){
            sound_play(sound_get("horn"));
        }
        with(obj_stage_article){
            //captain
            if(num == 1 && get_gameplay_time() == other.trans_time + 10){
                a14_activate = true;
            }
            //trench
            if(num == 2 && get_gameplay_time() == other.trans_time + 10){
                a4_activate = true;
            }
            //temple
            else if(num == 10 && get_gameplay_time() == other.trans_time + 100){
                activate = true;
            }
            //perpetual field pattern archive
            else if(num == 21 && get_gameplay_time() == other.trans_time + 1100){
                activate = true;
                other.transition = 3;
            }
            //light explosion and lazers
            else if(num == 22 && get_gameplay_time() == other.trans_time + 400){
                activate = true;
            }
            //lightning
            else if(num == 26 && get_gameplay_time() == other.trans_time + 10){
                activate = true;
            }
        }
    break;
    
    case 3:
        //switch to faster version
        switch(track){
            case 0:
                track = 2;
            break;
            
            default:
                track = 3;
            break;
        }
        transition = 4;
    break;
    
    default:
    break;
}

switch(track){
    case 0: 
        music_play_file("righteous_edge");
    break;
    
    case 1:
        music_play_file("unquivering_resolve");
    break;
    
    case 2:
        music_play_file("faster_righteous_edge");
    break;
    
    default:
        music_play_file("faster_unquivering_resolve");
    break;
}
