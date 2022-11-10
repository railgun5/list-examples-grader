import static org.junit.Assert.*;
import org.junit.*;
import java.util.ArrayList;
import java.util.List;

public class TestListExamples {

    @Test
    public void testMerge(){
        
        List<String> l1 = new ArrayList<String>();
        List<String> l2 = new ArrayList<String>();
        l1.add("a");
        l1.add("b");
        l1.add("c");
        l2.add("a");
        l2.add("e");
        l2.add("f");
        System.out.println(l1);
        System.out.println(l2);

       List<String> list1 = new ArrayList<String>();
       list1 = (ArrayList<String>)ListExamples.merge(l1,l2);
       assertArrayEquals(new String[]{"a","a","b","c","e","f"},list1.toArray());

    }
}
