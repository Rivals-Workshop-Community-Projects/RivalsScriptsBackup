if (attack == AT_NSPECIAL && article_1_count > 0){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_NSPECIAL_2){
	// new detonate test
}

// meh...
if (taunt_pressed){
    if (taunt_detonate){
        // attack = AT_TAUNT;
    } else{
        attack = AT_TAUNT_2;
    }
}