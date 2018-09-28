def even_next(n)
  n/2
end

def odd_next(n)
  3*n + 1
end

def next_value(n)
  if n % 2 == 0
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  arr = [n]
  while arr.last > 1
    arr << next_value(arr.last)
  end
  arr
end

def longest_collatz
  longest = collatz(13)
  counter = 14
  999986.times do
    if collatz(counter).length > longest.length
      longest = collatz(counter)
    end
    counter += 1
  end
  longest[0]
end
