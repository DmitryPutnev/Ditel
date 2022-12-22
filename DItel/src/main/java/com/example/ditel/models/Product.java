package com.example.ditel.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "hotels")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "stars")
    private String stars;
    @Column(name = "price")
    private Long price;
    @Column(name = "city")
    private String city;
    @Column(name = "countRooms")
    private Long countRooms;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY,
    mappedBy = "product")
    private List<Image> images = new ArrayList<>();
    private Long previewImageId;
    @ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private List<User> users;
    public void addImageToProduct(Image image) {
        image.setProduct(this);
        images.add(image);
    }
}
