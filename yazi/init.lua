require("relative-motions"):setup({ 
    show_numbers = "relative", -- O "absolute" si lo prefieres
    show_current = true 
})

-- Método oficial para inyectar componentes en Yazi
local old_current_render = Current.render
function Current:render(area)
    local chunks = self:layout(area)
    return ya.flat {
        old_current_render(self, area),
        require("relative-motions"):render(chunks),
    }
end
