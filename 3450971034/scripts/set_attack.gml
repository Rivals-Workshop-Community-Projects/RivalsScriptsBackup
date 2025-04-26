///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml
is_attacking = true;
fspecial_reversed = false;

if (attack == AT_FSPECIAL && outline_color == prev_outline && fspecial_charge >= fspecial_large_charge) {
    outline_color = [0, 0, 0];
    init_shader();
}
