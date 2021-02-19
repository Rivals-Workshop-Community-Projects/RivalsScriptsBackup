//article1_update

switch article_which {
    case 1: //gcm particle
        vsp /= 1.1;
        livetimer++;
        if livetimer >= 30 {
            image_alpha = (60 - livetimer) / 30;
            if livetimer >= 60 {
                instance_destroy();
            }
        }
    break;
    default:
    break;
}