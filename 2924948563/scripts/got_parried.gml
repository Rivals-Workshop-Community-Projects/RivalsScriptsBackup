if attack == AT_FSPECIAL && free {
    set_state(PS_PRATFALL);
}

if attack == AT_DSPECIAL_AIR{
    if free {
    		set_attack(AT_FSPECIAL);{
                window = 4;
                window_timer = 14;
    		}
    }
    if !free{
        set_attack(AT_FSPECIAL);{
                window = 5;
                window_timer = 1;
    		}
    }
} 