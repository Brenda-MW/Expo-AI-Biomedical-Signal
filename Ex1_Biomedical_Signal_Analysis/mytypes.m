function T = mytypes(dt)
  switch dt
    case 'double'
      T.b = double([]);
      T.x = double([]);
      T.y = double([]);

     case 'fixed16'
      T.b = fi([],true,16,14);
      T.x = fi([],true,16,13);
      T.y = fi([],true,16,13);
  end
end