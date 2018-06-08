require_ 'macro.with'

aLongTableName = {}
with aLongTableName do
  a.c = 3
  .x = 4
  print (.x.a)
end

