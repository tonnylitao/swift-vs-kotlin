import org.junit.Test
import org.junit.Assert.*
import org.junit.Rule
import org.junit.rules.*
​
class Tests {
    // apply @Rule annotation to property getter
    @get:Rule val tempFolder = TemporaryFolder()
​
    @Test fun simple() {
        val f = tempFolder.newFile()
        assertEquals(42, getTheAnswer())
    }
}