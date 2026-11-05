-- Use `zvm i 0.XX.Y --zls to install the zls together with new zig version
return {
    cmd = { "zls" },
    filetypes = { "zig", "zir" },
    root_markers = {
        "build.zig",
        "build.zig.zon",
        ".git",
    },
    settings = {
        zls = {
            zig_exe_path = vim.fn.exepath("zig"),
        },
    },
}
