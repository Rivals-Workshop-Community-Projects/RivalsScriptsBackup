
if attack == AT_NSPECIAL {
      clear_button_buffer( PC_JUMP_PRESSED );
}


if attack == AT_FAIR or attack == AT_NAIR or attack == AT_UAIR or attack == AT_DAIR or attack == AT_BAIR {
	set_attack_value(attack, AG_CATEGORY, 2);
}