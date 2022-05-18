local open = false

RegisterNUICallback('thermite-callback', function(data, cb)
	SetNuiFocus(false, false)
    Callbackk(data.success)
    open = false
    cb('ok')
end)

function Thermite(callback, time, gridsize, wrong)
    if time == nil then time = 10 end
    if gridsize == nil then gridsize = 6 end
    if wrong == nil then wrong = 3 end

    if not open then
        Callbackk = callback
        open = true
        SendNUIMessage({
            action = "thermite-start",
            time = time,
            gridsize = gridsize,
            wrong = wrong,
        })
        SetNuiFocus(true, true)
    end
end

exports("Thermite", Thermite)