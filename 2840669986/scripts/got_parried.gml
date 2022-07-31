//got_parried.gml

if (my_hitboxID.attack == AT_JAB){
    jab_parried = true;
}

if (my_hitboxID.attack == AT_DSPECIAL_2){
    if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
		with(vacuum){
			should_die_instantly = true;
		}
	}
}