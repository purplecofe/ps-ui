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
        open = true
        SendNUIMessage({
            action = "chess-start",
            speed = speed,
        })
        SetNuiFocus(true, true)
    end
end

exports("ChessHack", ChessHack)