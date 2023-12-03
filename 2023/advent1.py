import re
total = 0
with open('trebuchet.txt') as datafile:
    for line in datafile:
        print(line)
        line = line.replace("one", "1")
        line = line.replace("two", "2")
        line = line.replace("three", "3")
        line = line.replace("four", "4")
        line = line.replace("five", "5")
        line = line.replace("six", "6")
        line = line.replace("seven", "7")
        line = line.replace("eight", "8")
        line = line.replace("nine", "9")
        print(line)
        numbers = []
        for c in line:
            if c.isdigit():
                numbers.append(c)
        thing = int(numbers[0])*10 + int(numbers[-1])
        print(thing)
        total = total + thing
print(total)
