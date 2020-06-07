alpha = "abcdefghijklmnopqrstuvwxyz"

def change_to_string(number):
    result = ''
    for el in str(number):
        result += alpha[int(el) - 1]

    return result

printable = change_to_string(1570236306)
print(printable)
