fun countClicks(window: JComponent) {
    var clickCount = 0
    var enterCount = 0
​
    window.addMouseListener(object : MouseAdapter() {
        override fun mouseClicked(e: MouseEvent) {
            clickCount++
        }
​
        override fun mouseEntered(e: MouseEvent) {
            enterCount++
        }
    })
    // ...
}