local M = {}

M.cameras = {
    native_camera.new({
        orthographic = true,
        near_z = -255,
        far_z = 1,
        view_area_width = 1600,
        view_area_height = 1000,
        ortho_scale_mode = native_camera.SCALE_MODE.EXPANDVIEW,
    }),
    native_camera.new({
        orthographic = false,
        near_z = 0.1,
        far_z = 2000,
        fov = math.rad(60),
        position = vmath.vector3(0, 0, 500),
    })
}

M.current_camera = M.cameras[1]

pprint(M.cameras)

M.set_screen_size = function(width, height)
    for _, camera in ipairs(M.cameras) do
        camera:set_screen_size(width, height)
    end
end
return M
