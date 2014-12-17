//http://en.wikipedia.org/wiki/Insertion_sort
/*
for i ← 1 to length(A) - 1
j ← i
while j > 0 and A[j-1] > A[j]
swap A[j] and A[j-1]
j ← j - 1
y
*/

import Cocoa
var list : Array<Int> = [1,2,9,10,5,3,8,7,4,6]
func sortIns()
{
    var insI, insY, unitLock : Int

    for (insI = 0; insI < list.count; insI++){
        
        unitLock = list[insI]
        
        for (insY = insI; insY > -1; insY--){
            if (unitLock < list[insY]){
                
                list.removeAtIndex(insY+1)
                
                list.insert(unitLock, atIndex: insY)
            }
        }
    }
    
}

println(sortIns())
