Feature: Retail Home Page

  @homePageScenario1 @RegrationHomePage @RegrationCapston
  Scenario: Verify Shop by Department sidebar
    Given User is on retail website
    When User click on All section
    Then below options are present in Shop by Department sidebar
      | Electronics | Computers | Smart Home | Sports | Automative |

  @homePageScenario2 @RegrationHomePage @RegrationCapston
  Scenario Outline: Verify department sidebar options
    Given User is on retail website
    When User click on All section
    And User on <department>
    Then below options are present in department
      | <optionOne> | <optionTwo> |

    Examples: 
      | department    | optionOne                      | optionTwo                |
      | 'Electronics' | 'TV & Video'                   | Video Games              |
      | 'Computers'   | Accessories                    | Networking               |
      | 'Smart Home'  | Smart Home Lightning           | Plugs and Outlets        |
      | 'Sports'      | Athletic Clothing              | Exercise & Fitness       |
      | 'Automotive'  | Automative Parts & Accessories | MotorCycle & Powersports |

  @homePageScenario3 @RegrationHomePage @RegrationCapston
  Scenario: Verify User can add an item to cart
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'hoshmande@tekschool.us' and password 'Tek@12345'
    And User click on login button
    And User should be logged in into Account
    And User change the category to 'Smart Home'
    And User search for an item 'kasa outdoor smart plug'
    And User click on Search icon
    And User click on item
    And User select quantity '2'
    And User click add to Cart button
    Then the cart icon quantity should change to '2'

  @homePageScenario4 @RegrationHomePage @RegrationCapston
  Scenario: Verify User can place an order without Shipping address and payment Method on file
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'hoshmande@tekschool.us' and password 'Tek@12345'
    And User click on login button
    And User should be logged in into Account
    And User change the category to 'Smart Home'
    And User search for an item 'kasa outdoor smart plug'
    And User click on Search icon
    And User click on item
    And User select quantity '2'
    And User click add to Cart button
    Then the cart icon quantity should change to '2'
    And User click on Cart option
    And User click on Proceed to Checkout button
    And User click Add a new address link for shipping address
    And User fill new address form with below information
      | country       | fullName      | phoneNumber | streetAddress    | apt | city       | state      | zipCode |
      | United States | Jamrs William |  8763299876 | 4556 Cottage Way | H   | Sacramento | California |   87654 |
    And User click Add Your Address button
    And User click Add a credit card or Debit Card for Payment method
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 8121616701060998 | Quqqtus Jkan |               9 |           2026 |          728 |
    And User click on Add your card button
    And User click on Place Your Order
    Then a message should be displayed 'Order Placed Successfully'

  @homePageScenario5 @RegrationHomePage @RegrationCapston
  Scenario: Verify User can place an order with Shipping address and payment Method on file
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'hoshmande@tekschool.us' and password 'Tek@12345'
    And User click on login button
    And User should be logged in into Account
    And User change the category to 'Electronics'
    And User search for an item 'Apex Legends'
    And User click on Search icon
    And User click on items
    And User select quantity '5'
    And User click add to Cart button
    Then the cart icon quantity should change to '5'
    And User click on Cart option
    And User click on Proceed to Checkout button
    And User click on Place Your Order
    Then a message should be displayed 'Order Placed Successfully'
