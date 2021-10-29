with oPlayer {
	if "url" not in self || real(url) < 100 {
		other.select[player - 1] = other.empty_spr
		other.icon[player - 1] = other.empty_spr
		other.name[player - 1] =   get_char_info(player, INFO_STR_NAME)
		other.author[player - 1] = "Rivals Team"
	} else {
		other.select[player - 1] = get_char_info(player, INFO_CHARSELECT)
		other.icon[player - 1] =   get_char_info(player, INFO_ICON)
		other.name[player - 1] =   get_char_info(player, INFO_STR_NAME)
		other.author[player - 1] = get_char_info(player, INFO_STR_AUTHOR)
	}
}