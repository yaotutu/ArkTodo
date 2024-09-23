import { TaskDataModel } from "./Models"
import ItemComponent from "./ItemComponent"

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 6 }) {
      Text("TODO")
        .fontSize(28)
        .lineHeight(33)
    }
  }
}