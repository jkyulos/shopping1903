import com.aishang.po.Product;
import com.aishang.service.CategoryService;
import com.aishang.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Map;

/**
 *测试
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-applicationContext.xml"})
public class Demo {

    @Resource
    private CategoryService categoryService;

    @Resource
    private ProductService productService;

    @Test
    public void fun1(){

    }
}
