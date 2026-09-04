// src/main/java/com/snacks/service/SnackService.java
package com.snacks.service;

import com.snacks.model.SnackItem;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicLong;

@Service
public class SnackService {
    private final List<SnackItem> snackItems = new ArrayList<>();
    private final AtomicLong idCounter = new AtomicLong(1);
    
    public SnackService() {
        initializeMenu();
    }
    
    private void initializeMenu() {
        // Populate with sample chicken snacks
        SnackItem item1 = new SnackItem();
        item1.setId(idCounter.getAndIncrement());
        item1.setName("Crispy Chicken Tenders");
        item1.setDescription("Golden fried chicken tenders with a crispy coating, served with dipping sauce");
        item1.setPrice(new BigDecimal("8.99"));
        item1.setCategory("Tenders");
        item1.setImageUrl("/images/tenders.jpg");
        item1.setSpicy(false);
        item1.setVegetarian(false);
        item1.setCalories(420);
        snackItems.add(item1);
        
        SnackItem item2 = new SnackItem();
        item2.setId(idCounter.getAndIncrement());
        item2.setName("Spicy Chicken Wings");
        item2.setDescription("Jumbo chicken wings tossed in spicy buffalo sauce with blue cheese dip");
        item2.setPrice(new BigDecimal("11.99"));
        item2.setCategory("Wings");
        item2.setImageUrl("/images/wings.jpg");
        item2.setSpicy(true);
        item2.setVegetarian(false);
        item2.setCalories(550);
        snackItems.add(item2);
        
        SnackItem item3 = new SnackItem();
        item3.setId(idCounter.getAndIncrement());
        item3.setName("Chicken Popcorn Bites");
        item3.setDescription("Bite-sized pieces of chicken breast, breaded and fried to perfection");
        item3.setPrice(new BigDecimal("6.99"));
        item3.setCategory("Bites");
        item3.setImageUrl("/images/popcorn.jpg");
        item3.setSpicy(false);
        item3.setVegetarian(false);
        item3.setCalories(380);
        snackItems.add(item3);
        
        SnackItem item4 = new SnackItem();
        item4.setId(idCounter.getAndIncrement());
        item4.setName("Chicken & Cheese Sliders");
        item4.setDescription("Mini sandwiches with crispy chicken and melted cheese on soft buns");
        item4.setPrice(new BigDecimal("9.99"));
        item4.setCategory("Sliders");
        item4.setImageUrl("/images/sliders.jpg");
        item4.setSpicy(false);
        item4.setVegetarian(false);
        item4.setCalories(490);
        snackItems.add(item4);
        
        SnackItem item5 = new SnackItem();
        item5.setId(idCounter.getAndIncrement());
        item5.setName("BBQ Chicken Strips");
        item5.setDescription("Grilled chicken strips glazed with smoky BBQ sauce, served with coleslaw");
        item5.setPrice(new BigDecimal("10.49"));
        item5.setCategory("Strips");
        item5.setImageUrl("/images/bbq.jpg");
        item5.setSpicy(false);
        item5.setVegetarian(false);
        item5.setCalories(460);
        snackItems.add(item5);
        
        SnackItem item6 = new SnackItem();
        item6.setId(idCounter.getAndIncrement());
        item6.setName("Nashville Hot Chicken");
        item6.setDescription("Spicy Nashville-style hot chicken with pickles on toast");
        item6.setPrice(new BigDecimal("12.99"));
        item6.setCategory("Specialty");
        item6.setImageUrl("/images/nashville.jpg");
        item6.setSpicy(true);
        item6.setVegetarian(false);
        item6.setCalories(610);
        snackItems.add(item6);
    }
    
    public List<SnackItem> getAllSnacks() {
        return new ArrayList<>(snackItems);
    }
    
    public Optional<SnackItem> getSnackById(Long id) {
        return snackItems.stream()
                .filter(item -> item.getId().equals(id))
                .findFirst();
    }
    
    public List<SnackItem> getSnacksByCategory(String category) {
        return snackItems.stream()
                .filter(item -> item.getCategory().equalsIgnoreCase(category))
                .toList();
    }
    
    public List<SnackItem> getSpicySnacks() {
        return snackItems.stream()
                .filter(SnackItem::isSpicy)
                .toList();
    }
    
    public SnackItem addSnack(SnackItem item) {
        item.setId(idCounter.getAndIncrement());
        snackItems.add(item);
        return item;
    }
    
    public Optional<SnackItem> updateSnack(Long id, SnackItem updatedItem) {
        return getSnackById(id).map(existing -> {
            existing.setName(updatedItem.getName());
            existing.setDescription(updatedItem.getDescription());
            existing.setPrice(updatedItem.getPrice());
            existing.setCategory(updatedItem.getCategory());
            existing.setImageUrl(updatedItem.getImageUrl());
            existing.setSpicy(updatedItem.isSpicy());
            existing.setVegetarian(updatedItem.isVegetarian());
            existing.setCalories(updatedItem.getCalories());
            return existing;
        });
    }
    
    public boolean deleteSnack(Long id) {
        return snackItems.removeIf(item -> item.getId().equals(id));
    }
}
