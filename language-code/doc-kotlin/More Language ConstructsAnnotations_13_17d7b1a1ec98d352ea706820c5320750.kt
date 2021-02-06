annotation class Suspendable
​
val f = @Suspendable { Fiber.sleep(10) }