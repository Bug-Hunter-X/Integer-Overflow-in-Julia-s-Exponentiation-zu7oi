```julia
using BigInts

function my_function_safe(x)
  x_big = BigInt(x)
  if x_big > 0
    return x_big^2
  elseif x_big == 0
    return 0
  else
    return -x_big^2
  end
end

println(my_function_safe(2))
println(my_function_safe(0))
println(my_function_safe(-2))

# Example with a large number to demonstrate overflow avoidance
large_number = 10^100
println(my_function_safe(large_number))
```