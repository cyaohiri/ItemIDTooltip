ItemIDTooltip = CreateFrame('Frame', 'ItemIDTooltip', GameTooltip)

ItemIDTooltip:SetScript('OnShow', function()
    if GameTooltip.itemLink then
        local _, _, itemID = string.find(GameTooltip.itemLink, 'item:(%d+):%d+:%d+:%d+')
        if itemID then
            GameTooltip:AddLine('Item ID: ' .. itemID, 1, 1, 0)
            GameTooltip:Show()
        end
    end
end
)
