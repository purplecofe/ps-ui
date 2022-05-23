local function Input(InputData)
    SendNUIMessage({
        action = "input",
        data = InputData
    })
    SetNuiFocus(true, true)
end
exports("Input", Input)
