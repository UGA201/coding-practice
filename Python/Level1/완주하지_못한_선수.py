from collections import Counter
def solution(participant, completion):
    result = Counter(participant) - Counter(completion)
    print(result)  # 출력형태 유의
    return list(result)[0]