-- Main thread
Citizen.CreateThread(function()
    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Show help messages
        DrawHudTextRight("Spawn car - ~g~M", {255, 255, 255, 255}, 0.995, 0.895, 0.4, 0.4)
        DrawHudTextRight("Seatbelt - ~g~K", {255, 255, 255, 255}, 0.995, 0.920, 0.4, 0.4)
        DrawHudTextRight("Cruise control - ~g~CAPSLOCK", {255, 255, 255, 255}, 0.995, 0.945, 0.4, 0.4)
        DrawHudTextRight("Teleport to waypoint/reset race - ~g~F5", {255, 255, 255, 255}, 0.995, 0.970, 0.4, 0.4)
    end
end)

-- Utility function to display HUD text
function DrawHudTextRight(text,colour,coordsx,coordsy,scalex,scaley)
    SetTextFont(4)
    SetTextProportional(7)
    SetTextScale(scalex, scaley)
    local colourr,colourg,colourb,coloura = table.unpack(colour)
    SetTextColour(colourr,colourg,colourb, coloura)
    SetTextDropshadow(0, 0, 0, 0, coloura)
    SetTextEdge(1, 0, 0, 0, coloura)
    SetTextWrap(0.0, coordsx)
    SetTextJustification(2)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(coordsx,coordsy)
end
