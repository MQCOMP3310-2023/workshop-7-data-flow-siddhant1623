import java

class UnsafeInput extends MethodAccess {
    UnsafeInput() {
        (this.getMethod().hasName("nextLine") and this.getMethod().getDeclaringType().
        hasQualifiedName("java.util", "Scanner"))

        or

        (this.getMethod().hasName("readLine") and this.getMethod().getDeclaringType().
        hasQualifiedName("java.io", "BufferedReader"))
    }
}

from UnsafeInput unsafe
select unsafe, "Unsafe Input"