operator fun String.unaryPlus() {
    children.add(TextElement(this))
}