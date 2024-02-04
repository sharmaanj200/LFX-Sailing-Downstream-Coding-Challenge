def filter_list(integers):
    if len(integers) % 10 != 0:
        raise ValueError("The list length is not a multiple of 10.")
    return [val for idx, val in enumerate(integers) if (idx + 1) % 2 != 0 and (idx + 1) % 3 != 0]


# Testing the function
try:
    print(filter_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))  # This should work
except ValueError as error:
    print(error)


try:
    print(filter_list([1, 2, 3, 4, 5]))  # This should raise an error
except ValueError as error:
    print(error)


try:
    print(filter_list([3, 2, 4, 5, 6, 1, 5, 8, 6, 3, 6, 1, 3, 9, 5, 4, 7, 9, 0, 6]))  # Multiple of 10 but with repeating digits
except ValueError as error:
    print(error)

