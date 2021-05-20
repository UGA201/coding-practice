def solution(phone_book):
    s_pb = sorted(phone_book)
    for i in range(len(s_pb)-1):
        result = s_pb[i+1].startswith(s_pb[i])
        if result == True:
            return False
    return True
