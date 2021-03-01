// got_parried

if attack == AT_DSTRONG if free set_state(PS_PRATFALL); else set_state(PS_PRATLAND);
//if attack == AT_JAB set_state(6);
if attack == AT_USTRONG set_state(PS_PRATFALL);