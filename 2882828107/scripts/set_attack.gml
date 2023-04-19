//set_attack
if (attack == AT_DATTACK){
    with oPlayer if id != other.id && dattack_drag == other.id {
		dattack_drag = false;
    }
}