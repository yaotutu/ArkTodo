@Component
export default struct ItemComponent {
  private task_content: string = ""
  @State isComplete: boolean = false

  @Builder
  CreateIcon(icon: Resource) {
    Image(icon)
      .width(28)
      .height(28)
      .margin(20)
      .objectFit(ImageFit.Contain)

  }

  build() {
    Row() {
      if (this.isComplete) {
        this.CreateIcon($r('app.media.ic_ok'))
      } else {
        this.CreateIcon($r('app.media.ic_default'))
      }
      // 第二个是文本
      Text(this.task_content)
        .fontSize(20)
        .fontWeight(500)
        .decoration({
          type: this.isComplete ? TextDecorationType.LineThrough : TextDecorationType.None
        })// 根据任务是否完成确定删除线
        .opacity(this.isComplete ? 0.5 : 1) // 根据任务是否完成来设置透明度

    }
    .borderRadius(24)
    .backgroundColor(Color.White)
    .width('93%')
    .height(65)
    .onClick(() => {
      this.isComplete = !this.isComplete
    })
  }
}