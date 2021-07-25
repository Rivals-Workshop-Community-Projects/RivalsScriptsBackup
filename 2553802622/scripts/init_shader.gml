if("power_color" in self)
{
    switch(power_color) {
        case 0:
            set_character_color_slot(2, 64, 255, 249, 1);
            set_article_color_slot(2, 64, 255, 249, 1);
            break;
        case 1:
            set_character_color_slot(2, 255, 87, 64, 1);
            set_article_color_slot(2, 255, 87, 64, 1);
            break;
        case 2:
            set_character_color_slot(2, 255, 243, 33, 1);
            set_article_color_slot(2, 255, 243, 33, 1);
            break;
        case 3:
            set_character_color_slot(2, 216, 216, 255, 1);
            set_article_color_slot(2, 216, 216, 255, 1);
            break;
        case 4:
            set_character_color_slot(2, 150, 58, 36, 1);
            set_article_color_slot(2, 150, 58, 36, 1);
            break;
    }
}