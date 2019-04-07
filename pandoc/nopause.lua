return {
  {
     Para = function (para)
        if pandoc.utils.stringify(para) == ". . ." then
           return {}
        end
     end,
  }
}

