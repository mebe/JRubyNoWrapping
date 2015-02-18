package foo;

import foo.deep.WithInherited;
import foo.deep.NoInherited;

public class RCTest {

    Object construct(Creator creator) {
        Object foo = creator.create();
        return foo;
    }

    public interface Creator {
        Object create();
    }
}