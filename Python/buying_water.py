def buying_water(brands, prices):
    max_price = prices[0]
    i = 1
    
    while i < brands:
        if prices[i] > max_price: 
            max_price = prices[i]
        i += 1
    
    return max_price

buying_water(3, [20, 12, 16])
