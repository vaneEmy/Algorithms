def part_one():
    with open("input.txt", "r") as f:
        lines = f.readlines()
        calories = []
        sum = 0
        
        for i in lines:
            if i.isspace():
                calories.append(sum)
                sum = 0
            else:
                sum += int(i)

        return max(calories)


result = part_one()
print(result)