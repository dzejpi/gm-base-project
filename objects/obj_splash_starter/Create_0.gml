/// @description Start the splash screen
// Fix HTML5 scaling right away
instance_create_depth(x, y, 0, obj_window_size_handler);

// 
displaying_splash = true;
displayed_splash = false;

alpha_image = 0.00;

splash_speed = 0.01;

// How 
logo_displaying = 1;