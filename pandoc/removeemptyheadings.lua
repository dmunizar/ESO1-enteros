function Header (elem)
  local content = elem.content
  if 0 == #content then -- empty list
    return {} -- remove from AST
  end
  return nil
end