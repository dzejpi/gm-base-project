/// @description Create the main menu
// Button indentation
button_indentation = 64 + 32;

// Set the X position
button_x_position = room_width/2;
button_y_position = (room_height/2) + (button_indentation/2);

// Fade out
instance_create_depth(x, y, 0, obj_game_start_fade_out);

instance_create_depth(button_x_position, button_y_position - (button_indentation * 2), 0, obj_new_game_button);
instance_create_depth(button_x_position, button_y_position - (button_indentation * 1), 0, obj_sound_button);
instance_create_depth(button_x_position, button_y_position + (button_indentation * 0), 0, obj_music_button);
instance_create_depth(button_x_position, button_y_position + (button_indentation * 1), 0, obj_quit_button);