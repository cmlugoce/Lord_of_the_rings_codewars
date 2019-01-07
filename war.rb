def goodVsEvil(good, evil)
good_i =[1, 2, 3, 3, 4, 10]
bad_i = [1, 2, 2, 2, 3, 5, 10]
  
  nice = total_force(good, good_i)
  blop = total_force(evil, bad_i)


  if nice < blop
    return 'Battle Result: Evil eradicates all trace of Good' 
  elsif nice > blop
    return 'Battle Result: Good triumphs over Evil' 
   else nice == blop
  return 'Battle Result: No victor on this battle field'
  
  end 
end

# Helper Method
 def total_force(side, sum)
 t_force = 0
  side.split(' ').map{|n| n.to_i}.each_with_index{|number, i| t_force += number*sum[i]}
   return t_force
 end
