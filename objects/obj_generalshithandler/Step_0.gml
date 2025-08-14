// step event
if os_type != os_windows {
    if oldwidth != browser_width or oldheight != browser_height {
        window_set_size(browser_width,browser_height)
        surface_resize(application_surface,browser_width,browser_height)
        camera_set_view_size(view_camera[0],browser_width,browser_height)
        oldwidth = browser_width
        oldheight = browser_height
    }
}
else {
    if oldwidth != window_get_width() or oldheight != window_get_height() {
        window_set_size(window_get_width(),window_get_height())
        surface_resize(application_surface,window_get_width(),window_get_height())
        camera_set_view_size(view_camera[0],window_get_width(),window_get_height())
        oldwidth = window_get_width()
        oldheight = window_get_height()
    }    
}