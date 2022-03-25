## Solved problem of codesignal: alternating sums

def solution(a):
    team_1 = 0
    team_2 = 0
    
    for i in range(len(a)):
        if i % 2 == 0:
            team_1 += a[i]
        else:
            team_2 += a[i]

    return [team_1, team_2]

print(solution([50, 60, 60, 45, 70])) # [180, 105]
print(solution([100, 50])) # [100, 50]
print(solution([80])) # [80, 0]
