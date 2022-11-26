pub const c = if (@import("builtin").cpu.arch == .wasm32 or @import("builtin").cpu.arch == .wasm64)
    @cImport({
        @cInclude("GLFW/glfw3.h");
    })
else
    @cImport({
        @cDefine("GLFW_INCLUDE_VULKAN", "1");
        @cInclude("GLFW/glfw3.h");
    });
