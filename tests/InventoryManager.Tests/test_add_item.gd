extends SceneTree

const InventoryLogic = preload("res://tests/InventoryManager.Tests/InventoryLogic.gd")

func _initialize():
    var inventory = InventoryLogic.new()

    var result = inventory.add_item("Health Potion")

    if result and inventory.items.size() == 2 and inventory.items[0] == "Health Potion":
        print("Тест T1 пройдено: предмет успішно додано.")
        quit(0)
    else:
        push_error("Тест T1 не пройдено: помилка додавання предмета.")
        quit(1)
