
local function CreateMenu(MenuData)

end
exports("CreateMenu", CreateMenu)

RegisterNetEvent("ps-ui:CreateMenu", function(MenuData)
    CreateMenu(MenuData)
end)

local function CloseMenu()

end
exports("CloseMenu", CloseMenu)

RegisterNetEvent("ps-ui:CloseMenu", function()
    CloseMenu()
end)