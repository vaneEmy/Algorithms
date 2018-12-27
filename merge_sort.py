def mergeSort(A): 
    #base case if the input array is one or zero just return. 
    if len(A) > 1: 
        # splitting input array 
        print('splitting ', A ) 
        mid=len(A)//2   
        left=A[:mid]   
        right=A[mid:] 
        #recursive calls to mergeSort for left and right subarrays 
        mergeSort(left)   
        mergeSort(right) 
        #initalizes pointers for left(i) right(j) and output array (k)

        #3 initalization operations 
        i = j = k = 0 
        #Traverse and merges the sorted arrays 
        while i < len(left) and j < len(right):  
        #if left < right comparison operation 
            if left[i] < right[j]:  
                #if left < right Assignment operation  
                A[k] = left[i]  
                i=i+1 
            else:   
                #if right <= left assignment 
                A[k]=right[j] 
                j=j+1   
            k=k+1   

        while i< len(left):   
            #Assignment operation 
            A[k] = left[i] 
            i=i+1   
            k=k+1   

        while j< len(right):   
            A[k] = right[j] 
            j=j+1 
            k=k+1 
    print('merging',A) 
    return(A)

mergeSort([356, 97, 846, 215])
