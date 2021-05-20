# 시도 1
# 채점 결과
# 정확성: 36.4
# 합계: 36.4 / 100.0

'''
주로 사용하는 반복문에 enumerate를 적용해서 문제를 풀어보았으나
단위가 서로 다른 숫자값들을 비교함에 있어
일정한 값들을 곱해주는 방식으로는 예외사항이 많이 발생하고 복잡하다.

ex)
3, 30 비교
 - 330 > 303 이므로 10 대신 11을 곱해주었으나

12, 130 비교
 - 13012 > 12130 인데, 12*11 = 132이므로 결과가 12130으로 나오게 되어 테스트 통과 불가
'''

def solution(numbers):
    nums={}
    mxlen = len(str(max(numbers)))
    for i,num in enumerate(numbers):
        x = mxlen - len(str(num)) + 1 
        mul = int('1'* x )
        num = num * mul
        nums[i] = str(num)
    result = sorted(nums.items(), key=(lambda x:x[1]), reverse=True)
    idx = list(dict(result).keys())
    
    result_string = ''
    for i in idx:
        result_string += str(numbers[i])
    
    return result_string



# 시도2
# 채점 결과
# 정확성: 90.9
# 합계: 90.9 / 100.0

'''
간단한 방법이 있을 것 같아 검색 해 본 결과,

1. 숫자들의 단위가 같지 않을 때 크기 비교를 위해 map을 사용해 문자로 먼저 변경해준다. 
 - 맨 앞글자부터 오른쪽으로 이동하며 크기 비교

2. 이 때 lambda를 써서 비교할 값만 3번씩 반복해주었다. (원소가 0~1000 이므로 최소 3자릿수로 만들어 줌)
   큰 값부터 앞에 오게 되므로 위의 경우를 대입해보면,

- 3, 30 비교
    - '333', '303030' 이므로 '333', '303030' 순서로 정렬 => 330 (정답)

- 12, 130 비교
    - '121212', '130130130' 이므로 '130130130', '121212' 순서로 정렬 => 13012(정답)

- 13, 131 비교
    - '131313', '131131131' 이므로 '131313', '131131131' 순서로 정렬 => 13131(정답)
'''

def solution(numbers):
    a = list(map(str,numbers))
    b = sorted(a, key=(lambda x:x*3), reverse=True)
    c = ''.join(b)
    return c



# 시도3
# 채점 결과
# 정확성: 100.0
# 합계: 100.0 / 100.0

'''
시도2에서 마지막 테스트 케이스만 실패를 했는데,
numbers의 값이 전부 0인 경우는 0000..이 아닌 0을 반환해야하므로
set을 사용해 중복을 처리한 후 {0}과 비교해주었다.
'''

def solution(numbers):
    if set(numbers) == {0}:
        return '0'
    a = list(map(str,numbers))
    b = sorted(a, key=(lambda x:x*3), reverse=True)
    c = ''.join(b)
    return c



'''
Remind...
- map, lambda를 더 잘 활용하기
- 숫자와 문자의 정렬 시 차이점 기억하기
'''