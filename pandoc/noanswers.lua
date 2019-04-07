function Div (elem)
  if elem.classes:includes('answer') then
    return {} -- delete it
  else
    return elem
  end
end