local looking_at_section = false
local lvl = 0
local remove = {}  -- delete line if 'remove' array not needed

function Block (elem)
  if elem.t == "Header" then
    -- if elem.classes:includes('remove',1) then elem.identifier == 'answer' or
    if elem.classes:includes('answer',1) then
      looking_at_section = true
      lvl = elem.level
    else
      looking_at_section = looking_at_section and elem.level > lvl
    end
  end
  if looking_at_section then
    remove[#remove + 1] = elem  -- delete line if 'remove' array not needed
    return {}
  end
end