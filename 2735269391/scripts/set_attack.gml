/// my_hitboxID.attack
/* scrap idea
if move_cooldown[AT_JAB] != 0 {
    
switch attack {
 case AT_NAIR :
 case AT_JAB :
 case AT_FTILT : 
 case AT_FAIR :
 case AT_DATTACK :
 attack = AT_FSTRONG
 break;
 
 case AT_BAIR :
  spr_dir *= -1
 attack = AT_FSTRONG
 break;
 
 case AT_DAIR :
 case AT_DTILT :
 if  right_down - left_down != 0 spr_dir = right_down - left_down
 attack = AT_DSTRONG
 break;
 
 case AT_UAIR :
 case AT_UTILT :
 attack = AT_USTRONG
 break;
 
 
}

}