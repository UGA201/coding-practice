def solution(board, moves):
    result_list = []
    result = 0
    for i in range(len(moves)):
        for j in range(len(board)):
            a = board[j][moves[i]-1]
            # print('board 위치:',j, moves[i]-1, '값:',a)
            if a == 0:
                continue
            else:
                result_list.append(a)
                board[j][moves[i]-1] = 0
                break
            
        if len(result_list)>=2 and result_list[-1]==result_list[-2]:
            result_list = result_list[:len(result_list)-2]
            result += 2
    return result


# moves에서 뽑은 애를 space로 보내서 바로 앞의 애랑 같으면 둘 다 지워주고 result에 2를 더한다