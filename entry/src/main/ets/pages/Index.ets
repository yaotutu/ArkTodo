import { TaskDataModel } from "./Models"
import ItemComponent from "./ItemComponent"

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  private totalData: Array<string> = []

  aboutToAppear(): void {
    this.totalData = new TaskDataModel().getData()
  }

  build() {
    Column({ space: 6 }) {
      Text("TODO")
        .fontSize(28)
        .lineHeight(33)
        .width('80%')
        .margin({
          top: 24,
          bottom: 12
        })

      ForEach(this.totalData, (item: string) => {
        ItemComponent({
          task_content: item
        })
      })
    }
  }
}