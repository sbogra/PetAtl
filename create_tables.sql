CREATE TABLE ATL_CUST_ADD
(
ZIP_CODE NUMERIC(10) PRIMARY KEY,
CITY VARCHAR(20)
);




CREATE TABLE ATL_CUSTOMER
(
USERNAME VARCHAR(20) NOT NULL PRIMARY KEY,
EMAIL VARCHAR(30) NOT NULL,
NAME VARCHAR(30) NOT NULL,
STREET VARCHAR(30),
ZIP_CODE NUMERIC(10),
PASSWORD VARCHAR(20),
CONSTRAINT customer_fk FOREIGN KEY(ZIP_CODE) REFERENCES ATL_CUST_ADD(ZIP_CODE)
);




CREATE TABLE ATL_CUSTOMER
(
USERNAME VARCHAR(20) NOT NULL PRIMARY KEY,
EMAIL VARCHAR(30) NOT NULL,
NAME VARCHAR(30) NOT NULL,
STREET VARCHAR(30),
ZIP_CODE NUMERIC(10),
PASSWORD VARCHAR(20),
CONSTRAINT customer_fk FOREIGN KEY(ZIP_CODE) REFERENCES ATL_CUST_ADD(ZIP_CODE)
);




CREATE TABLE ATL_PRODUCT (
               ProdID                  numeric(10)        NOT NULL PRIMARY KEY,
               Name                   varchar(40)         NOT NULL,
               Weight                                numeric(5),
               Description                        varchar(500) NOT NULL,
               stock                                   varchar(40),        
               manufacturer     varchar(30)         NOT NULL,
               dimension                          varchar(30)         NOT NULL,
               cost                      numeric(6)           NOT NULL,
               discount               varchar(10)         NOT NULL,
               feature                 varchar(50)         NOT NULL,
               image                   varchar(30)
                              
);



CREATE TABLE ATL_CART
(
CART_ID NUMERIC(10) NOT NULL,
USERNAME VARCHAR(20) NOT NULL,
PRODID NUMERIC(10) NOT NULL,
QUANTITY NUMERIC(2),
CONSTRAINT cart_pk PRIMARY KEY(CART_ID, USERNAME, PRODID),
CONSTRAINT usersname_fk FOREIGN KEY(USERNAME) REFERENCES ATL_CUSTOMER(USERNAME),
CONSTRAINT productID_fk FOREIGN KEY(PRODID) REFERENCES ATL_PROJECT(ProdID)
ON DELETE CASCADE
);



CREATE TABLE ATL_Vendor (
               VendorID                            numeric(10)        NOT NULL PRIMARY KEY,
               ProdId                  numeric(10)        NOT NULL,
               password                            varchar(20),
               email                    varchar(50) NOT NULL,
               Name                                  varchar(40),
    constraint ProdIDfk Foreign key(ProdID) References ATL_Project(ProdID) on delete cascade
               
); 




CREATE TABLE atl_Order (
    OrderID    NUMERIC(10) NOT NULL PRIMARY KEY,
    CartID   NUMERIC(10) NOT NULL,
    OrderDate     Date,
    Total_Sum   NUMERIC(20),
    CONSTRAINT CartID_fk FOREIGN KEY (CartID)
        REFERENCES atl_Cart (Cart_ID)
            ON DELETE CASCADE
);


-------------------------------

CREATE TABLE Atl_card
(
CARD_NO NUMERIC(10) NOT NULL PRIMARY KEY,
CVV NUMERIC(3) NOT NULL,
EXPIRY_DATE VARCHAR(10) NOT NULL
);



CREATE  TABLE ATL_PAYMENT
(
PAYID NUMERIC(10) NOT NULL PRIMARY KEY,
ORDERID NUMERIC(10) NOT NULL,
CARD_NO NUMERIC(20) NOT NULL,
FNAME VARCHAR(10) NOT NULL,
LNAME VARCHAR(10) NOT NULL,
ZIP_CODE NUMERIC(10) NOT NULL,
CONSTRAINT order_fk FOREIGN KEY(ORDERID) REFERENCES atl_Order(OrderID)
ON DELETE CASCADE,
CONSTRAINT cardno_fk FOREIGN KEY(CARD_NO) REFERENCES ATL_CARD(CARD_NO)
ON DELETE CASCADE,
CONSTRAINT ZIP_fk FOREIGN KEY(ZIP_CODE) REFERENCES ATL_CUST_ADD(ZIP_CODE)
ON DELETE CASCADE
);





CREATE TABLE Atl_Payment_Address (
    Zip    NUMERIC(10) NOT NULL PRIMARY KEY,
    City   varchar(20) NOT NULL,
    State    Varchar(20)
); 



CREATE TABLE ATL_VEN_PROD
(
VENDORID NUMERIC(10) NOT NULL,
PRODUCTID NUMERIC(10) NOT NULL,
CONSTRAINT VEN_PROD_PK PRIMARY KEY(VENDORID, PRODUCTID),
CONSTRAINT VEN_PROD_FK FOREIGN KEY(VENDORID) REFERENCES ATL_Vendor(VENDORID)
ON DELETE CASCADE,
CONSTRAINT VEN_PROD1_FK FOREIGN KEY(PRODUCTID) REFERENCES ATL_PRODUCT(PRODID)
ON DELETE CASCADE
);




CREATE TABLE Atl_Cust_Prod
(
USERNAME VARCHAR(20) NOT NULL,
PRODUCTID NUMERIC(10) NOT NULL,
CARTID NUMERIC(10) NOT NULL,
QUANTITY NUMERIC(3),
CONSTRAINT ATL_CUST_PROD_PK PRIMARY KEY(USERNAME, PRODUCTID,CARTID),
CONSTRAINT ATL_CUST_PROD_FK FOREIGN KEY(USERNAME) REFERENCES ATL_CUSTOMER(USERNAME)
ON DELETE CASCADE,
CONSTRAINT ATL_CUST_PROD1_FK FOREIGN KEY(PRODUCTID) REFERENCES ATL_PRODUCT(PRODID)
ON DELETE CASCADE,
CONSTRAINT ATL_CUST_PROD2_FK FOREIGN KEY(CARTID) REFERENCES ATL_CART(CART_ID)
ON DELETE CASCADE
);





CREATE TABLE Atl_Order_Details (
    OrderID    NUMERIC(10) NOT NULL,
    CarTID   NUMERIC(10) NOT NULL,
    Cost    Varchar(40),
    Quantity numeric(10),
    constraint atl_order_details_pk PRIMARY KEY(OrderID, CarTID),
    CONSTRAINT OrderID2_fk FOREIGN KEY (OrderID)
        REFERENCES atl_Order (OrderID)
            ON DELETE CASCADE,
    CONSTRAINT CartID2_fk FOREIGN KEY (CartID)
        REFERENCES atl_Cart (Cart_ID)
            ON DELETE CASCADE
    );




CREATE TABLE Atl_OrderCustomer (
    OrderID    NUMERIC(10) NOT NULL,
    Username   VARCHAR(20) NOT NULL,
    OrderDate    Date,
    CONSTRAINT atl_ordercust_pk PRIMARY KEY(ORDERID, USERNAME),
    CONSTRAINT Username3_fk FOREIGN KEY (username)
        REFERENCES atl_Customer (username)
            ON DELETE CASCADE
    ); 


