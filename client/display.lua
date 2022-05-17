local Text = ""
local Color = "primary"

exports("DisplayText", function(text, color)
    if text == nil then Text = "" else Text = text end
    if color ==  nil then Color = "primary" else Color = color end
    SendNUIMessage({
        action = "interactions",
        text = Text,
        show = true,
        color = Color,
    })
end)

exports("HideText", function()
    Text = ""
    Color = "primary"
    SendNUIMessage({
        action = "display",
        show = false,
    })
end)



