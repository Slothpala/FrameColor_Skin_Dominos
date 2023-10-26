local info = {
    moduleName = "Dominos",
    color1 = {
        name = "Color",
        desc = "",
    },
}

local module = FrameColor_CreateSkinModule(info)

local _G = _G
local SetDesaturation = SetDesaturation
local SetVertexColor = SetVertexColor

function module:OnEnable()
    local main_color = self:GetColor1()
    self:Recolor(main_color, 1)
end

function module:OnDisable()
    local color = {r=1,g=1,b=1,a=1}
    self:Recolor(color, 0)
end

function module:Recolor(main_color, desaturation)
    --actionbars 1 to 14
    for i=1,168 do
        local DominosActionButton = _G["DominosActionButton"..i.."NormalTexture"] 
        if DominosActionButton then
            DominosActionButton:SetDesaturation(desaturation)
            DominosActionButton:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
        end
    end
    --shapeshift bar
    for i=1, GetNumShapeshiftForms() do
        local DominosStanceButton = _G["DominosStanceButton"..i.."NormalTexture"] 
        if DominosStanceButton then
            DominosStanceButton:SetDesaturation(desaturation)
            DominosStanceButton:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
        end
    end
    --pet bar
    for i=1, 10 do
        local DominosPetActionButton = _G["DominosPetActionButton"..i.."NormalTexture"] 
        if DominosPetActionButton then
            DominosPetActionButton:SetDesaturation(desaturation)
            DominosPetActionButton:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
        end
    end
end

