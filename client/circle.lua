local Result = nil
local NUI_status = false


local function Circle(circles, seconds, callback)
    Result = nil
    NUI_status = true
    SendNUIMessage({
        action = 'circle-start',
        circles = circles,
		time = seconds,
    })
    while NUI_status do
        Wait(5)
        SetNuiFocus(NUI_status, false)
    end
    Wait(100)
    SetNuiFocus(false, false)
    return Result
end
exports("Circle", Circle)

RegisterNUICallback('circle-fail', function()
        Result = false
        Wait(100)
        NUI_status = false
end)

RegisterNUICallback('circle-success', function()
	Result = true
	Wait(100)
	NUI_status = false
    SetNuiFocus(false, false)
    return Result
end)