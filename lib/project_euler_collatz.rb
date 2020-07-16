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
  longest_length = 0
  longest_start_number = 0
  (500000..1000000).each do |start|
    new_length = collatz(start).length
    if new_length > longest_length
      longest_length = new_length
      longest_start_number = start
    end
  end
  longest_start_number
end
