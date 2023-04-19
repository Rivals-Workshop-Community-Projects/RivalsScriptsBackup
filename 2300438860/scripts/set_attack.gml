//

if attack = AT_USPECIAL {
	attack = AT_UTHROW
}
if attack == AT_DSPECIAL && move_cooldown [AT_DSPECIAL] == 0 {
	attack = AT_USPECIAL
}