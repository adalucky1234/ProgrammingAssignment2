def selection_sort(a, n):
    for i in range(n):
        min_idx = i
        for j in range(i+1,n):
            if a[min_idx] > a[j]:
                min_idx = j
        a[i], a[min_idx] = a[min_idx], a[i]
    return a
    
    
def insertion_sort(a, n):
    for pos in range(1,n):
        value = a[pos]
        box = pos
        while box > 0 and a[box-1] > value:
            a[box] = a[box-1]
            box -= 1 
        a[box] = value
    return a
