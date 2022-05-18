local open = false

RegisterNUICallback('var-callback', function(data, cb)
	SetNuiFocus(false, false)
    Callbackk(data.success)
    open = false
    cb('ok')
end)

function VarHack(callback, blocks, speed)
    if not open then
        open = true
        Callbackk = callback
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "var-start",
            blocks = blocks,
            speed = speed,
        })
    end
end

exports("VarHack", VarHack)
