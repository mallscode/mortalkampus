if (keyboard_check(vk_right) && keyboard_check(vk_left)) {
		sprite_index = spr_idle_henrique;
} else {
    if (keyboard_check(vk_right)) {
        if (!place_meeting(x + hspd, y, obj_wall)) {
            x += hspd;
			sprite_index = spr_walking_henrique;
        }
        image_xscale = 1;
    } else if (keyboard_check(vk_left)) {
        if (!place_meeting(x - hspd, y, obj_wall)) {
            x -= hspd;
			sprite_index = spr_walking_henrique;
        }
        image_xscale = -1;
    } else {
		sprite_index = spr_idle_henrique;
    }
}
