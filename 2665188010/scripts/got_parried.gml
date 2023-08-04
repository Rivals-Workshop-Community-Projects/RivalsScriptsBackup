//got_parried

if my_hitboxID.attack == AT_JAB{
    azelf_jab_parried = true;
}
if my_hitboxID.attack == AT_NSPECIAL{
    if my_hitboxID.hbox_num == 1{
        was_parried = true;
    }
}