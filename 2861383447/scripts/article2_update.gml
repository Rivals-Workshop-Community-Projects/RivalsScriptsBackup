//sound_play(asset_get("sfx_clairen_dspecial_counter_active"));

depth = player_id.depth-1;

y = lerp(y, final_y, lifetime/40);



if (lifetime == 0){



//remove dupes from arrays


//Chances

// var check_chance;
// check_chance = random_func( 0, 10, true );

// if (player_id.evidence_pity >= 5)
// {
//     check_chance = 7;
// }

// if (check_chance < 7)
// {
//     is_dirt = true;

// }
// else
// {

    

//     check_chance = random_func( 1, 10, true );
//     if (check_chance < 6){
//         get_evidence(0);
//     }
//     else if (check_chance < 8){
//         get_evidence(2);
//     }
//     else if (check_chance < 10){
//         get_evidence(1);
//     }else
//     {
//         is_dirt = true;
//     }
// }


is_dirt = true;


    if (is_dirt){
        if (player_id.dirt_inv < player_id.max_dirt_inv)
        player_id.dirt_inv++;

        var sound_rand = 1 + random_func( 0, 4, true );
        sound_play(sound_get("grass" + string(sound_rand)));

        player_id.evidence_pity++;
    }
    else if (!is_dirt)
    {


            var stored = false;
            for (i = 0; i < array_length(player_id.evidence); i++){

                    if (player_id.evidence[i][0] == undefined && !stored)
                    {
                        player_id.evidence[i,0] = evidence;
                        player_id.evidence[i,1] = evidence_type;
                        player_id.evidence[i,2] = evidence_took;
                        player_id.evidence[i,3] = evidence_index;

                        sprite_index = sprite_get("evidence");
                        image_index = evidence;



                        stored = true;
                        sound_play(sound_get("evidence_get"));

                    }
                    

            }
            

            if (!stored){
                if (player_id.dirt_inv < player_id.max_dirt_inv)
                player_id.dirt_inv++;
                
                var sound_rand = 1 + random_func( 0, 4, true );
                sound_play(sound_get("grass" + string(sound_rand)));
            }

    }

}

lifetime++;

if (lifetime == 20)
    instance_destroy(id);



#define get_evidence(type)

    var ar_ind = random_func( 5, array_length(player_id.evidence_list[type]), true );



    while (player_id.evidence_list[type][ar_ind][1] == 1) && (max_loops > 0){

    ar_ind = (ar_ind < array_length(player_id.evidence_list[type])) ? ar_ind++ : 0;
        

    max_loops--;

    }
    
    if (player_id.evidence_list[type][ar_ind][1] == 1)
        is_dirt = true;

    

    if (!is_dirt){
    evidence = player_id.evidence_list[type][ar_ind][0];
    player_id.evidence_list[@type][@ar_ind][@1] = 1;
    evidence_took = player_id.evidence_list[@type][@ar_ind][@1];
    evidence_index = ar_ind;
    player_id.evidence_pity = 0;
    }

    evidence_type = type;