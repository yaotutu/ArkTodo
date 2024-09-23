// 定义APP中需要用到的数据模型

export  class TaskDataModel{

  private tasks: Array<string> = [
    "早起晨练", // 数组第一个元素：早起晨练
    "准备早餐", // 数组第二个元素：准备早餐
    "阅读名著", // 数组第三个元素：阅读名著
    "学习ArkTS", // 数组第四个元素：学习ArkTS
    "玩游戏放松一下"
  ]

  getData(): Array<string> {
    return this.tasks
  }
}

