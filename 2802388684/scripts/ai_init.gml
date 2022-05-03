if (!custom_clone) {

    //Naruto AI.
    far_down_attacks = [AT_DAIR, AT_DAIR, AT_DTILT, AT_NAIR, AT_NAIR, AT_USPECIAL];
    
    far_side_attacks = [AT_DATTACK, AT_FAIR, AT_NSPECIAL, AT_FSPECIAL];
    
    mid_side_attacks = [AT_JAB, AT_FTILT, AT_FSTRONG];
    
    close_up_attacks = [AT_JAB, AT_UAIR, AT_UAIR, AT_USTRONG];
    
    close_down_attacks = [AT_DTILT, AT_DAIR, AT_NAIR];
    
    close_side_attacks = [AT_NAIR];
    
    neutral_attacks = [AT_NSPECIAL, AT_DSPECIAL, AT_DSPECIAL];
}

else {
    //clone AI.
    //by default, the clone AI doesn't attack unless it is a Down-Special clone.
    //to change that, add a copy of the AI move arrays here.
    
    //Down-Special Clone AI gets set in user_event6.gml.
}