package foo.deep;

import java.util.HashMap;
import java.util.Map;

public class Row {

    private Map<String, Object> attributes = new HashMap<String, Object>();
    private String tableName;

    public Row(String tableName) {
        this.tableName = tableName;
    }

    public void setAttribute(String name, Object value) {
        attributes.put(name, value);
    }

    public Object getAttribute(String name) { return attributes.get(name); }

    public String getTableName() { return tableName; }

}
