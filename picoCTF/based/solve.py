def decipher(string, base):
    astr = ''
    arr = string.split()
    for el in arr:
        astr = chr(int(el, base))

    return astr

print(decipher( 143 157 154 157 162 141 144 157, 8 ))
