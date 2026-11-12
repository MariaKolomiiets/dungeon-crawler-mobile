extends RefCounted

var max_slots: int = 20
var items: Array[String] = []

func add_item(item_name: String) -> bool:
    if items.size() >= max_slots:
        return false

    items.append(item_name)
    return true
