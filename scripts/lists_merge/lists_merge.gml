///@param listA
///@param listB
///@param deleteDuplicates
///@param deletePartialLists

var listA = argument0
var listB = argument1
var deleteDuplicates = argument2
var deletePartialLists = argument3

//Merge lists
for (var i = 0; i < ds_list_size(listB); i++) {
	var item = listB[| i]
	ds_list_add(listA, item)
}

var listMerged = ds_list_create()
ds_list_copy(listMerged, listA)

if (deleteDuplicates)
	list_delete_duplicates(listMerged)

if (deletePartialLists)
	lists_destroy(listA, listB)
	
return listMerged