package guru.springframework.bootstrap;

import guru.springframework.domain.Product;
import guru.springframework.repositories.ProductRepository;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

@Component
public class ProductLoader implements ApplicationListener<ContextRefreshedEvent> {

    private ProductRepository productRepository;

    private Logger log = Logger.getLogger(ProductLoader.class);

    @Autowired
    public void setProductRepository(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public void onApplicationEvent(ContextRefreshedEvent event) {
/*
        Product life = new Product();
        life.setDescription("Guardian Life Insurance");
        life.setPrice(new BigDecimal("29.95"));
        life.setImageUrl("https://www.guardianlife.com/sites/default/files/i_myretirement.jpg");
        life.setProductId("100");
        productRepository.save(life);

        log.info("Saved Life - id: " + life.getId());

        Product disability = new Product();
        disability.setDescription("Guardian Disability Insurance");
        disability.setImageUrl("https://www.guardianlife.com/sites/default/files/i_myfinances.jpg");
        disability.setProductId("101");
        disability.setPrice(new BigDecimal("52.38"));
        productRepository.save(disability);
        log.info("Saved Disability - id:" + disability.getId());
*/
        log.info("Skipped loading from here");
    }
}
