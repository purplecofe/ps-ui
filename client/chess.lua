local open = false

RegisterNUICallback('chess-callback', function(data, cb)
	SetNuiFocus(false, false)
    Callbackk(data.success)
    open = false
    cb('ok')
end)

function ChessHack(callback, speed)
    if not open then
        Callbackk = callback
        SetNuiFocus(true, true)
        SendNUIMessage({
            type = "open",
            speed = speed,
        })
    end
end

exports("ChessHack", ChessHack)