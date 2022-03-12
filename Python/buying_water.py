def buying_water(brands, prices):
    max_price = prices[0]
    
    for i in range(1, brands):
        if prices[i] > max_price: 
            max_price = prices[i]
    
    return max_price

buying_water(3, [20, 12, 16])
