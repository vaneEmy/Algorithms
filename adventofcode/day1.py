def get_calories():
    with open("input.txt", "r") as f:
        lines = f.readlines()
        calories = []
        sum = 0
        
        for line in lines:
            if line.isspace():
                calories.append(sum)
                sum = 0
            else:
                sum += int(line)

        return calories

def part_one():
    calories = get_calories()
    return max(calories)

def part_two():
    calories = get_calories()
    sum = 0

    for i in range(3):
        max_calories = max(calories)
        sum += max_calories
        calories.remove(max_calories)

    return sum

result = part_two()
print(result)