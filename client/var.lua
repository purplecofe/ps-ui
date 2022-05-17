local open = false

RegisterNUICallback('var-callback', function(data, cb)
	SetNuiFocus(false, false)
    Callbackk(data.success)
    open = false
    cb('ok')
end)

function var(callback, blocks, speed)
    if not open then
        Callbackk = callback
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "var-start",
            blocks = blocks,
            speed = speed,
        })
    end
end

exports("var", var)
