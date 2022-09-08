//if(clone_active == true){

//Swap button code:
if(swap_nspec_dspec_input == true){
    switch(attack){
        case AT_DSPECIAL:
            attack = AT_NSPECIAL;
        break;
        case AT_NSPECIAL:
            attack = AT_DSPECIAL;
        break;
    }
}

// Change based on closed
//print(instance_exists(clone_object_ID));
if(instance_exists(clone_object_ID)){
    switch(attack){
        case AT_FSPECIAL:
            var distance_to_clone = point_distance(x,y - 30,clone_object_ID.x,clone_object_ID.y - 30);
            if(distance_to_clone < 75){window = 2;}
            if(distance_to_clone > 75){attack = AT_FSPECIAL_AIR;}
            //hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
            break;
            
        case AT_USPECIAL:
            var distance_to_clone = point_distance(x,y - 30,clone_object_ID.x,clone_object_ID.y - 30);
            if(distance_to_clone < 75){window = 2;}
            if(distance_to_clone > 75){attack = AT_USPECIAL_GROUND;}
            //attack = AT_USPECIAL_GROUND;
            break;
            
        case AT_NSPECIAL:
            attack = AT_NSPECIAL_2;
            break;
            
        default:
            break;
    }
}
else if(instance_exists(wisp_object_ID)){ // Clone on cooldown
    switch(attack){
        case AT_USPECIAL:
            attack = AT_USPECIAL_GROUND;
            break;
        
        case AT_FSPECIAL:
            attack = AT_FSPECIAL_AIR;
            break;
            
        case AT_NSPECIAL:
            attack = AT_NSPECIAL_2;
            break;
            
        default:
            break;
    }
}
else{ // Clone not spawned and not on cooldown
    switch(attack){
        case AT_USPECIAL:
            attack = AT_USPECIAL;
            break;
        
        case AT_FSPECIAL:
            attack = AT_FSPECIAL;
            break;
            
        default:
            break;
    }
}

switch(attack){
    case AT_DSPECIAL:
    pull_to_x = 0;
    pull_to_y = 0;
        break;
    
    default:
        break;
}