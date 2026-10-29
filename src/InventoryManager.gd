class_name InventoryManager extends Node

var max_slots: int = 20
var items: Array = []

func add_item(item_name: String) -> bool:
    if items.size() < max_slots:
        items.append(item_name)
        print('Предмет додано до інвентарю: ', item_name)
        return true
    print('Інвентар переповнений!')
    return false

func use_item(index: int):
    if index >= 0 and index < items.size():
        var used_item = items[index]
        items.remove_at(index)
        print('Використано предмет: ', used_item)