def solution(array, commands):
    result = []
    for nums in commands:
        i = nums[0]
        j = nums[1]
        k = nums[2]
        ans = sorted(array[i-1:j])[k-1]
        result.append(ans)
    return result