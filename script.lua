-- Cole o código gigante do JaponesBolota aqui dentro dos colchetes
local codigoDoBolota = [[COLE_AQUI_O_TEXTO_GIGANTE]]

-- Procura o bloco no mapa
local bloco = workspace:FindFirstChild("MeuPersonagem", true)

if bloco then
    -- 1. Tenta injetar se o LogicData for um StringValue/Object
    local logicData = bloco:FindFirstChild("LogicData")
    if logicData then
        -- Se for um StringValue normal
        if logicData:IsA("StringValue") then
            logicData.Value = codigoDoBolota
            print("Sucesso! Injetado no StringValue LogicData.")
        else
            -- Se for outro tipo de objeto que guarda texto
            pcall(function() logicData.Value = codigoDoBolota end)
            pcall(function() logicData.Text = codigoDoBolota end)
        end
    end
    
    -- 2. Tenta injetar se o LogicData for um ATRIBUTO do bloco
    bloco:SetAttribute("LogicData", codigoDoBolota)
    bloco:SetAttribute("Code", codigoDoBolota)
    
    print("Injeção concluída! Verifique o bloco no jogo.")
else
    print("Erro: Mude o nome do bloco para 'MeuPersonagem' antes de rodar!")
end

