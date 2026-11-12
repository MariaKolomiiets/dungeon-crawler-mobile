extends SceneTree

const InventoryLogic = preload("res://tests/InventoryManager.Tests/InventoryLogic.gd")

func _initialize():
    var inventory = InventoryLogic.new()

    for i in range(inventory.max_slots):
        inventory.add_item("Item " + str(i))

    var result = inventory.add_item("Extra Item")

    if not result and inventory.items.size() == inventory.max_slots:
        print("Тест T2 пройдено: переповнення інвентарю оброблено правильно.")
        quit(0)
    else:
        push_error("Тест T2 не пройдено: інвентар прийняв зайвий предмет.")
        quit(1)
