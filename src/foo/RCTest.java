package foo;

import foo.deep.Row;

public class RCTest {

    Row construct(Creator creator) {
        Row foo = creator.create();
        foo.setAttribute("foo", "bar");
        return foo;
    }

    public interface Creator {
        Row create();
    }
}