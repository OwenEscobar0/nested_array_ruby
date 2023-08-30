def blank_seating_chart(number_of_rows, seats_per_row)
  immutable = Array.new(number_of_rows) {Array.new(seats_per_row)}
   immutable
end
p blank_seating_chart(2,3)


def add_seat_to_row(chart, row_index, seat_to_add)
chart[row_index].push(seat_to_add)
p chart
end
list =  [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']] 
p add_seat_to_row(list,1, "Jack")


def add_another_row(chart, row_to_add)
  chart.push(row_to_add)
  p chart
end
list_2 = [ 'Bo', nil, 'Kim']
add_another_row(list,list_2)


def delete_seat_from_row(chart, row_index, seat_index)
 chart[row_index].delete_at(seat_index)
  p chart
end
expected_output = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]
delete_seat_from_row(expected_output, 0, 1)


def delete_row_from_chart(chart, row_index)
  chart.delete_at(row_index)
  p chart
end
list_delete =[[nil, 'Bob'], ['Joe', nil], [nil, 'Bill']]
delete_row_from_chart(list_delete,1)


def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it
count = 0
chart.flatten.collect {| seat | count +=1 if seat.nil?}
count
  # NOTE: `chart` should **not** be mutated
end
arr = [[nil, 'Bob', 'Joe'],[nil, nil, 'Bill']]
count_empty_seats(arr)

def find_favorite(array_of_hash_objects)  
 array_of_hash_objects.each do  | value |
  return value if value [:is_my_favorite?] == true
end
nil
end

arr = [
  { name: 'JavaScript', is_my_favorite?: false },
  { name: 'Ruby', is_my_favorite?: true },
  { name: 'HTML', is_my_favorite?: false }
]
find_favorite(arr)
